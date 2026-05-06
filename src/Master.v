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
    output reg sclk, mosi, data_valid,
    output reg [3:0] slave_select
);
//declaring the sclk divider here
localparam DIVIDER = CLK_FREQ/SCLK_FREQ;
//declaring the state parameters here
localparam IDLE = 2'b0, TRANSMIT = 2'b1,  DONE = 2'b3;
//sclk parameters here
//general fsm parameters here
localparam DATA_COUNT = 3'b7;
//parameter for dummy bite given to the slave for toggling sclk
localparam = DUMMY_DATA = 8'b0;
reg [7:0] shiftreg, shiftregnext;
reg [2:0] counter_sclk, data_count, data_count_next;
reg [1:0] state, nextstate;
reg sclk_internal; 
reg rx, rx_prev;
//clocked state driver block
//low cortisol code
always@(posedge clkin, negedge reset)begin
        rx <= sclk_internal;
        rx_prev <= rx;
    if(!reset)begin
        sclk_internal <= `FALSE;
        counter_sclk <= DIVIDER;
        rx <= `FALSE;
        rx_prev <= `FALSE;
        state <= IDLE;
    end
    else if(counter_sclk>0) counter_sclk <= counter_sclk-1;
    else begin
        //sclk internal will directly forwarded to sclk depending upon the time
        // storing the recieved data in rx and rx_prev
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
            data_valid <= `TRUE;
        end
        endcase
    end
end
//combinational block for putting dataIn into the shiftreg
//high cortisol code
// logic for reciever, that is the master is sampling data in miso every time
// it updates data_out register every 8 bits to keep it going
// it gives out its own clock only when ITS supposed to transmit data
// also the clock polarity and clock phase are xored or xnored depending upon hte condition arised there
//combinational logic for the data transmition 
//transmitter, for the thing
always(*)begin
    //default mosi = false
    //preventing latch inferrence
    shiftregnext = shiftreg;
    nextstate = state;
    data_count_next = data_count;
    slave_select = 4'b0;
    sclk = `FALSE;
    mosi = `FALSE;
    data_valid = `FALSE;
    if(sclk_internal)begin
    case(state)
    IDLE: begin
        sclk = cpol;
        mosi = shiftreg[0];
        if(tx_enable)begin
            nextstate = TRANSMIT;
            shiftregnext = data_in;
            data_count_next = DATA_COUNT;
        end 
        else begin
            nextstate = IDLE;
            shiftregnext = DUMMY_DATA;
        end
    end
    TRANSMIT: begin
        sclk = sclk_internal;
        shiftregnext = {`FALSE, shiftreg[7:1]};
        mosi = shiftreg[0];
        if(data_count>0)begin 
            data_count_next = data_count - 1;
            nextstate = TRANSMIT;
        end
        else nextstate = DONE;
    end
    DONE: begin
        sclk = cpol;
        nextstate = IDLE;
        //selection of slave happens in the done state
        slave_select[slave_select_in] = `FALSE;
    end
    endcase
    end
end
//reciever for the thing
always(*)begin
    
end
endmodule
