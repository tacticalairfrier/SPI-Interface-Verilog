`default_nettype none
`define TRUE 1'b1
`define FALSE 1'b0

module Slave(
    input wire [7:0] data_in,
    input wire [1:0] mode,
    input wire clkin, reset,
    input wire slave_select_in, sclk, sdi, //sdi is the mosi input
    output reg [7:0] data_out,
    output reg sdo
);
//state machine's state here 
localparam IDLE = 2'd0, RXTX = 2'd1, STOP = 2'd2;
//since the slave is always oversampling and recieving what is there
//logic behind this is that slave does
localparam DATACOUNT = 3'd7;
reg rx; 
reg [7:0] shiftreg_tx, shiftregnext_tx, shiftreg_rx, shiftregnext_rx;
reg [2:0] datacounter, datacounternext;
reg [1:0] state, nextstate, mode_internal;
always@(posedge clkin, negedge reset)begin
    if(!reset)begin
        state <= IDLE;
        shiftreg_tx <= 8'd0;
        shiftreg_rx <= 8'd0;
        data_out <= 8'd0;
        rx <=`FALSE;
        datacounter <= DATACOUNT;
        mode_internal <= 2'b00;
    end
    else begin
        rx<=sclk;
        if(!slave_select_in)begin
            case(state)
                IDLE:begin
                    // state <= nextstate;
                    state <= RXTX;
                    shiftreg_tx <= data_in;
                    shiftreg_rx <= shiftregnext_rx;
                    mode_internal <= mode;
                end
                RXTX:begin
                    state <= nextstate;
                    datacounter <= datacounternext;
                    shiftreg_tx <= shiftregnext_tx;
                    shiftreg_rx <= shiftregnext_rx;
                end
                STOP:begin
                    state <= nextstate;
                    datacounter <= datacounternext;
                    data_out <= shiftreg_rx;
                    shiftreg_tx <= shiftregnext_tx;
                    shiftreg_rx <= shiftregnext_rx;
                    // data_out <= shiftreg_rx;
                    mode_internal <= mode;
                end
            endcase
        end
        else begin
            state <= IDLE;
            datacounter <= DATACOUNT;
        end
    end
end
//we need to integrate mode into this guy
//transmitter combinational block and finite state machine driver
always@(*)begin 
    nextstate = state;
    shiftregnext_tx = shiftreg_tx;
    sdo = `FALSE;
    datacounternext = datacounter;
    if(!reset)begin
        shiftregnext_tx = 8'd0;
        nextstate = IDLE;
        datacounternext = 8'd0;
    end
    else begin
    //Transmitter logic and fsm drive
    // if(state == IDLE)begin
    //     nextstate = RXTX;
    //     datacounternext = DATACOUNT;
    //     shiftregnext_tx = 8'b0000_0000;
    // end
    if(^mode_internal) begin
        //rising edge
        if(~rx&sclk)begin
            case(state)
            IDLE:begin
                nextstate = RXTX;
                datacounternext = DATACOUNT;
                // sdo = shiftreg_tx[7];
                // shiftregnext_tx = {shiftreg_tx[6:0], `FALSE};
            end
            RXTX:begin
                shiftregnext_tx = {shiftreg_tx[6:0], `FALSE};
                sdo = shiftreg_tx[7];
                datacounternext = datacounter-1;
                // if(datacounternext > 0) nextstate = RXTX;
                if(datacounter > 0) nextstate = RXTX;
                else nextstate  = STOP;
            end
            STOP:begin
                nextstate = IDLE;
                shiftregnext_tx = 8'd0;
                datacounternext = 8'd0;
            end
            endcase
        end
    end
    else begin
        //falling edge
        if(rx&~sclk) begin
            case(state)
            IDLE:begin
                nextstate = RXTX;
                datacounternext = DATACOUNT;
                // sdo = shiftreg_tx[7];
                // shiftregnext_tx = {shiftreg_tx[6:0], `FALSE};
            end
            RXTX:begin
                shiftregnext_tx = {shiftreg_tx[6:0], `FALSE};
                sdo = shiftreg_tx[7];
                datacounternext = datacounter-1;
                if(datacounter > 0) nextstate = RXTX;
                else nextstate  = STOP;
            end
            STOP:begin
                nextstate = IDLE;
                shiftregnext_tx = 8'd0;
            end
            endcase
        end
        else sdo = shiftreg_tx[7];
    end
    end
end
//sampler for spi
//that is the reciever logic
always@(*)begin
    shiftregnext_rx = shiftreg_rx;
    if(!reset) shiftregnext_rx = 8'd0;
    else begin
    case(state)
        IDLE:begin
            // shiftregnext_rx = {sdi, shiftreg_rx[7:1]};
            shiftregnext_rx = {shiftreg_rx[6:0], sdi};
        end
        RXTX:begin
        if(^mode_internal) begin
         //falling edge
            if(rx&~sclk) shiftregnext_rx = {shiftreg_rx[6:0], sdi};
        end
        else begin
        //rising edge
            if(~rx&sclk) shiftregnext_rx = {shiftreg_rx[6:0], sdi};
        end
        end
        STOP: shiftregnext_rx = shiftreg_rx;
    endcase
    // if(state==IDLE)begin
    // if(^mode_internal) begin
    //     //falling edge
    //     if(rx&~sclk) shiftregnext_rx = {sdi, shiftreg_rx[7:1]};
    // end
    // else begin
    //     //rising edge
    //     if(~rx&sclk) shiftregnext_rx = {sdi, shiftreg_rx[7:1]};
    // end
    // end
    end
end
endmodule