module clock(
  output reg clk
);
  initial clk = 0;
  always #10 clk = ~clk;
  initial begin
    $dumpfile("clock.vcd");
    $dumpvars(1);
    clk = 1;
    #10
    clk = 0;
    #10
    clk = 1;
    #10
     $monitor("clk=%d",clk);
    $finish;
  end
endmodule
