module parity_gen_even_tb;
  reg a,b,c;
  wire p;
  parity_gen_even pe(.a(a),.b(b),.c(c),.p(p));
  initial begin
    a=0; b=1; c=1;
    #10
    a=0; b=1; c=1;
    #10
    a=1; b=0; c=0;
    #10
    a=0; b=0; c=1;
    #10
    $finish;
  end
  initial begin
    $monitor("%t a=%d b=%d c=%d p=%d",$time,a,b,c,p);
    $dumpfile("parity_gen_even.vcd");
    $dumpvars(1,parity_gen_even_tb);
  end
endmodule
