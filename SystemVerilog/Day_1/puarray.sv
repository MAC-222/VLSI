module puarray;
  logic [31:0] v1 [7:0];
  
  initial begin 
    
    //array index 7 of unpacked 
    v1[7] = 'h ffffffff;
    $display(v1);
    
    //array index of 6 of unpacked 
    v1[6][31:0] = 'h 11111111;
    $display(v1);
    
    //array index 5 of unpacked
    v1[5][31:0] = 'h aaaa;
    $display(v1);
    
    //array index 4 of unpacked
    v1[4][3:0] = 1;
    $display(v1);
  end
endmodule
