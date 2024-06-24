module exevent;
  event e1;
  task Process_A;
    $display("before triggering ofthe event ",$time);
    ->e1;
    $display("after triggering of the event ",$time);
  endtask
  
  task Process_B;
    #10;
    $display("waiting for the event ",$time);
    wait(e1.triggered);
    $display("capture of the event ",$time);
  endtask
  initial begin
    fork 
      Process_A;
      Process_B;
    join
  end
endmodule
