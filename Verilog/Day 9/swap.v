module swap;
     int a=11,b=89, temp;
     initial begin 
     temp=a;
     a=b;
     b=temp;
       $display(" Values of a=%0d b=%0d",a,b);     
end
endmodule
