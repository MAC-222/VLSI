module reduction_operator;
  logic [0:3]a,y;

  initial begin
    a=5'b10111;
    $display(" a = %0b",a);
    y=!a;
    $display(" NOT = %d ",y);
    y=|a;
    $display(" OR = %0b ",y);
    y=&a;
    $display(" AND = %0d ",y);
    y=~|a;
    $display(" NOR = %0b ",y);
    y=~&a;
    $display(" NAND = %0b ",y);
    y=^a;
    $display(" XOR = %0b ",y);
    y=~^a;
    $display(" XNOR i= %0b ",y);
  end
endmodule 
