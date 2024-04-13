module foreachh;
  bit [2:0][1:0][7:0] mdata;
  
  initial begin
    
    mdata = 48'h cafeface0708;
    foreach(mdata[i])
      begin
        $display ("mdata[%0d] = 0x%h",i,mdata[i]);
    
      foreach (mdata[i,j]) 
        begin
          $display ("mdata[%0d][%0d] = 0x%h",i,j,mdata[i][j]);
        end
      end
  end
endmodule
