class arrayofobjects;
  bit[31:0] data;
  int id;
  int i;
endclass

module array_ex;
  arrayofobjects ar[5];
  initial begin 
    foreach (ar[i])
      begin
        ar[i] = new();
        ar[i].data = i*i;
        ar[i].id = i+1;
      end
    foreach (ar[i])
      $display("ar[%0d].data=%0d  ar[%0d].id=%0d",i,ar[i].data,i,ar[i].id);
  end
endmodule
