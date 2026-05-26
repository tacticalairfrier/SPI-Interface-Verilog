`timescale 1ns/1ps
`default_nettype none
`define TRUE 1'b1
`define FALSE 1'b0

module testbench;
reg clkin_tb, reset_tb, enable, cpol, cpha;
reg [1:0] slave_select_in;
reg [7:0] data_in_tb;
wire mosi_tb;
//testing if the master can test and assert a slave
Master DUT_MS_0(
    .clkin(clkin_tb),
    .reset(reset_tb),
    .tx_enable(enable),
    .slave_select_in(slave_select_in),
    .mosi(mosi_tb),
    .data_in(data_in_tb),
    .mode({cpha,cpol})
);
//generating the clock here
always #5 clkin_tb = ~clkin_tb;
initial begin
    clkin_tb = 1'b0;
    enable = 1'b1;
    #5 reset_tb = 1'b1;
    #5 reset_tb = 1'b0;
    #10 reset_tb = 1'b1;
    data_in_tb = 8'b01010101;
end

always #600 data_in_tb = $urandom_range(0,255);

initial begin
    $dumpfile("sim.vcd");
    $dumpvars(0,testbench);
    cpol = `FALSE;
    cpha = `FALSE;
    #1000;
    cpol = `TRUE;
    cpha = `FALSE;
    #1000;
    cpol = `FALSE;
    cpha = `TRUE;
    #1000;
    cpol = `TRUE;
    cpha = `TRUE;
    #1000;
    enable =`FALSE;
    #1000;
    $finish;
end
endmodule
