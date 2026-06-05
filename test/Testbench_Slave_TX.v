`timescale  1ns/1ps
`default_nettype none
`define TRUE 1'b1
`define FALSE 1'b0

module testbench;
reg [7:0] data_in_tb;
reg [3:0] slave_select_out;
reg [1:0] slave_select_in;
reg [1:0] mode_tb, counter;
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
//making a task for the thing at various mdoes
task TestWithMode (input [1:0] mode_task, input integer Times);
begin
    enable = `TRUE;
    $display("testing at mode %d" ,mode_task);
    mode_tb = mode_task;
    repeat(Times)begin
        data_in_tb = $urandom_range(0,255);
        #800;
    end
    $monitor("the data that was sent is %d and recieved from last transaction %d", data_in_tb, data_out_tb);
    enable = `FALSE;
end
endtask
initial begin
    //first testing the master to slave connection 
    //then the slave to master connection and then the full duplex connection
    $dumpfile("sim.vcd");
    $dumpvars(0,testbench);
    // enable = `TRUE;
    // // slave_select = `FALSE;
    slave_select_in = 2'b00;

    // repeat(20)begin
    //     // slave_select = `FALSE;
    //     // enable = `TRUE;
    //     data_in_tb = $ushourandom_range(0,255);
    //     #800;
    //     // slave_select = `TRUE;
    //     // enable = `FALSE;
    //     #80;
    // end
    // $finish;
    counter = 2'b00;
    while(counter != 2'b11)begin
        enable = `TRUE;
        TestWithMode(counter, 20);
        counter = counter + 2'b01;
        enable = `FALSE;
        #800;
    end
    #800;
    enable = `TRUE;
    TestWithMode(2'b11,20);
    enable = `FALSE;
    $finish;
end
endmodule