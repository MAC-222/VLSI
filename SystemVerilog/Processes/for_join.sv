module fork_join;
  int a,b,c;
  initial begin
    b = 10;
    c = 3;
  end
  fork
    begin
      a=b+c;
      $display("t=%0d PROCESS 1 STARTED",$time);
      $display("value of a =%0d",a);
      #10
      $display("t=%0d PROCESS 1 FINISHED",$time);
    end
    begin
      a=b-c;
      $display("value of a =%0d",a);
      $display("t=%0d PROCESS 2 STARTED",$time);
      #25
      $display("t=%0d PROCESS 2 FINISHED",$time);
    end
   
  join
  end
endmodule
