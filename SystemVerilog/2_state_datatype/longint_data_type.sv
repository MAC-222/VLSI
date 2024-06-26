module longint_data_type;
  longint one;
  
  initial begin
    $display("\ninitial value of one = %0b ",one);
    
    one = 64'b111xzxz100010;
    
    $display("\nvalue of one after assignment = %0b ",one);
      
  end
    
endmodule
