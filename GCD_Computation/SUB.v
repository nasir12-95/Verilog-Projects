
module SUB(out, in1, in2);
  input [15:0] in1, in2;
  output reg [15:0] out;
  
  // Subtracts two inputs
  always @(*)
    out = in1 - in2;
  
endmodule
