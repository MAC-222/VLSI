module array_locators;

  int q[$] = {1,7};           // initialized queue //
  int tq[$];                      //queue 
  int d[] = {9,1,8,3,4,4};        // initialized dynamic array
  int f[6] = {1,6,2,6,8,6};       // fixed array with value
  int count;
  initial begin

    $display ("1)",q.sum());           // sum of elements of queue
    $display ("2)",f.product());       // product of elements of queue
    $display ("3)",q.min());           // minimum value of queue
    $display ("4)",q.max());           // maximum value of queue
    
    tq = (f.unique());             // note that the array method returns a queue
    $display("5)",tq);
    
    tq = d.find with (item > 3);  // returns a queue elements
    $display("6)",tq);
    
    tq = d.find_index with (item > 3);  // returns a queue of indices
    $display("7)",tq);
    
    tq = d.find_index with (item > 99);  // returns an empty list
    $display("8)",tq);
     
    tq = d.find_first_index with (item == 8);  // returns the index where 8 appears first time
    $display("9)",tq);
    
    tq = d. find_last with (item == 4);  // returns the last element satisfying the given expression
    $display("10)",tq);
    tq = d. find_last_index with (item == 4);  // returns index of the last element satisfying the expression
    $display("11)",tq);
    count = d. sum with ((item > 7)*32'd1);  // total number of elements greater than 7
    $display ("12)",count);
    
    count = d. sum with ((item > 7) * item);   //check condition and then multiply
    $display("13)",count);
    
    count = d. sum with (item < 8);  // find sum of elements less than 8
    $display("14)",count);
    
    count = d. sum with ((item <8)?item:0); // find sum after doing calculation
    $display("15)",count);

  end
endmodule
