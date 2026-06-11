# SPI Controller — Parameterized Master + Mode-0 Slave

A fully functional SPI implementation in Verilog featuring a parameterized multi-mode master and a fixed-mode slave, verified in simulation across all four CPOL/CPHA combinations on the master side.

---

## Overview

This implementation targets the standard 4-wire SPI bus (SCLK, MOSI, MISO, CS). The master supports runtime mode switching across all four SPI modes. The slave operates in Mode 0 (CPOL=0, CPHA=0), which is the most widely used mode in real SPI peripherals. The fixed mode for slave drastically reduces the complexity of the logic of the slave

**Files**

| File | Description |
|---|---|
| `src/Master.v` | Parameterized SPI master — multi-mode, multi-slave, full-duplex |
| `src/Slave.v` | SPI slave — fixed Mode 0, full-duplex |
| `test/Testbench_Master_TX.v` | Master-only testbench, exercises all 4 modes |
| `test/Testbench_Slave_TX.v` | Master-slave loopback testbench with task-driven testing |
| `images/Master/Schematic_Synth.pdf` | The Vivado-Generated Schematic after synthesis for the master |
| `images/Master/schematic_generated.pdf` | The Vivado-Generated schematic of the elaborated design of the master | 
| `images/Slave/Schematic_Synth.pdf` | The Vivado-Generated Schematic after synthesis for the slave |
| `images/Slave/schematic_generated.pdf` | The Vivado-Generated schematic of the elaborated design of the slave |
| `images/gds/Master_KLayout.png` | Screenshot of the opened klayout view of the master |
| `images/gds/Slave_KLayout.png` | Screenshot of the opened klayout view of the slave |
| `synth/netlist_master.v` | The netlist of master.v generated using yosys |
| `synth/netlist_slave.v` | The netlist of the slave.v generated using yosys |
| `gds/final_Master/` | The directory which holds all the final pd files for the master |
| `gds/final_Slave/` | The directory which holds all the final pd files for the master |

---

## Architecture

### Master (`Master.v`)

**Parameters**

| Parameter | Default | Description |
|---|---|---|
| `CLK_FREQ` | 100 MHz | System clock frequency |
| `SCLK_FREQ` | 25 MHz | Target SPI clock frequency |

The internal SCLK divider is derived as `CLK_FREQ / (2 * SCLK_FREQ)`.

**Ports**

| Port | Dir | Width | Description |
|---|---|---|---|
| `clkin` | in | 1 | System clock |
| `reset` | in | 1 | Active-low async reset |
| `tx_enable` | in | 1 | Enable signal — deassert to return master to idle |
| `data_in` | in | 8 | Parallel data to transmit |
| `mode` | in | 2 | SPI mode — `{CPHA, CPOL}` |
| `slave_select_in` | in | 2 | Selects which of 4 slaves to address |
| `miso` | in | 1 | Master-in slave-out |
| `data_out` | out | 8 | Received parallel data |
| `mosi` | out | 1 | Master-out slave-in |
| `sclk` | out | 1 | Generated SPI clock |
| `slave_select` | out | 4 | Active-low CS lines for up to 4 slaves |

**FSM**

```
IDLE ──(tx_enable)──► TRANSMIT ──(data_count == 0)──► DONE ──► IDLE
```

The master shifts 8 bits MSB-first. SCLK is gated — it is only driven during the TRANSMIT state, returning to the CPOL idle level otherwise. Mode switching is latched at the DONE→IDLE transition to prevent mid-transaction corruption.

**SCLK Generation**

```verilog
sclk = mode_internal[1];               // idle level = CPOL
if(state == TRANSMIT) begin
    if(^mode_internal) sclk = sclk_internal;   // CPHA=1: normal phase
    else               sclk = ~sclk_internal;  // CPHA=0: inverted phase
end
```
There will be no gated clock here as this is the signal which is transmitted to the slave and not used internally in the master


**Receiver**

The master receiver samples MISO on the correct edge for each mode using a one-cycle delayed copy of SCLK (`rx`) to detect edge transitions combinationally. This avoids dependency on `sclk_internal` which does not reflect CPOL.

---

### Slave (`Slave.v`)

The slave operates in **SPI Mode 0 only** (CPOL=0, CPHA=0). It is clocked from the system clock and uses `sclk` as a sampled input — edge detection is done via a registered copy (`rx`).
and also has its own internal clock

**Ports**

| Port | Dir | Width | Description |
|---|---|---|---|
| `clkin` | in | 1 | System clock |
| `reset` | in | 1 | Active-low async reset |
| `slave_select_in` | in | 1 | Active-low chip select |
| `sclk` | in | 1 | SPI clock from master |
| `sdi` | in | 1 | Serial data in (MOSI) |
| `data_in` | in | 8 | Parallel data to transmit |
| `data_out` | out | 8 | Received parallel data |
| `sdo` | out | 1 | Serial data out (MISO) |

**FSM**

```
IDLE ──(CS asserted)──► RXTX ──(data_count == 0)──► STOP ──► IDLE
```

The slave resets its FSM and bit counter on CS deassertion, ensuring clean packet boundaries for back-to-back transactions. Data is latched to `data_out` on the STOP→IDLE transition.

---

## SPI Modes

| Mode | CPOL | CPHA | Clock Idle | Sample Edge |
|---|---|---|---|---|
| 0 | 0 | 0 | Low | Rising |
| 1 | 0 | 1 | Low | Falling |
| 2 | 1 | 0 | High | Falling |
| 3 | 1 | 1 | High | Rising |

The master supports all four modes. The slave supports Mode 0 only — this matches the behavior of most real-world SPI peripheral ICs.

---

## Simulation

**Compile and run (iverilog)**

```bash
# Master-only test (all 4 modes)
iverilog -g2012 -o master_sim Master.v Testbench_Master_TX.v
vvp master_sim

# Master-slave loopback test
iverilog -g2012 -o slave_sim Master.v Slave.v Testbench_Slave_TX.v
vvp slave_sim

# View waveforms
gtkwave sim.vcd
```

**Testbench structure**

The loopback testbench uses a Verilog task `TestWithMode` that accepts a mode and repeat count, drives random byte transactions, and monitors received data. The master's MOSI is wired directly to the slave's SDI, and the slave's SDO is wired to the master's MISO.

```verilog
task TestWithMode(input [1:0] mode_task, input integer Times);
```

---

## Known Limitations

**Mode switching requires full bus idle.** The master latches the new mode at the DONE→IDLE boundary. If a transaction begins immediately after a mode change without an idle gap, the first byte may be corrupted. Workaround: deassert `tx_enable`, allow the master to return to IDLE, then re-enable.

**Slave is fixed at Mode 0.** The slave does not accept a runtime mode input. It will correctly receive data from a master operating in Mode 0. Connecting it to a master in modes 1, 2, or 3 will produce incorrect results. This reflects the behavior of most real SPI slaves, which have their mode hardwired.

**No FIFO buffering.** The master loads `data_in` at the start of each transaction. For back-to-back transfers, `data_in` must be stable and updated before the next TRANSMIT state begins.

---

## Design Notes

The internal SCLK (`sclk_internal`) runs continuously at the divided frequency. The output `sclk` is gated and polarity-corrected combinationally — this ensures the bus is always in the correct idle state between transactions, which is required for compliant SPI behaviour.

The shadow register pattern is used for `mode_internal` to prevent mode changes from taking effect mid-transaction. Mode is only updated when `sclk_internal` is high at the DONE state, ensuring a clean transition.

---

## Toolchain

Verified with:
- **Simulator:** Icarus Verilog (`iverilog -g2012`)
- **Waveform viewer:** GTKWave
- Synthesis-ready for OpenLane/Sky130 (combinational SCLK gating avoids clock muxing issues in synthesis)
