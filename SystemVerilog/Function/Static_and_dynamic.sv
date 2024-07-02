// Code your design here
module function_example;
  
  function static increment_static();
    static int count_A;
    automatic int count_B;
    int count_C;
    
    count_A++;
    count_B++;
    count_C++;
    $display("Static: count_A = %0d, count_B = %0d, count_C = %0d", count_A, count_B, count_C);
  endfunction
  
  function automatic increment_automatic();
    static int count_A;
    automatic int count_B;
    int count_C;
    
    count_A++;
    count_B++;
    count_C++;
    $display("Automatic: count_A = %0d, count_B = %0d, count_C = %0d", count_A, count_B, count_C);
  endfunction
  
  function increment();
    static int count_A;
    automatic int count_B;
    int count_C;
    
    count_A++;
    count_B++;
    count_C++;
    $display("Normal: count_A = %0d, count_B = %0d, count_C = %0d", count_A, count_B, count_C);
  endfunction
  
  initial begin
    $display("Calling static functions");
    increment_static();
    increment_static();
    increment_static();
    $display("\nCalling automatic functions");
    increment_automatic();
    increment_automatic();
    increment_automatic();
    $display("\nCalling normal functions: without static/automatic keyword");
    increment();
    increment();
    increment();

    //Accessing variables using function
    // count_A
    $display("\nStatic: count_A = %0d", increment_static.count_A);
    $display("Automatic: count_A = %0d", increment_automatic.count_A);
    $display("Normal: count_A = %0d", increment.count_A);
    
    // count_B: Hierarchical reference to automatic variable is not legal.
    /*
    $display("\nStatic: count_B = %0d", increment_static.count_B);
    $display("Automatic: count_B = %0d", increment_automatic.count_B);
    $display("Normal: count_B = %0d", increment.count_B);
    */
    
    // count_C
    $display("\nStatic: count_C = %0d", increment_static.count_C);
    //$display("Automatic: count_C = %0d", increment_automatic.count_C); // illegal reference to automatic variable
    $display("Normal: count_C = %0d", increment.count_C);
  end
endmodule
