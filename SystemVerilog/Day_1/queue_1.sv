// Code your design here
module unboundedqueue;
  int j;
  int q[$] = {0,4,6,8,12};
  
  initial begin 
    j=1;
    q.insert(1,j);
    $display(q);
    
    q.delete(2);
    $display(q);
    
    q.push_front(7);
    $display(q);
    
    q.sort();
    $display(q);
    
    q.push_back(22);
    $display(q);
    
    q.pop_front();
    $display(q);
    
    q.rsort();
    $display(q);
    
    q.pop_back();    
    $display(q);
    
    q.shuffle();
    $display(q);
    
  end
endmodule
    
    
