module exevent;
  event e1;
  task Process_A;
    #10;
    $display("before triggering ofthe event ",$time);
    ->e1;
    $display("after triggering of the event ",$time);
  endtask
  
  task Process_B;
    $display("waiting for the event ",$time);
    @e1;
    $display("capture of the event using @ ",$time);
  endtask
  
  task Process_C;
    $display("waiting for the event ",$time);
    wait(e1.triggered);
    $display("capture of the event using wait ",$time);
  endtask
  initial begin
    fork 
      Process_A;
      Process_B;
      Process_C;
    join
  end
endmodule
