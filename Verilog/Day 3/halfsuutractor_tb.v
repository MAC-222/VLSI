// Code  halfsubtractor testbench 
module halfsubtractor_tb;
  reg a,b;
  wire diff,borrow;
//instantiate halfsubtractor module
  halfsubtractor hs(.a(a),.b(b),.diff(diff),.borrow(borrow));
//dump and monitor informations
  initial begin
    $monitor("a=%d b=%d diff=%d borrow=%d",a,b,diff,borrow);
    $dumpfile("halfsubtractor.vcd");
    $dumpvars(1,halfsubtractor_tb);
  end
  //apply inputs
  initial begin
    a=1'b0; b=1'b0;
    #25
    a=1'b0; b=1'b1;
    #25
    a=1'b1; b=1'b0;
    #25
    a=1'b1; b=1'b1;
    #25
    $finish;
  end
endmodule
    
