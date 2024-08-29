class Dynamic;
  rand bit [3:0] data ;
  rand bit [7:0] addr;
  constraint dynamic_c { addr == data + $urandom_range(1,10); }
endclass
module tb;
  Dynamic D;
  initial begin
    D = new();
    repeat(5)
      begin
   // D.data = 2;
         D.randomize();
        $display("Value of addr=%0d data=%0d ",D.addr,D.data);
      end
  end
endmodule
