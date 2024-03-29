// Code your testbench here
// or browse Examples
module sfifo_tb;
  reg clk,reset,write_e,read_e;
  reg [7:0]data_in;
  reg [2:0]write_ptr,read_ptr;
  reg [7:0]fifo[7:0];
  wire [7:0]data_out;
  wire full,empty;
  
  sfifo inst(clk,reset,write_e,read_e,data_in,data_out,full,empty);
  
  initial begin
    $dumpfile("sfifo.vcd");
    $dumpvars(1,sfifo_tb);
    $monitor("time=%d clk=%d reset=%d write_e=%d read_e=%d data_in=%d data_out=%d full=%d empty=%d",$time,clk,reset,write_e,read_e,data_in,data_out,full,empty);
  end
  
  initial begin
    reset=1;
    clk=0;
    write_e=0;
    read_e=0;
    #11
    reset=0;
    
    write_e=1;
    read_e=0;
    data_in=8'b00000011;
    #20
    data_in=8'b00001001;
    #20
    data_in=8'b00000111;
    #20
    data_in=8'b00000011;
    #20
    data_in=8'b00001001;
    #20
    data_in=8'b00000111;
    #20
     data_in=8'b00000011;
    #20
    data_in=8'b00001001;
    #20
    data_in=8'b00010111;
    #20
    
    read_e=1;
    write_e=0;
    #200
    $finish;
  end
  always #10 clk=~clk;
endmodule
