module shortint_data_type;
  shortint one;
  
  initial begin
    $display("\ninitial value of one = %0b ",one);
    
    one = 16'b1010_1011_1111_0101;
    
    $display("\nvalue of one after assignment = %0b ",one);
    
    one = 32767;
    
    $display("value of at its maximum  = %0b ",one);
      
  end
    
endmodule
