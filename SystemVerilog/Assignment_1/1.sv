module dyn;
  int d1[];
  int d[]= {9,1,8,3,4,4};
  initial begin
    d1=new[6];
    foreach(d1[i])
      begin
        d1[i]=i;
      end
    $display("\td1 =%0p , size of d1=%0p",d1, d1.size());
    d.reverse();
    $display("\td =%0p",d);
    d.sort();
    $display("\td =%0p",d);
    d.rsort();
    $display("\td =%0p",d);
    d.shuffle();
    $display("\td =%0p",d);
    d1.delete();
    $display("size of d1 after deleting =%0d",d1.size());
  end
endmodule
