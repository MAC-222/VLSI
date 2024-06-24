module semophor;
  semaphore sem = new(20);
  task write;
    sem.get(5);
    $display($time ," before writing into memory");
    #5;
    $display($time ," after writing into memory");
    sem.put(5);
  endtask
  
  task read;
    sem.get(4);
    $display($time ," before reading into memory");
    #3;
    $display($time ," after reading into memory");
    sem.put(9);
  endtask
  
   task read1;
     sem.get(8);
     $display($time ," before reading 1 into memory");
     #2;
     $display($time ," after reading 1 into memory");
    sem.put(2);
  endtask
  
  initial begin
    fork
      write();
      read();
      read1();
    join
  end
endmodule
