module boundedqueue;
  
  int m[$:10] = {90,29,22,34,56,78,11,63,35};
  
  
  initial begin
     m.insert(8,4);
     $display(m);
    
    m.push_front(2);
    $display(m);
    
    m.sort();
    $display(m);
    
    m.delete(3);
    $display(m);
    
    m.push_back(100);
    $display(m);  
    
    m.insert(2,8);
    $display(m);
    
    m.push_front(3);
    $display(m);

     $display(m.size);
    
    //     m.push_back(98);
//     $display(m);
    
    m.rsort();
    $display(m);
    
  end
endmodule
