module Shift_register_tb;
  
  reg clk, reset;
  reg [3:0] in;
  reg [1:0] s;
  wire [3:0] out;
  
  Shift_register uut(
    .clk(clk),
    .reset(reset),
    .in(in),
    .s(s),
    .out(out)
  );
  
  always #10 clk =~clk;
  
  initial begin
    
    $dumpfile("Shift_register.vcd");
    $dumpvars(1);
    
    clk=0;
    reset=1;
    s=0;
    in=1100;
    #40
    reset = 0;
    #40
    $finish;
    
  end
  
  always @(*)
    
    $monitor("out=%b",out);
  
endmodule
