 class generator;
  transaction pkt;
  mailbox mail;
  function new(mailbox mail);
    this.mail = mail;
  endfunction
  
  task gener;
    //repeat(3);
    begin
      pkt= new();
      pkt.randomize();
      pkt.display("generator");
      mail.put(pkt);
    end
  endtask
endclass  
