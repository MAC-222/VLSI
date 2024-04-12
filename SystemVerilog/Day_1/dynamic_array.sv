module dynamic_array;
  
  int array[];
  int i;
  
  initial begin
    array = new[5];
    array = '{5,10,15,20,25};
    
    
    //Print elements of array
    foreach (array[i])
      $display("array[%0d] = %0d",i,array[i]);

    //size of an array
    $display("size of array = %0d",array.size());
    
    //Resizing of an array and copy old array content
    array = new[8](array);
    $display("size of array after resizing = %0d",i,array[i]);
    
    //override exsisting array:previous array element values will be lost
    array = new[6];
    $display("size of an array after overriding = %0d",array.size());
    
    foreach(array[i])
      $display("array[%0d",i,array[i]);
    
    array.delete();
    $display("size of array after deleting = %0d",array.size());
    
  end
  
endmodule
