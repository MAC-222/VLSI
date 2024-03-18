module top_module ( 
    input clk, 
    input d, 
    output q 
);
    wire x1,x2;
    my_dff inst1(.clk(clk),.d(d),.q(x1));
    my_dff inst2(.clk(clk),.d(x1),.q(x2));
    my_dff inst3(.clk(clk),.d(x2),.q(q));
endmodule
