module PrimeChecker_tb;
  reg[7:0]a;
  PrimeChecker pc(.a(a));
  initial begin
    a=29;
    $display("a%0d",a);
  end
endmodule
