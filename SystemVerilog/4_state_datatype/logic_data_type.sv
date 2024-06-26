module logic_data_type;
  logic [3:0] dt;
  
  initial begin
    $display("\tdefault value of logic dt = %0b ",dt);
    dt = 4'b1010;
    $display("\tvalue of logic dt after initialization = %0b ",dt);
  end
endmodule
