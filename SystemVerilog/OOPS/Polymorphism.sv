class parent; 
  int a; 
  int b;
  virtual function void display();
     a = 1;
     b = 2;
     $display("This is parent class");
     $display("a = %0d, b= %0d",a,b);
  endfunction
endclass
class child extends parent;
  int d; 
  function void display();
    a = 3;
    b = 4;
    d = a+b;
    $display("This is child class");
    $display("a = %0d, b = %0d,d = %0d",a,b,d);
  endfunction
endclass
module poly_ex();
  parent p1[1:0];
  child c;
  initial begin
    c = new();
    p1[0] = c; 
    p1[1] = new(); 
    p1[0].display(); 
    p1[1].display();
  end
endmodule:poly_ex
