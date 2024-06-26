module typedefdata;
  typedef enum{ MONDAY,TUESDAY,WEDNESDAY,THURSDAY,FRIDAY,SATURDAY,SUNDAY}week_e;
  week_e day;
  
  initial begin
    $display("\n//days = {\n MONDAY,\n TUESDAY,\n WEDNESDAY,\n THURSDAY,\n FRIDAY,\n SATURDAY,\n SUNDAY\n }");
    day = day.last();
    $display("\nlast day name = %0s  and its value is = %0d",day,day);
    day = FRIDAY;
    day = day.next();
    $display("\n day name = %0s  and its value is = %0d",day,day);
    day = day.prev();
    $display("\n day name = %0s  and its value is = %0d",day,day);
  end
endmodule
