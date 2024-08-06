class scoreboard;
  mailbox mail1;
  
  function new(mailbox mail1);
    this.mail1 = mail1;
  endfunction
  task score;
    transaction pkt;
    repeat (3);
    begin
      mail1.get(pkt);
      if(((pkt.a ^ pkt.b) == pkt.sum)&&((pkt.a & pkt.b) == pkt.carry))
        $display("Result is EXPECTED");
      else
        $error("Wrong result");
      pkt.display("scoreboard");
    end
  endtask
endclass   
