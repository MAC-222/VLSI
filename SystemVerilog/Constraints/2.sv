class ParamClass #(int max_value = 35);
  rand bit [7:0] addr;
  constraint param_c { addr < max_value; }
endclass
module tb;
  ParamClass PC;
  initial begin
    PC = new();
    repeat(3)
      begin
         PC.randomize();
         $display("Value of addr =",PC.addr);
      end
  end
endmodule
