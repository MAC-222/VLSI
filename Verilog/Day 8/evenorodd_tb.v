module evenorodd_tb;
  reg[7:0]a;
  evenorodd pc(.a(a));
  initial begin
    a  =   909;
    $display("a%0d",a);
  end
endmodule
