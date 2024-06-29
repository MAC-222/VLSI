module if_condition;
  logic a , b;
  
  initial begin
    a = 2'b00;
    b = 2'b10;
    
    if (a>b)
      begin
        $display("\t a is greater than b");
      end
    $display("b is greater");
  end
endmodule
