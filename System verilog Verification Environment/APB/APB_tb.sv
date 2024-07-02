module apb_tb;
  reg clk;
  reg reset;
  reg [7:0] data;
  reg [7:0]addr;
  reg write_e;
  reg tr;
  reg psel;
  reg pready;
  wire [7:0]pdata;
  wire [7:0]paddr;
  wire pwrite_e;
  wire penable;
  wire [1:0] present;
  wire [1:0]next;
  
  apb uut(
    .clk(clk),
    .reset(reset),
    .data(data),
    .addr(addr),
    .write_e(write_e),
    .tr(tr),
    .psel(psel),
    .pready(pready),
    .pdata(pdata),
    .paddr(paddr),
    .pwrite_e(pwrite_e),
    .penable(penable),
    .present(present),
    .next(next)
  );
  initial begin
    $monitor("time=%d clk=%d reset=%d data=%d addr=%d write_e=%d tr=%d psel=%d pready=%d pdata=%d paddr=%d pwrite_e=%d penable=%d present=%d next=%d",$time,clk,reset,data,addr,write_e,tr,psel,pready,pdata,paddr,pwrite_e,penable,present,next);
    $dumpfile("apb.vcd");
    $dumpvars(1,apb_tb);
  end
  
    initial begin
      clk=1;
      reset=1;
      write_e=0;
      tr=0;
      pready=0;
      #10 
      reset=0;     
      #10 
      tr=1;
      pready=1;            
      write_e=1;    
      repeat(4) 
        begin     
          #20
          tr=1;
          addr=$random;
          data=$random;
        end
    end
      initial begin
        repeat(10)
          begin
            #10 
            pready=0;
            #10 
            pready=1;     
          end
      end
      always #10 clk=~clk;
  initial
    #100
    $finish;
endmodule    
  
