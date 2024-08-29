class PrimeArray;
  rand bit[4:0] arr[5];
  constraint at_least_one_prime {arr.sum(is_prime) > 0;}
  function bit is_prime(int n);
    if (n < 2) return 0;
    for (int i = 2; i <= n / 2; i++) begin
      if (n % i == 0) return 0;
    end
    return 1;
  endfunction

endclass

module test;

  initial begin
    PrimeArray obj = new();

    // Randomize the object
    if (obj.randomize()) begin
      $display("Randomized array: %p", obj.arr);
    end else begin
      $display("Randomization failed!");
    end
  end

endmodule
