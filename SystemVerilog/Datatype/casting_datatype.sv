module casting;
  integer integer_data;
  int int_data;
  shortint shortint_data;
  longint longint_data;
  initial begin
    integer_data = 8'b100100xz;
    $display("size of the integer = %0d",$size(integer_data));
    $display("value before casting in integer =%0b",integer_data);
    
    int_data = int'(integer_data);
    $display("value after casting integer to int =%0b",int_data);
    
    shortint_data = 16'b1001010100111001;
    longint_data = longint'(shortint_data);
    $display("value after casting shortint to longint =%0b",longint_data);
    
  end
endmodule
