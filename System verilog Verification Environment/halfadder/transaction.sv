class transaction;
  rand bit a;
  rand bit b;
  bit sum;
  bit carry;
  
  function void display(string name);
    $display("%s",name);
    $display("a = %0d b = %0d sum = %0d carry = %0d",a,b,sum,carry);
  endfunction
endclass  
