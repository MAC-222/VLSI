module shift_operator_tb;

  reg [7:0] N;
  reg [4:0] shift_amount;
  reg D;
    
  wire [7:0] out;

  shift_operator dut (
      .N(N),
      .shift_amount(shift_amount),
      .D(D),
      .out(out)
  );

  initial begin
    N = 8'b1101;
    shift_amount = 2;
    D = 1;
    #10;
   
    N = 8'b0110;
    shift_amount = 2;
    D = 0;
    #10;
    
    $finish;
  end
  
  always @(*)
    
    $monitor("N=%d, out=%b", N, out);

endmodule
