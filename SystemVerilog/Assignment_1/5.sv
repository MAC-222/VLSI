// Code your design here
module test;
  string s;
  initial begin
    s="System Verilog";
    $display(s);
    $display(s.getc(0)); // '0'-indicate index of s
    $display(s.toupper());
    s={s,"3.1a"};
    $display(s);
    s.putc(s.len()-1,"b");
    $display(s);
    $display(s.substr(2,5)); // index between 2 to 5
  end
endmodule
