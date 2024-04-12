module array_locators;

  int q[$] = {1,3,5,7};           // initialized queue //
  int tq[$];                      //queue 
  int d[] = {9,1,8,3,4,4};        // initialized dynamic array
  int f[6] = {1,6,2,6,8,6};       // fixed array with value
  int count;
  initial begin

    $display (q.sum());           // sum of elements of queue
    $display (q.product());       // product of elements of queue
    $display (q.min());           // minimum value of queue
    $display (q.max());           // maximum value of queue
    
    tq = (f.unique());             // note that the array method returns a queue
    $display(tq);
    
    tq = d.find with (item > 3);  // returns a queue elements
    $display(tq);
    
    tq = d.find_index with (item > 3);  // returns a queue of indices
    $display(tq);
    
    tq = d.find_index with (item > 99);  // returns an empty list
    $display(tq);
     
    tq = d.find_first_index with (item == 8);  // returns the index where 8 appears first time
    $display(tq);
    
    tq = d. find_last with (item == 4);  // returns the last element satisfying the given expression
    $display(tq);
    tq = d. find_last_index with (item == 4);  // returns index of the last element satisfying the expression
    $display(tq);
    count = d. sum with ((item > 7)*32'd1);  // total number of elements greater than 7
    $display (count);
    
    count = d. sum with ((item > 7) * item);   //check condition and then multiply
    $display(count);
    
    count = d. sum with (item < 8);  // find sum of elements less than 8
    $display(count);
    
    count = d. sum with ((item <8)?item:0); // find sum after doing calculation
    $display(count);

  end
endmodule
