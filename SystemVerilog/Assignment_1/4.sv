 module eg();
   int a[4] = '{1, 3, 5, 7};
    int q[$];
  int d[] = '{9, 1, 8, 3, 4, 4};
  int f[6] = '{1, 6, 2, 6, 8, 6};
   int c;
  
  initial begin
    $display("1) %0d", a.sum());
    $display("2) %0d", a.product());
    q = a.min();
    $display("3) %0p", q);
    q = a.max();
    $display("4) %0p", q);
    q =( f.unique ());
    $display("5) %0p", q);
    q = d.find with (item > 3);
    $display("6) %0p", q);
    q = d.find_index with (item > 3);
    $display("7) %0p", q);
    q = d.find_index with (item > 99);
    $display("8) %0p", q);
    q = d.find_first_index with (item == 8);
    $display("9) %0p", q);
    q = d.find_last with (item == 4);
    $display("10) %0p", q);
    q = d.find_last_index with (item == 4);
    $display("11) %0p", q);
    c = d.sum with (int' (item> 7));
    $display("12) %0p", c);
    c = d.sum with ((item> 7)*item);
    $display("13) %0p", c);
    c = d.sum with ((item < 8));
    $display("14) %0p", c);
    c = d.sum with ((item<8)?item:0);
    $display("15) %0p", c);
        
    
  end
endmodule
