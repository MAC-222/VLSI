`include "transaction.sv"
`include "generator.sv"
`include "driver.sv"
`include "monitor.sv"
`include "scoreboard.sv"

class environment;
  generator gen;
  driver dri;
  monitor mon;
  scoreboard sco;
  mailbox m1;
  mailbox m2;
  
  virtual intf vif;
  function new(virtual intf vif);
    this.vif = vif;
    m1 = new();
    m2 = new();
    gen =  new(m1);
    dri = new(vif,m1);
    mon = new(vif,m2);
    sco = new(m2);
  endfunction
  task test();
    fork
      gen.gener();
      dri.driv();
      mon.moni();
      sco.score();
    join
  endtask
  task run;
    test();
    $finish;
  endtask
endclass
  
