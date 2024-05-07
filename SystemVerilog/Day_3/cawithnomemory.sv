class transaction;
  int data;
endclass

module memory;
  transaction tr1,tr2;
  initial begin
    tr1 = new();
    tr1.data = 45;
    $display("Data in tr1 = %0d",tr1.data);
    tr2.data = 33;
    $display("Data in tr2 = %0d",tr2.data);
  end 
endmodule
