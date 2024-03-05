module up_down_counter(
  input clk, reset, up_down,
  output reg [3:0] out
);
always @(posedge clk or posedge reset) begin
    if (reset)
      out <= 4'h0;
    else if (~up_down)
    out <= out + 1;
    
    else
    out <= out - 1;
  
  end
  
endmodule
