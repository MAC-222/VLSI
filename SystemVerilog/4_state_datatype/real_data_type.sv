module real_data_type;
  real rd;
  
  initial begin
    $display("\tinitial value of rd = %0d , time ",rd , $time);
    #20;
    rd = 8.45;
    $display("\tvalue of rd after initialization = %0f , time ",rd, $time);
  end
endmodule
