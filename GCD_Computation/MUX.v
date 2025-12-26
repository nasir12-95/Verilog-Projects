
module MUX(out, in0, in1, sel);
  input [15:0] in0, in1;
  input sel;
  output [15:0] out;
  
  // Assigns in1 to out when sel is high
  // else assigns in0 to out
  assign out = sel? in1 : in0;
  
endmodule
