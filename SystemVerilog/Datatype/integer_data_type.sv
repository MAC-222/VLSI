// Code your design here
module integer_data_type;
  integer it;
  
  initial begin
    $display("\tdefault value of it = %0b ",it);
    it = 32'b1x1x_1010_0z0z_1111;
    $display("\tvalue of it after initialization = %h ",it);
  end
endmodule
