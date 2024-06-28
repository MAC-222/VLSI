module bitwise_operator;
  logic[0:3]a,b,x,y,c;
  initial begin
    a=4'b1101;
    b=3'b1011;
    c=4'bx01x;
    $display(" a = %0b",a);
    $display(" b = %0b",b);
    
    y=~a;    
    $display(" (~a)  = %0b",y);

    y=a&b;  
    $display(" (a&b) = %0b",y);
 
    y=a|c;   
    $display(" (a|c) = %0b",y);
 
    y=a^b;    
    $display(" (a^b) = %0b",y);
  
    y= ~(a & b);  
    $display(" ~(a&b) = %0b", y);
  
    y=  ~(b|a);
    $display(" ~(b|a) = %0b", y);
  
    y= ~(a^b);a    
    $display(" ~(a^b) = %0b", y);

  end
endmodule 
