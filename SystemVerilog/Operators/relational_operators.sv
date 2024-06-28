module arithmetic_operator;
  logic a ;
  logic b ;
  bit[3:0] y ;
  initial begin
    a = 3'b100;
    b = 3'b111;
   
    $display("a = %0d b = %0d",a,b);
    y = a < b;
    $display("value of a < b = %0d",y);
  
    y = a > b;
    $display("value of a > b = %0d",y);
    
    y = a <= b;
    $display("value of a * b = %0d",y);
    
    y = a >= b;
    $display("value of a / b = %0d",y);
    
    
  end
endmodule
