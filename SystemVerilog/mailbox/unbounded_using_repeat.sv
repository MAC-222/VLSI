module box;
  mailbox mail= new();
  
  task process;
    int value;
    repeat(5)
      begin
        value = $urandom_range(1,20);
        mail.put(value);
        //mail.randomize();
        $display("Put data = %0d",value);
      end
  endtask

  task door;
    repeat(5)
      begin
        int value ;
        mail.get(value);
        $display(" retrived value = %0d ",value);
      end
  endtask
  initial begin
    fork 
      process;
      door;
    join
  end
endmodule
