module packed_array;
  reg [3:0] bbc;
  logic [8:0][7:0] xyz;
  
  initial begin
    bbc = 4'b0011;
    xyz = 8'b10110011;
    
    foreach(bbc[i]) begin
      $display("data of bbc[%0d] = %0b",i,bbc[i]);
      
    end
    foreach(xyz[i]) begin
      foreach(xyz[i][j]) begin
        $display("value of xyz[%0d][%0d] = %0d",i,j,xyz[i][j]);
      end
    end
  end
endmodule
