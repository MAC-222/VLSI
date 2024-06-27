module dynamic_array;
  int a [];
  
  initial begin
    a = new[10];
    a = '{10,11,12,13,15,16,18,19,20,29};
    
    foreach(a[i])
      begin
        $display("value of a[%0d] = %0d",i,a[i]);
      end
    $display("size of a is %0d",a.size);
    a.delete();
    $display("size of array after deletion = %0d",a.size);
    
  end
endmodule
