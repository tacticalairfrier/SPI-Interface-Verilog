`default_nettype none
`define TRUE 1'b1
`define FALSE 1'b0

module Slave#(parameter CLK_FREQ = 100_000_000)(
    input wire [7:0] data_in,
    input wire [1:0] mode,
    input wire clkin, reset,
    input wire slave_select_in, sclk, sdi, //sdi is the mosi input
    output reg [7:0] data_out,
    output reg sdo
);
//state machine's state here 
localparam IDLE = 2'b0, TRANSMIT = 2'b1, STOP = 2'b2, RECIEVE = ;
//since the slave is always oversampling and recieving what is there
//logic behind this is that slave does
localparam DATACOUNT = 3'd7;
reg rx, edgedetected; 
reg [7:0] shiftreg_tx, shiftregnext_tx, shiftreg_rx;
reg [2:0] datacounter;
reg [1:0] state, nextstate;
always@(posedge clkin, negedge reset)begin
    if(!reset)begin
        state <= IDLE;
        shiftreg <= 8'd0;
        rx <=`FALSE;
    end
    else begin
        rx<=sclk;
        if(!slave_select_in)begin
            case(state)
                IDLE:begin
                    state <= nextstate;
                end
                TRANSMIT:begin
                    state <= nextstate;
                    datacounter <= datacounter-1;
                end
                STOP:begin
                    state <= nextstate;
                    datacounter <= DATACOUNT;
                end
            endcase
        end
        else state <= IDLE;
    end
end
//we need to integrate mode into this guy
//transmitter combinational block
always@(*)begin 
    
end
//sampler for spi
//that is the reciever logic
always@(*)begin
    if(!reset) shiftreg_rx = 8'd0;
    else begin
    if(^mode) begin
        if(~rx&sclk) shiftreg_rx = {sdi, shiftreg_rx[7:1]};
    end
    else begin
        if(rx&~sclk) shiftreg_rx = {sdi, shiftreg_rx[7:1]};
    end
    end
end
endmodule