class transaction;
  bit[31:0] data;
  int id;
  
  task update(bit [31:0] m_data,int m_id);
    data = m_data;
    id = m_id;
  endtask
  
  function print(transaction tr);
    $display("Value of data = %0d and id = %0d",tr.data,tr.id);
  endfunction
endclass

module example;
  initial begin 
    transaction tr = new();
    tr.update(5,3);
    tr.print(tr);
  end
endmodule
