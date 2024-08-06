`include "interface.sv"
`include "test.sv"
module tb;
  intf vif();
  test t1(vif);
  
  
  halfadder ha(
    .a(vif.a),
    .b(vif.b),
    .sum(vif.sum),
    .carry(vif.carry));
  
endmodule
