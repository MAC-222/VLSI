module semophor;
  semaphore sem = new(1);
  task write;
    sem.get();
    $display($time ," before writing into memory");
    #5;
    $display($time ," after writing into memory");
    sem.put();
  endtask
  
  task read;
    sem.get();
    $display($time ," before reading into memory");
    #3;
    $display($time ," after reading into memory");
    sem.put();
  endtask
  
  initial begin
    fork
      write();
      read();
    join
  end
endmodule
