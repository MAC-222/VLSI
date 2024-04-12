module dt;
  integer a;
  int b;
  shortint c;
  longint d;
  logic [7:0] l1;
  logic signed [7:0] sl1;
  byte bl1;
  reg [7:0] r;
  
  initial begin
    a='hxxzz_ffff;
    b=-1;
    c= 'hfxfx;
    d='hffffxxxxffffzzzz;
    l1=-1;
    sl1=-3;
    bl1=-9;
    r=8'bxzxz0101;
  end
   
  initial begin
    #10
    $display("a=%h b=%h c=%h d=%h",a,b,c,d);
    $display("l1=%d sl1=%d bl1=%d r1=%b",l1,sl1,bl1,r);
  end
endmodule
