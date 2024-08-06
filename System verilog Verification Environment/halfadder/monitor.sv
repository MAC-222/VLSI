class monitor;
  virtual intf vif;
  mailbox mail1;
  
  function new(virtual intf vif, mailbox mail1);
    this.vif = vif;
    this.mail1 = mail1;
  endfunction
  
  task moni;
    repeat (3);
    #3;
    begin 
      transaction pkt;
      pkt        = new();
      pkt.a      = vif.a;
      pkt.b      = vif.b;
      pkt.sum    = vif.sum;
      pkt.carry  = vif.carry;
      mail1.put(pkt);
      pkt.display("monitor");
    end
  endtask
endclass
  
