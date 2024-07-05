class macklin;
  int age;
  int roll;
  
  function f;
    age = 22;
    roll = 14;
    $display("age = %0d roll = %0d ",age,roll);
  endfunction
endclass
class eniya extends macklin;
  string place;
  function n;
    place = "Erode";
    super.f;
    $display("place = %0s",place);
  endfunction
endclass

module ma;
  initial begin
    eniya e;
    e = new();
    e.n;
  end
endmodule
