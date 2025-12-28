
module ALU (
  output reg [15:0] out,
  input  [15:0] in1, in2,
  input  addsub
);
  always @(*) begin
    if (addsub)
      out = in1 + in2; // Addition when addsub=1
    else
      out = in1 - in2; // Else performs subtraction
  end
endmodule
