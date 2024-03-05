module clock_with_repeat(
  output reg clk
);
  
  initial clk = 0;
  
  initial begin
    
    $dumpfile("clock_with_repeat.vcd");
    $dumpvars(1);
    
    repeat(5)
     #10 clk = ~clk;
    
     $monitor("clk=%d",clk);
    
    $finish;
  
  end
  
endmodule
