// Code your design here
module test;
  byte my_byte;
integer my_integer;
  int my_int;
  bit [15:0] my_bit;
  shortint my_short_int1;
  shortint my_short_int2;
  initial begin
    my_integer = 32'b000_1111_xxxx_zzzz;
    my_int = my_integer;
    my_bit = 16'h8000;
    my_short_int1 = my_bit;
    my_short_int2 = my_short_int1 - 1;
    $display("Range of values for my_byte: %d",my_byte);
    $display("Value of my_int in hexadecimal: %h", my_int);
    $display("Value of my_bit in decimal: %d", my_bit);
    $display("Value of my_short_int1 in decimal: %d", my_short_int1);
    $display("Value of my_short_int2 in decimal: %d", my_short_int2);
  end
endmodule
