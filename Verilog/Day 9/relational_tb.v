module relational_tb;
  reg [2:0]a;
  reg [2:0]b;
    wire y1,y2,y3,y4;
  relational dut (.a(a),.b(b),.y1(y1),.y2(y2),.y3(y3),.y4(y4));
    initial begin
      a=001;
      b=101;
      #10;
      a=100;
      b=100;
      #10
      a=110;
      b=000;
      #10
      a=001;
      b=001;
      #10
        $finish;
    end
  always@*
    $monitor("a=%b b=%b y1=%b y2=%b y3=%b y4=%b", a, b, y1, y2, y3, y4);
endmodule
