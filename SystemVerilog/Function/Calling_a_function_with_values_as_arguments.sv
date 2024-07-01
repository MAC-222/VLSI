module function_ex;
//   input int var1;
//   input int var2;
  int x;
  initial begin
    x = sum(2,9);
    $display("\n \t @ %0t ns, value of sum is %0d",$time,x);
  end 
  
  function int sum (input int var1,var2);
     return (var1 + var2);
    endfunction
endmodule
