class MyClass;
  rand int arr[]; 
  constraint size_c { arr.size() == 5; }
  constraint value_c {
    foreach (arr[i]) {
      arr[i] inside {1, 2, 3, 4, 5}; }
endclass
      
module test;

  initial begin
    MyClass obj = new();
    if (obj.randomize()) begin
      $display("Randomized array size: %0d", obj.arr.size());
      $display("Array elements: %p", obj.arr);
    end else begin
      $display("Randomization failed!");
    end
  end

endmodule
