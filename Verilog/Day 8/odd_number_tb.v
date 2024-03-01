module odd_tb;
  reg[7:0]a;
  odd pc(.a(a));
  initial begin
    a=21;
    $display("a%0d",a);
  end
endmodule
