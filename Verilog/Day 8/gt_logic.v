module gtLogic( a,b,
                  y1,y2,y3,y4,y5,y6,y7
                 );
  input a;
  input b;
  output y1,y2,y3,y4,y5,y6,y7;
  assign y1 = a & b;
  assign y2 = a | b;
  assign y3 = ~a;
  assign y4 = ~(a & b);
  assign y5 = ~(a | b);
  assign y6 = a ^ b;
  assign y7 = ~(a ^ b);
endmodule
