module moore101_tb;
  reg x,clk,reset;
  wire out;
  wire [1:0]present,next;
  moore101 moore101(.x(x),.clk(clk),.reset(reset),.out(out),.present(present),.next(next));
  initial begin
    $dumpfile("moore101.vcd");
    $dumpvars(1,moore101_tb);
    $monitor("t=%d reset=%b clk=%b x=%b present=%b next=%b out=%b",$time,reset,clk,x,present,next,out);
  end
  initial begin
    x=1;
    reset=1;
    clk=1;
    #5 reset=0;
  end
  initial begin
   #10 x=1'b1;
    #10
    x=1'b0;
    #20
    x=1'b1;
    #100
    $finish;
  end
  always #10 clk=~clk;
endmodule
