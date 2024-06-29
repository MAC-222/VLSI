/module tb;
    bit [11:0] my_array [0:3];
    initial begin
    my_array[0] = 12'h012;
    my_array[1] = 12'h345;
    my_array[2] = 12'h678;
    my_array[3] = 12'h9AB;
    $display("Using for loop:");
    for (int i = 0; i < 4; i++) begin
      $display("my_array[%0d] bits [5:4]: %b", i, my_array[i][5:4]);
    end
    $display("Using foreach loop:");
      foreach (my_array[i]) begin
        $display("my_array[%0d] bits [5:4] = %b", i, my_array[i][5:4]);
      end
  end 
endmodule
