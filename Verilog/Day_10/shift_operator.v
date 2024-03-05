module shift_operator(
  input [7:0] N,
  input [4:0] shift_amount,
  input D,
  output reg [7:0] out);

    always @(*) begin
      if (D) begin
            out = N << shift_amount;
        end
        else begin
            out = N >> shift_amount;
        end
    end

endmodule
