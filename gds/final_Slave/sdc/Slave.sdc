###############################################################################
# Created by write_sdc
###############################################################################
current_design Slave
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name clkin -period 10.0000 [get_ports {clkin}]
set_clock_transition 0.1500 [get_clocks {clkin}]
set_clock_uncertainty 0.2500 clkin
set_propagated_clock [get_clocks {clkin}]
set_input_delay 2.0000 -clock [get_clocks {clkin}] -add_delay [get_ports {data_in[0]}]
set_input_delay 2.0000 -clock [get_clocks {clkin}] -add_delay [get_ports {data_in[1]}]
set_input_delay 2.0000 -clock [get_clocks {clkin}] -add_delay [get_ports {data_in[2]}]
set_input_delay 2.0000 -clock [get_clocks {clkin}] -add_delay [get_ports {data_in[3]}]
set_input_delay 2.0000 -clock [get_clocks {clkin}] -add_delay [get_ports {data_in[4]}]
set_input_delay 2.0000 -clock [get_clocks {clkin}] -add_delay [get_ports {data_in[5]}]
set_input_delay 2.0000 -clock [get_clocks {clkin}] -add_delay [get_ports {data_in[6]}]
set_input_delay 2.0000 -clock [get_clocks {clkin}] -add_delay [get_ports {data_in[7]}]
set_input_delay 2.0000 -clock [get_clocks {clkin}] -add_delay [get_ports {reset}]
set_input_delay 2.0000 -clock [get_clocks {clkin}] -add_delay [get_ports {sclk}]
set_input_delay 2.0000 -clock [get_clocks {clkin}] -add_delay [get_ports {sdi}]
set_input_delay 2.0000 -clock [get_clocks {clkin}] -add_delay [get_ports {slave_select_in}]
set_output_delay 2.0000 -clock [get_clocks {clkin}] -add_delay [get_ports {data_out[0]}]
set_output_delay 2.0000 -clock [get_clocks {clkin}] -add_delay [get_ports {data_out[1]}]
set_output_delay 2.0000 -clock [get_clocks {clkin}] -add_delay [get_ports {data_out[2]}]
set_output_delay 2.0000 -clock [get_clocks {clkin}] -add_delay [get_ports {data_out[3]}]
set_output_delay 2.0000 -clock [get_clocks {clkin}] -add_delay [get_ports {data_out[4]}]
set_output_delay 2.0000 -clock [get_clocks {clkin}] -add_delay [get_ports {data_out[5]}]
set_output_delay 2.0000 -clock [get_clocks {clkin}] -add_delay [get_ports {data_out[6]}]
set_output_delay 2.0000 -clock [get_clocks {clkin}] -add_delay [get_ports {data_out[7]}]
set_output_delay 2.0000 -clock [get_clocks {clkin}] -add_delay [get_ports {sdo}]
###############################################################################
# Environment
###############################################################################
set_load -pin_load 0.0334 [get_ports {sdo}]
set_load -pin_load 0.0334 [get_ports {data_out[7]}]
set_load -pin_load 0.0334 [get_ports {data_out[6]}]
set_load -pin_load 0.0334 [get_ports {data_out[5]}]
set_load -pin_load 0.0334 [get_ports {data_out[4]}]
set_load -pin_load 0.0334 [get_ports {data_out[3]}]
set_load -pin_load 0.0334 [get_ports {data_out[2]}]
set_load -pin_load 0.0334 [get_ports {data_out[1]}]
set_load -pin_load 0.0334 [get_ports {data_out[0]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {clkin}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {reset}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {sclk}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {sdi}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {slave_select_in}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {data_in[7]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {data_in[6]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {data_in[5]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {data_in[4]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {data_in[3]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {data_in[2]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {data_in[1]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {data_in[0]}]
###############################################################################
# Design Rules
###############################################################################
set_max_transition 0.7500 [current_design]
set_max_capacitance 0.2000 [current_design]
set_max_fanout 10.0000 [current_design]
