module ifelse_condition;
  int a , b;
  
  initial begin
    a = $urandom_range(20,30);
    b = 25;
    
    $display("\t a = %0d b = %0d",a , b);
    if (a>b)
      begin
        $display("\t a is greater than b");
      end
    else 
      begin
        $display("\t a is lesser than b");
      end
  end
endmodule
