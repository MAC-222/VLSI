module tff_tb;
  wire q;
  reg t,clk;
  //instantiate unit under test
  tff ff(.t(t),.clk(clk),.q(q));
   //dump and monitor informations
  initial begin
    $monitor("t=%d t=%b clk=%b q=%b ", $time,t,clk,q);
    $dumpfile("tff.vcd");
    $dumpvars(1,tff_tb);
  end
   //initialize input
  initial begin
    clk = 0;
    t = 0;
    #20
    $finish;
  end
  always #1 clk=~clk;
  always #2 t=~t;
endmodule
