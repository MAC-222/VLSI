module even_tb;
  reg[7:0]a;
  even pc(.a(a));
  initial begin
    a=28;
    $display("a%0d",a);
  end
endmodule
