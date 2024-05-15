class dynamicarray;
  bit[31:0] data;
  int id;
  int i;
endclass

module array_ex;
  dynamicarray da[];
  initial begin 
    da = new[5];
    foreach (da[i])
      begin
        da[i] = new();
        da[i].data = i*i;
        da[i].id = i+1;
      end
    foreach (da[i])
      $display("da[%0d].data=%0d  da[%0d].id=%0d",i,da[i].data,i,da[i].id);
  end
endmodule
