class packet;
  rand bit [3:0] addr1;
  randc bit [3:0] addr2;
endclass

module randomizex;
  initial begin
    packet pkt;
    pkt = new();
    repeat(10)
      begin
        pkt.randomize;
        $display("\tAddress of addr1 = %0d \tAddress of addr2 = %0d",pkt.addr1,pkt.addr2);
      end
  end
endmodule
