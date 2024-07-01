module function_ex;
  function compare(input int a , b);
    if (a<b)
      begin  
        $display("a is less than b");
      end
    else if (a>b)
      begin
        $display("a is greater than b");
      end
    else
      begin
        $display("a is equal to b");
      end    
  endfunction
  
  initial begin
    compare (10,8);
    compare (9,2);
    compare (4,4);
  end
endmodule
