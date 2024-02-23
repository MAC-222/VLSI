module grey_to_binary
  (input g1,g2,g3,g4,
   output b1,b2,b3,b4);
  buf(b4,g4);
  xor(b3,g3,g4);
  xor(b2,b3,g2);
  xor(b1,b2,g1);
endmodule
  
