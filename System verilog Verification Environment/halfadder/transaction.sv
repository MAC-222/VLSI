class transaction;
  bit a = 1;
  bit b = 0;
  bit sum;
  bit carry;
  
  function void display(string name);
    $display("%s",name);
    $display("a = %0d b = %0d ",a,b);
    $display("sum = %0d carry = %d",sum,carry);
  endfunction
endclass  
