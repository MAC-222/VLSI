module BCDcounter(
  input clk, reset,
  output reg [7:0] out
);
  
  always @(posedge clk or  posedge reset) begin
    
    if (reset)
      out <= 4'h0;
    
    else if (out == 4'ha)
      out <= 4'h0;
    
    else
      out <= out + 1;
    
  end
  
endmodule
