module dynamic;
  int d1[];
  int d[] = '{9,1,8,3,4,4};
  
  initial begin
    d1 = new[6];
    $display(d);
    
    //initialize array d1 with index and its value
    foreach (d1[i])
      begin
        d1[i] = i;;
      end
    
    $display(d1,",",d1.size);
    
    d.reverse();
    $display(d);
    
    d.sort();
    $display(d);
    
    d.rsort();
    $display(d);
    
    d.shuffle();
    $display(d);
    
    d1.delete();
    $display(d);
    
    $display("size of d1 after deleting = %0d",d1.size);
    
  end
  
endmodule
