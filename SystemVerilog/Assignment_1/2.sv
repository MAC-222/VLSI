module queues;
  int j;
  int q[$] = '{0,2,5};
  initial begin
    j=1;
    q.insert(1,j);
    $display ("\tq = %p",q);
    q.delete(1);
    $display ("\tq = %p",q);
    q.push_front(7);
    $display("\tq = %p",q);
    q.push_back(9);
    $display ("\tq = %p",q);
    j=q.pop_back();
    $display("\tj = %p,\tq = %p",j,q);
    j=q.pop_front;
    $display("\tj = %p,\tq = %p",j,q);
    q.reverse();
    $display("\tq = %p",q);
    q.sort();
    $display("\tq = %p",q);
    q.rsort();
    $display("\tq = %p",q); 
    q.shuffle();
    $display("\tq = %p",q);
  end
endmodule
    
    
