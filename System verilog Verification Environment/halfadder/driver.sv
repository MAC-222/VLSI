class driver;
   virtual intf vif;
   mailbox mail;
   function new(virtual intf vif , mailbox mail);
     this.vif = vif;
     this.mail =  mail;
   endfunction
   
   task driv;
     repeat (3);
     begin
       transaction pkt;
       mail.get(pkt);
       vif.a = pkt.a;
       vif.b = pkt.b;
      
       pkt.sum = vif.sum;
       pkt.carry = pkt.carry;
       pkt.display("driver");
     end
   endtask
 endclass
       
