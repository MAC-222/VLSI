module gtLogic_tb;
  reg a;
  reg b;
  
  wire y1,y2,y3,y4,y5,y6,y7;
  
  gtLogic uut(.a(a),
                 .b(b),
                 .y1(y1),
                 .y2(y2),
                 .y3(y3),
                 .y4(y4),
                 .y5(y5),
                 .y6(y6),
                 .y7(y7)
                );
  
  initial begin
    
    $dumpfile("gtLogic.vcd");
    $dumpvars(1,gtLogic_tb);
    
  end
  
  initial begin
    
    a = 0;b = 0;
    #10
    a = 0;b = 1;
    #10
    a = 1;b = 0;
    #10
    a = 1;b = 1;
    #10
    $finish;
    
  end
  
  always@*
    $monitor("time=%0t \tINPUT VALUES: \t a=%b b=%b \t OUTPUT VALUES y1=%b y2=%b y3=%b y4=%b y5=%b y6=%b y7=%b",$time,a,b,y1,y2,y3,y4,y5,y6,y7);
  
endmodule
