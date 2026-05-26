`default_nettype none
`define TRUE 1'b1
`define FALSE 1'b0

module Slave(
    input wire [7:0] data_in,
    input wire clkin, reset,
    input wire slave_select_in, sclk, sdi, //sdi is the mosi input
    output reg [7:0] data_out,
    output reg sdo
);
//state machine's state here 
localparam IDLE = 2'd0, TRANSMIT = 2'd1, DONE = 2'd2;
//since the slave is always oversampling and recieving what is there
localparam DATACOUNT = 8'd7;
reg rx; 
reg [7:0] shiftreg, shiftregnext;
reg [2:0] state, nextstate;
always@(posedge clkin, negedge reset)begin
    if(!reset)begin
        state <= IDLE;
        shiftreg <= 8'd0;
        rx <=`FALSE;
    end
end
endmodule