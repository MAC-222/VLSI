module associative_array;
  int assoc[longint];  //sparse array of int type
  longint  idx;  // idx of int type
    initial begin
        idx = 1;  // initialization of idx
        repeat(3) // repeat 64 times of statements
          begin
            assoc[idx] = idx;  // index number provided which is equal to idx 
            idx = idx << 1; // left shift idx by 1
          end
          
        $display("First value");  //display first value of idx
        if(assoc.first(idx))
	  $display(idx,",",assoc[idx]);
       
        $display("next value"); // display next value
        if(assoc.next(idx))
	  $display(idx,",",assoc[idx]);
          
        $display("last value"); // display last value
        if(assoc.last(idx))
	  $display(idx,",",assoc[idx]);

        $display("previous value"); // display previous value
        if(assoc.prev(idx))
	  $display(idx,",",assoc[idx]);
      end
    endmodule 
