module unionn ();

  union {
        int x;
        byte y;
    } data;

    initial begin

        data.x = 'hABCF10CD;

        $display(" x = %0h", data.x );
        $display(" y = %0h", data.y );

        data.y = 'h56;

        $display(" x = %0h", data.x );
        $display(" y = %0h", data.y );
        $display(" data = %p", data);
        //$display(" size of unpacked union :", $bits(data));
    end
endmodule
