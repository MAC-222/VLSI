module down_counter_tb;
  reg clk,reset;
  wire [3:0] out;
  down_counter uut(.clk(clk),.reset(reset),.out(out));
  initial begin
    $monitor("clk=%d reset=%d out=%d",clk,reset,out);
    $dumpfile("down_counter.vcd");
    $dumpvars(1,down_counter_tb);
  end
  initial begin
    clk = 0;
    forever #10 clk = ~clk;
    
  end
  initial begin
    reset=1;
    #10
    reset=0;
    #300
    
    $finish();
    end
endmodule
