// Code for half adder testbench 
module half_adder_tb;
reg a,b;
wire sum,carry;
//instantiate the half_adder module
  half_adder uut (a,b,sum,carry);
//applying inputs
initial begin
a = 0; b = 0;
#10
a = 0; b = 1;
#10
a = 1; b = 0;
#10
a = 1; b = 1;
#10
$finish();
end
//dump and monitor informations
  initial begin
    $dumpfile("half_adder.vcd"); 
    $dumpvars(1,half_adder_tb);
    $monitor("a=%0d b=%0d sum=%0d carry=%0d",a,b,sum,carry);
  end
endmodule
