module queue_methods;
  int q [$];
  
  initial begin
    q ='{9,23,45,67,22,14,25,49};
    
    q.insert(4,99);
    $display("insertion of element in queue ",q);
    
    q.delete(3);
    $display("deletion of element in the queue ",q);
    
    q.push_front(88);
    $display("queue after pushfront ",q);
    
    //q.size();
    $display("size of the queue ",q.size());
    
    q.pop_back(); 
    $display("queue after popback ",q);
    
    q.pop_front();
    $display("queue after popfront ",q);
    
    q.sort();
    $display("queue after sorting ",q);
    
    q.rsort();
    $display("queue after reverse sorting ",q);
    
    q.delete();
    $display("queue after deletion ",q);

                 
  end 
endmodule
