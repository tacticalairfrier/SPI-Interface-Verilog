`timescale  1ns/1ps
`default_nettype none
`define TRUE 1'b1
`define FALSE 1'b0

module testbench;
reg [7:0] data_in_tb;
reg [3:0] slave_select_out;
reg [1:0] slave_select_in;
reg [1:0] mode_tb;
reg clkgen, reset, enable;
reg sdi_tb;
wire slavechip;
wire [7:0] data_out_tb;
wire sdo_tb, sclk_tb;
    //using a single slave in transmittion mode
Slave DUT_Sl_clk_0(
    .data_in(data_in_tb),
    .mode(mode_tb),
    .clkin(clkgen),
    .reset(reset),
    .slave_select_in(slavechip),
    .sclk(sclk_tb),
    .sdi(sdi_tb),
    .data_out(data_out_tb),
    .sdo(sdo_tb)
);
Master DUT_MS_0(
    .clkin(clkgen),
    .reset(reset),
    .tx_enable(enable),
    .slave_select_in(slave_select_in),
    .slave_select(slave_select_out),
    .data_in(data_in_tb),
    .mode(mode_tb),
    .sclk(sclk_tb),
    //input output connections
    .miso(sdo_tb),
    .mosi(sdi_tb)

);

//generating the clock signal
initial begin
    enable = `TRUE; 
    clkgen = `FALSE; 
    reset = `TRUE;
    #5 reset = `FALSE;   
    #5 reset = `TRUE;
    //starting at mode 00
    #5 mode_tb = 2'b00;
    //slave is always selected
    // slave_select = `TRUE;
    data_in_tb = 8'b0101_0101;        
    //initializing every signal 
end
always #5 clkgen = ~clkgen;
//the random number generator
// always #820 data_in_tb = $urandom_range(0,255);
assign slavechip = slave_select_out[0];
initial begin
    //first testing the master to slave connection 
    //then the slave to master connection and then the full duplex connection
    $dumpfile("sim.vcd");
    $dumpvars(0,testbench);
    enable = `TRUE;
    // slave_select = `FALSE;
    slave_select_in = 2'b00;
    
    repeat(20)begin
        // slave_select = `FALSE;
        // enable = `TRUE;
        data_in_tb = $urandom_range(0,255);
        #800;
        // slave_select = `TRUE;
        // enable = `FALSE;
        #80;
    end
    $finish;
end
endmodule