module Replication(
  input [2:0] A, B,
  output reg [15:0] y1,
  output reg [32:0] y2
);
  always@* begin
    y1 = {4{A}};  
    y2 = {2{A, B}};
  end
endmodule
