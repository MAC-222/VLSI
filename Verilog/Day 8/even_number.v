module even (
  input reg [7:0]a);
  always @(*)begin
    if(a%2==0)
      $display("It is an even number",a);
    else
      $display("It is not an even number",a);
  end
endmodule
