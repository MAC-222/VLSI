module forloop;
//   int i,j;
  int mem[3:0];
  
  initial begin
    outerloop:
    for ( int j = 0; j < 9; j++)
      begin
        #10
        innerloop:
        for (int i = 0; i < 3; i++)
          begin
            mem[i] = i*2;
            $display($time ," ","mem[%0d] = %0d",i,mem[i]);
          end
      end
  end
endmodule
