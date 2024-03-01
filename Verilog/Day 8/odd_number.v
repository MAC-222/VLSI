module odd (
  input reg [7:0]a);
  always @(*)begin
    if(a%2==1)
      $display("It is an odd number");
    else
      $display("It is not an odd number");
  end
endmodule
