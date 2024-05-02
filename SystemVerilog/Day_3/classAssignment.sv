class packet;
  bit [31:0] addr;
  bit [31:0] data;
  bit        write;
  string     pkt_type;
  
  function new();
    addr  = 32'h22;
    data  = 32'h13;
    write = 1;
    pkt_type = " GOOD_PACKET ";
  endfunction
  
  function void display();
    $display("------");
    $display("addr = %0d",addr);
    $display("data = %0d",data);
    $display("write = %0d",write);
    $display("pkt_type =%0s",pkt_type);
    $display("------");
  endfunction
endclass

module classassignment;
  packet pkt1;
  packet pkt2;
  
  initial begin
    pkt1 = new();
    $display("calling pkt1 display");
    pkt1.display();
    pkt2 = pkt1;
    $display("calling pkt2 display");
    pkt2.display();
    pkt2.addr = 32'h46;
    pkt2.data = 32'h21;
    pkt2.write = 0;
    pkt2.pkt_type = " BAD PACKET ";
    $display("calling pkt1 display");
    pkt1.display();
    $display("calling pkt2 display");
    pkt2.display();
  end

endmodule
