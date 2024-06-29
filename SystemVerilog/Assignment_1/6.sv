// Code your design here
module eg;
  reg [3:0] my_array1 [4:0][30:0];
  initial begin
    my_array1[4][30]=1'b1;
    $display("my_array1[4][30]:%b",my_array1[4][30]);
    my_array1[29][4]=1'b1;
    $display("my_array1[29][4]:%b",my_array1[29][4]);
    my_array1[4][30]=31'b1;
    $display("my_array1[4][30:0]:%b",my_array1[4][30]);
   end
endmodule
