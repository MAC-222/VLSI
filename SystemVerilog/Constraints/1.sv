class Base;
  rand bit [7:0] addr;
endclass

class Layer1 extends Base; 
constraint layer1_c { addr < 128; }
endclass

class Layer2 extends Layer1;
constraint layer2_c { addr % 2 == 0; }
endclass
module tb;
  Layer2 b;
  initial begin 
    b = new();
     repeat(10)
      begin
        b.randomize();
        $display("addr = %0d",b.addr);
      end
  end
endmodule
