module exponent(
  input [7:0]A,B,
  output reg [32:0]C);
  always@ (*) begin 
    C=A**B;
  end
endmodule
