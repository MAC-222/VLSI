class MyClass;
  rand bit [7:0] addr;
  constraint c1 { addr == 50; }
  constraint c2 { addr == 100; }
function void resolve_constraints(bit some_condition);
    if (some_condition) begin
      c1.constraint_mode(0);
      $display("Constraint c1 disabled");
    end else begin
      c2.constraint_mode(0);
      $display("Constraint c2 disabled");
    end
  endfunction
endclass
module test;

  initial begin
    MyClass obj = new();
    bit some_condition = 1'b1;
    obj.resolve_constraints(some_condition);
if (obj.randomize()) begin
      $display("Randomized addr: %0d", obj.addr);
    end else begin
      $display("Randomization failed!");
    end
  end

endmodule
