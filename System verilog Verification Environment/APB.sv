module apb (
        clk,
        reset,
        data,
        addr,
        write_e,
        tr,
        psel,
        pready,
        pdata,
        paddr,
        pwrite_e,
        penable,
        present,
        next
);
        input clk,
        reset,
        write_e,
        tr,
        pready;
  
  input [7:0] addr,
              data;
  
  output reg psel,
         penable,
         pwrite_e;
  
  output reg [7:0] paddr,
               pdata;
  
  output reg [1:0] present,next;
  
  parameter [1:0] idle   = 2'b00;
  parameter [1:0] setup  = 2'b01;
  parameter [1:0] access = 2'b10;
  
  
 always @(posedge clk)
    begin
      pwrite_e<=write_e;
      if(reset)
      present<=2'b00;
     else
       present<=next;
    end
       
       
      always @(present,tr,pready)
            case (present)
              idle:
                begin
                  psel=0;
                  penable=0;
        
                  if(tr==0)
                    next<=idle;
                  else
                    next<=setup;
                  end
              setup:
                begin
                  psel=1;
                  penable=0;
                  if((pwrite_e==1)&&(tr==1))
                    begin
                      paddr<=addr;
                      pdata<=data;          
                      next<=access;
                    end
                  else if((pwrite_e==0)&&(tr==1))
                    begin
                      paddr<=addr;
                      next<=access;
                    end
                end
                 access:
                   begin
                     psel=1;
                     penable=1;
                     if((pwrite_e==1)&&(pready==0)&&(tr==1))
                       begin                        
                         paddr<=addr;                       
                         pdata<=data;                      
                         next<=access;                     
                       end
                     else if((pwrite_e==1)&&(pready==1)&&(tr==1))     
                       begin                                
                         paddr<=addr;                                 
                         pdata<=data;                       
                         next<=setup;                     
                       end                 
                   end
            endcase
endmodule
