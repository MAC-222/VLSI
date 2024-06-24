module box;
  mailbox mail= new(20);
  
  task process;
    int value = 10;
    string name = "HELLO";
    mail.put(value);
    $display("Put data = %0d",value);
    mail.put(name);
    $display("put string = %0s",name);
  endtask

  task door;
    int value ;
    string name ;
    mail.get(value);
    mail.get(name);
    $display(" retrived value = %0d ",value);
    $display(" retrived name = %s ",name);
  endtask
  initial begin
    fork 
      process;
      door;
    join
  end
endmodule
