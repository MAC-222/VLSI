module time_data_type;
  time clock;
  
  initial begin
    $display("\tinitial value of clock = %0d ",clock);
    #10;
    clock = $time;
    $display("\tvalue of clock after initialization = %0d ",clock);
  end
endmodule
