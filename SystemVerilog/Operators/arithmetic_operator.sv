module arithmetic_operator;
  int a ;
  int b ;
  int y ;
  initial begin
    a = 19;
    b = 2;
   
    y = a + b;
    $display("value of a + b = %0d",y);
  
    y = a - b;
    $display("value of a - b = %0d",y);
    
    y = a * b;
    $display("value of a * b = %0d",y);
    
    y = a / b;
    $display("value of a / b = %0d",y);
    
    y = a % b;
    $display("value of a modulo b = %0d",y);
    
    y = a ** b;
    $display("value of a ** b = %0d",y);
    
  end
endmodule
