module associative_array;
  int a[*];
  string queen [string];
  
  initial begin
    
    a = '{'h1:20 , 'h23:37 , 'h34:90};
    queen = '{"name" : "david" , "fruit" : "Apple" , "vegetable" : "tomato"};
    
    $display("array a %0p",a);
    $display("array  %0p",queen);
    
    $display("%0d",a[1]);
    $display("%0s",queen["fruit"]);
  end
endmodule
