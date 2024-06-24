module semophor;
  semaphore sem = new(8);
  task write;
    sem.get(5);
    $display($time ," before writing into memory");
    #5;
    $display($time ," after writing into memory");
    sem.put(5);
  endtask
  
  task read;
    sem.try_get(4);
    $display($time ," before reading into memory");
    #3;
    $display($time ," after reading into memory");
    sem.put(9);
  endtask
  
  initial begin
    fork
      write();
      read();
      //read1();
    join
  end
endmodule
