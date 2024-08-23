class A;
  int a = 5;
  function void disp();
    $display("1.Value of a = %0d",a);
  endfunction
endclass

class B extends A;
  int a = 9;
  function void display();
    $display("2.Value of a = %0d",a);
  endfunction
endclass

module inheritance;
  B b1;
  initial begin
    b1 =new();
    b1.a = 24;
    b1.disp();
    b1.display();
  end
endmodule
