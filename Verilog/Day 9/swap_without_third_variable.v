module swap_without_third_variable;
     int x=11,y=89, temp;
     initial begin 
    x = x + y; 
    y = x - y; 
    x = x - y;
       $display(" Values of x=%0d y=%0d",x,y);
     
end
endmodule
  
