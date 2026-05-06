`timescale 1ns/1ps
`default_nettype none
`define TRUE 1'b1
`define FALSE 1'b0

module testbench;
reg clkin_tb, reset_tb, enable;
reg [1:0] slave_select_in;


Master DUT_TX_0(
    .data_in()
)
endmodule