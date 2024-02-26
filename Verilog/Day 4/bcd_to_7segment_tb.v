module segment7_tb;
    reg [3:0] bcd;
    wire [6:0] seg;
    integer i;
    // Instantiate the Unit Under Test (UUT)
    segment7 uut (.bcd(bcd),.seg(seg));
  initial begin
    $monitor("bcd[0] bcd[1] bcd[2] bcd[3] seg[0] seg[1] seg[2] seg[3] seg[4] seg[5] seg[6]",bcd,seg);
    $dumpfile("segment7.vcd");
    $dumpvars(1,segment7_tb);
  end
//Apply inputs
    initial begin
       for(i = 0;i < 16;i = i+1) //run loop for 0 to 15.
        begin
            bcd = i; 
            #10; //wait for 10 ns
        end     
      $finish;
    end
endmodule
