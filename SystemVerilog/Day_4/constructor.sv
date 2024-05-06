class transaction;
  bit [31:0] data;
  
  function new(bit[31:0]m_data);
    data  = m_data;
  endfunction
endclass
  
  module ghk;
    initial begin
      transaction tr = new(12);
      $display("Value of data = %0d",tr.data);
    end 
  endmodule
