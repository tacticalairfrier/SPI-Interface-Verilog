`timescale 1ns/1ps
`default_nettype none
`define TRUE 1'b1
`define FALSE 1'b0

module Master#(parameter )(
    //inputs for the module which handle which data is to be transmitted
    input wire [7:0] data_in,
    input wire clkin, reset, tx_enable, miso,
    //outputs for the recieved data part
    output reg [7:0] data_out,
    //inputs for the interface
    //outputs for the interface
    output reg sclk, mosi,
    output reg slave_select,
);
//declaring the state parameters here
localparam IDLE = 2'b0, DATA = 2'b1,  2'b3;
endmodule
