module Reduction(
  input [3:0] A,
  output reg y1, y2, y3, y4, y5, y6
);

always@* begin 
  y1 = &A;
  y2 = ~&A;
  y3 = |A;
  y4 = ~|A;
  y5 = ^A;
  y6 = ~^A;
  
end

endmodule
