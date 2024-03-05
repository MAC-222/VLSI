module Replicatrion_tb;
  reg [2:0] A, B;
  wire [15:0] y1;
  wire [32:0] y2;
  Replication uut(
    .A(A),
    .B(B),
    .y1(y1),
    .y2(y2)
  );
  initial begin
    A = 3'b101;
    B = 3'b100;
    #10
    $finish;
  end
  always@*
    $monitor("A=%b, B=%b, y1=%b, y2=%b", A, B,y1, y2);
endmodule
