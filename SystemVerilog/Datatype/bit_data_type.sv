module bit_data_type;
  bit one;
  bit [3:0] multi;
  
  initial begin
    $display("\ninitial value of one = %0b , initial value of multi = %0b",one,multi);
    
    one = 1'b1;
    multi = 4'b0001;
    
    $display("\nvalue of one after assignment = %0b , value of multi after assignment = %0b",one,multi);
    
    multi = 4'bzx11;
    $display("\nvalue of multi = %0b",multi);
  end
endmodule
