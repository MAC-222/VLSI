module evenorodd_tb;
  reg[7:0]a;
  evenorodd pc(.a(a));
  initial begin
    repeat(5)
    #12
      a  = $random;
    #300$finish;
  end
    initial
    $monitor("a=%0d",a);
  
endmodule
