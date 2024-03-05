module clock_with_forever(
  output reg clk
);
  initial clk = 0;
  initial begin
    $dumpfile("clock_with_forever.vcd");
    $dumpvars(1);
    forever #10 clk = ~clk;
     $monitor("clk=%d",clk);
    $finish;
  end
endmodule
