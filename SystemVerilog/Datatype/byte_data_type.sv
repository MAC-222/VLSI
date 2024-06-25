module byte_data_type;
  byte one;
  
  initial begin
    $display("\ninitial value of one = %0b ",one);
    
    one = 8'b10101011;
    
    $display("\nvalue of one after assignment = %0b ",one);
    $display("value of one in 2's complement  = %0d",one);
    
  end
endmodule
