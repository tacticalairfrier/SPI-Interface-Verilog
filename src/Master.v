`timescale 1ns/1ps
`default_nettype none
`define TRUE 1'b1
`define FALSE 1'b0

module Master#(parameter CLK_FREQ = 100_000_000, parameter SCLK_FREQ = 25_000_000)(
    //inputs for the module which handle which data is to be transmitted
    input wire [7:0] data_in,
    input wire [1:0] slave_select_in,
    input wire clkin, reset, tx_enable, miso,
    input wire cpol, cpha, //cpol is hte clock polarity, cpha is hte clock phase
    //in order to sample the data at the exact middle of the transmitted data
    //outputs for the recieved data part
    output reg [7:0] data_out,
    //inputs for the interface
    //outputs for the interface
    output reg sclk, mosi,
    output reg [3:0] slave_select
);
//declaring the sclk divider here
localparam DIVIDER = CLK_FREQ/SCLK_FREQ;
//declaring the state parameters here
localparam IDLE = 2'b0, TRANSMIT = 2'b1,  DONE = 2'b3;
//sclk parameters here
//general fsm parameters here
localparam DATA_COUNT = 3'b7;
reg [7:0] shiftreg, shiftregnext;
reg [2:0] counter_sclk, data_count, data_count_next;
reg [1:0] state, nextstate;
reg sclk_internal; 
//clocked state driver block
always@(posedge clkin, negedge reset)begin
    if(!reset)begin
        sclk_internal <= `FALSE;
        counter_sclk <= DIVIDER;
        state <= IDLE;
    end
    else if(counter_sclk>0) counter_sclk <= counter_sclk-1;
    else begin
        //sclk internal will directly forwarded to sclk depending upon the time
        counter_sclk <= DIVIDER;
        sclk_internal = ~sclk_internal;
        case(state)
        IDLE: state <= nextstate;
        TRANSMIT:begin
            state <= nextstate;
            data_count <= data_count_next;
        end
        DONE:begin
            state <= nextstate;
            data_count <= data_count_next;
        end
        endcase
    end
end
/*
logic for reciever, that is the master is sampling data in miso every time
it updates data_out register every 8 bits to keep it going
it gives out its own clock only when ITS supposed to transmit data
also the clock polarity and clock phase are xored or xnored depending upon hte condition arised there
*/
always@(*)begin
    
end
endmodule
