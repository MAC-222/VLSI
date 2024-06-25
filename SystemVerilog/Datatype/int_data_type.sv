module int_data_type;
  int one;
  
  initial begin
    $display("\ninitial value of one = %0b ",one);
    
    one = 32'b1111_0000_1010_0101_0001_1100_1001_0011;
    
    $display("\nvalue of one after assignment = %0b ",one);
    
    one = 2147483647;
    
    $display("value of at its maximum  = %0b ",one);
      
  end
    
endmodule
