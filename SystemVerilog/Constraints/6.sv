class CL;
  randc bit [31:0] addr;
  constraint protocol_c { addr inside {[0:31], [64:95]}; }
endclass
module tb;
  CL c;
  initial begin
    c = new();
    repeat(20)
      begin
        c.randomize();
       $display("Value of addr ",c.addr);
      end
  end
endmodule
