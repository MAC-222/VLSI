class school;
  logic [3:0] a;
  function room;
    a = 4'b1111;
    $display ("a = %0d ",a);
  endfunction
endclass
module tb;
  school s1 ;
  initial begin
    s1 = new();
    s1.room;
    s1.a = 4'b1010;
    $display("a = %0d ",s1.a);
  end
endmodule
