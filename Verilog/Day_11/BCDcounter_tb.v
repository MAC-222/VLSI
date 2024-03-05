module BCDcounter_tb;
  
  reg clk, reset;
  wire [7:0] out;
  
  BCDcounter uut(
    .clk(clk),
    .reset(reset),
    .out(out)
  );
  
  initial begin
    
    $dumpfile("BCDcounter.vcd");
    $dumpvars(1);
    
  end
  
  initial begin
    
    clk = 0;
    forever #5 clk = ~clk;
    
  end
  
  initial begin
    
    reset = 1;
    #5;
    
    reset = 0;
    #200;
   
    $finish;
    
  end 
  
  always @(*)
    
    $monitor("clk = %d  reset = %d out = %d", clk, reset, out);
  
endmodule
