module shift_operator;
  logic [3:0] a,c,y;
  reg signed [3:0] b;

  initial begin

    a=4'b0011;

    b=4'b0100;

    $display(" a = %0b",a);

    $display(" b = %0b",b);

    $display(" logical left shift(a<<2) = %0b",a<< 2);

    $display(" logical right shift(b>>2) = %0b",b>>2);

    $display(" Arithmetic left shift(a<<<1) = %0b",a <<< 1);

    $display(" Arithmetic right shift(b>>>3) = %0b",b>>>3);


  end
endmodule 
