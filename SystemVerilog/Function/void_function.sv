module voidfunction;
  //int a,b;
  function void compare(int a,b); 
    if (a==b)
      $display("a is equal to b");
    else
      $display("a is not equal to b");
  endfunction
  initial begin
    compare(10,9);
    compare(8,8);
  end
endmodule
