// Code your design here
module array;
  logic [31:0] v1 [7:0];
  
  initial begin 
    
    //array index 7 of unpacked 
    v1[7] = 'h ffffffff;
    $display(v1);
    
    //array index of 6 of unpacked 
    v1[6][31:0] = 'h11111111;
    $display(v1);
    
    //array index 5 of unpacked
    v1[5][31:0] = 'haaaa;
    $display(v1);
    
    //array index 4 of unpacked
    v1[4][0] = 1;
    $display(v1);
  end
endmodule
