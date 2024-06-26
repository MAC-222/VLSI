module string_data_type;
  string str1 = "Macklin";
  string str2 = "Merlin";
  
  initial begin
    $display("string1 = %0s string2 = %0s",str1,str2);
    
    if(str1==str2)
      $display("String1 is equal to string 2");
    else
      $display("strings are not equal");
    
    if (str1!=str2)
      $display("\tstrings are not equal");
    else
      $display("String1 is equal to string 2");
    
    if(str1 < str2)
      $display("String1 < String2 ");
    
    if(str1 <= str2)
      $display("String1 <= String2 ");
    
    if(str1 > str2)
      $display("String1 > String2");
    
    if(str1 >= str2)
      $display("String1 >= String2");
    
    $display("-------------------------");
    
    $display("%0s",{str1,str2});
    
    $display("%0s",{2,{str2}});
    
    for( int i = 0;i < 7; i++)
      $display("%s",str1[i]);
      $display("");
  end
endmodule
