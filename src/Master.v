`default_nettype none
`define TRUE 1'b1
`define FALSE 1'b0

module Master#(parameter CLK_FREQ = 100_000_000, parameter SCLK_FREQ = 125_000_00)(
    //inputs for the module which handle which data is to be transmitted
    input wire [7:0] data_in,
    input wire [1:0] slave_select_in, mode,
    input wire clkin, reset, tx_enable, miso,
    // input wire cpol, cpha, //cpol is hte clock polarity, cpha is hte clock phase
    //in order to sample the data at the input wire cpol, cpha,exact middle of the transmitted data
    //outputs for the recieved data part
    output reg [7:0] data_out,
    //inputs for the interface
    //outputs for the interface
    output reg sclk, mosi,
    output reg [3:0] slave_select
);
//add a data valid register in the end
//declaring the sclk divider here
// localparam DIVIDER = CLK_FREQ/SCLK_FREQ;
//here divider is equal to clk_freq/(2*sclk_freq)
localparam [2:0] DIVIDER = (CLK_FREQ/(2*SCLK_FREQ));
//declaring the state parameters here
localparam IDLE = 2'd0, TRANSMIT = 2'd1, DONE = 2'd2;
//sclk parameters here
//general fsm parameters here
localparam DATA_COUNT = 3'd7;
//parameter for dummy bite given to the slave for toggling sclk
localparam DUMMY_DATA = 8'd0;
reg [7:0] shiftreg, shiftregnext, shiftreg_rx, shiftregnext_rx;
reg [2:0] counter_sclk, data_count, data_count_next;
reg [1:0] state, nextstate, mode_internal;
reg sclk_internal; 
reg rx;
//clocked state driver block
//low cortisol code
//adding logic so that mode and slave select only changes in idle
//changing mode mid transaction will corrupt the packet
always@(posedge clkin, negedge reset)begin
    rx <= sclk_internal;
    if(!reset)begin
        sclk_internal <= `FALSE;
        counter_sclk <= DIVIDER;
        mode_internal <= 2'b00;
        rx <= `FALSE;
        state <= IDLE;
        shiftreg <= DUMMY_DATA;
        data_out <= 8'd0;
    end
    else if(counter_sclk>1) counter_sclk <= counter_sclk-1;
    else begin
        //sclk internal will directly forwarded to sclk depending upon the time
        // storing the recieved data in rx and rx_prev
        counter_sclk <= DIVIDER;
        sclk_internal <= ~sclk_internal;
        rx <= sclk_internal;
        case(state)
        IDLE:begin
            state <= nextstate;
            shiftreg <= shiftregnext;
            data_count <= data_count_next;
        end
        TRANSMIT:begin
            state <= nextstate;
            data_count <= data_count_next;
            shiftreg <= shiftregnext;
            shiftreg_rx <= shiftregnext_rx;
        end
        DONE:begin
            data_out <= shiftreg_rx;
            state <= nextstate;
            data_count <= data_count_next;
            shiftreg <= shiftregnext;
            shiftreg_rx <= shiftregnext_rx;
            //this if condition only allows internal mode to be changed
            //on the +edge of sclk and if and only if the state is changing too
            if(sclk_internal)mode_internal <= mode;
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
always@(*)begin
    mosi = `FALSE;
    //default mosi = false
    //preventing latch inferrence
    shiftregnext = shiftreg;
    nextstate = state;
    data_count_next = data_count;
    slave_select = 4'b1111;
    if(!reset) mosi = `FALSE;
    if(sclk_internal)begin
    case (state)
    IDLE: begin
        data_count_next = DATA_COUNT;
        slave_select[slave_select_in] = `FALSE;
        if(tx_enable)begin
            nextstate = TRANSMIT;
            shiftregnext = data_in;
        end 
        else begin
            //changed the nextstate here to transmit
            nextstate = TRANSMIT;
            shiftregnext = DUMMY_DATA;
        end
    end
    TRANSMIT: begin
        shiftregnext = {shiftreg[6:0],`FALSE};
        mosi = shiftreg[7];
        if(data_count>0)begin 
            data_count_next = data_count - 1;
            nextstate = TRANSMIT;
        end
        else nextstate = DONE;
    end
    DONE: nextstate = IDLE;
    //selection of slave happens in the done state
    endcase
    end
    else mosi = shiftreg[7];
end
//driver for sclk
//cpol is mode[1] cpha is mode[0]
always@(*)begin
    sclk = `FALSE;
    if(!reset) sclk = `FALSE;
    else begin
        sclk = mode_internal[1];
        if(state == TRANSMIT || state == DONE)begin
            if(^mode_internal) sclk = sclk_internal;
            else sclk = ~sclk_internal;
        end
    end
end
//reciever for the thing
//reciever can be only tested after the spi slave is done
always@(*)begin
shiftregnext_rx = shiftreg_rx;
if(!reset) shiftregnext_rx = 8'd0;
else begin
    case(state)
    IDLE:shiftregnext_rx = 8'd0;
    TRANSMIT:begin
        if(^mode_internal)begin
            //falling edge
            if(rx&~sclk_internal)begin
                shiftregnext_rx = {miso, shiftreg_rx[7:1]};
            end
        end
        else begin
            //rising edge
            if(~rx&sclk_internal)begin 
                shiftregnext_rx = {miso, shiftreg_rx[7:1]};
            end
        end
    end
    DONE: shiftregnext_rx = 8'h00;
    endcase
end
end
endmodule
