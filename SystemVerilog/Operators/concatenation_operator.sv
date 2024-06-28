module concatenation_operator;
  logic [0:3] a,b,c;
  int x;
  initial begin
    a=1'b0;
    b=4'b0010;
    c=4'b10111;
    x = {a,b,c};
    $display(" output = %0b",x);
    #10;
    x= {a,b,{3{c}}};
    $display(" output = %0b",x);
  end
endmodule 
