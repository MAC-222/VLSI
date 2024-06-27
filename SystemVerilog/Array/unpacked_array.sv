module unpacked_array;
  byte a[8];
  int abc[10];

  initial begin
       a = '{4,5,6,2,3,7,9,10};
    
        foreach(abc[i]) begin
      abc[i] = $urandom_range(10,50);
    end 
    
    foreach(a[i]) begin
      $display("values of a[%0d] = %0d",i,a[i]);
    end
    
    $display("abc = %p",abc);
  end
endmodule
