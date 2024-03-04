// Code your design here
module swap_without_third_variable;
    int x, y;
    initial begin 
        // Assign values to x and y (you can replace these with your own initialization logic)
        x = $random %16;
        y = $random %16;
        // Display initial values
        $display("Initial values: x=%0d, y=%0d", x, y);
        // Swap the values without using a third variable
        x = x + y; 
        y = x - y; 
        x = x - y;    
        // Display swapped values
        $display("Values after swap: x=%0d, y=%0d", x, y);
    end
endmodule
