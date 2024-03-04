module dflipflop_posedge_tb;
  reg clk,d;
  wire q;
  dflipflop_posedge dff(
    .clk(clk),
    .d(d),
    .q(q)
  );
  initial begin
    $monitor("t=%d clk=%d d=%d q=%d",$time,clk,d,q);
    $dumpfile("dflipflop_posedge.vcd");
    $dumpvars(1,dflipflop_posedge_tb);
  end
  initial begin
    clk=0;
    d = 0;
    #200
    $finish;
    end
always #5 clk = ~clk;
always #10 d = ~d;
endmodule
