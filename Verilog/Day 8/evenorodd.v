module evenorodd (
  input reg [7:0]a);
  always @(*)begin
    if(a%2==0)
      $display("It is an even number");
    else
      $display("It is an odd number");
  end
endmodule
