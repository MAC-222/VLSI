module dataenum;
  enum {MONDAY,TUESDAY,WEDNESDAY,THURSDAY,FRIDAY,SATURDAY,SUNDAY}days;
  
  initial begin
    $display("\nMONDAY \nTUESDAY \nWEDNESDAY \nTHURSDAY \nFRIDAY \nSATURDAY \nSUNDAY");
    days = days.first;
    for(int i=0;i<7;i++)
      begin
        $display("\n Day = %0s \t Default value = %0d",days.name,days);
        days = days.next;
      end
  end
endmodule
