module upcounter_tb;
  reg clk, reset;
  wire [3:0] out;
  upcounter uut(
    .clk(clk),
    .reset(reset),
    .out(out)
  );
initial begin
    clk= 0;
    forever #10 clk = ~clk;
end
initial begin
    
    $dumpfile("upcounter.vcd");
    $dumpvars(1);
    
end
  
initial begin
