// Code your testbench here
// or browse Examples
module Reduction_tb; 
  reg [7:0]A;
  wire y1, y2, y3, y4, y5, y6;
  Reduction uut(
    .A(A),
    .y1(y1),
    .y2(y2),
    .y3(y3),
    .y4(y4),
    .y5(y5),
    .y6(y6)
  );
  initial begin
    A = 8'b11101010;
    #10
    A = 8'bx1x01010;
    #10
    A = 8'bz1z10011;
    #10
    A = 8'b111x010z;
    #10
    $finish;
  end 
  always@*
    $monitor("%t A=%b y1=%b y2=%b y3=%b y4=%b y5=%b y6=%b", $time, A, y1, y2, y3, y4, y5, y6);
endmodule
