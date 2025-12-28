
module PIPO (
  output reg [15:0] data_out,
  input  [15:0] data_in,
  input  clk, load
);
  always @(posedge clk)
    if (load)
      data_out <= data_in; // Loads data_in when load is active
endmodule

module DFF_en (
  input d, clk, clr, en,
  output reg q
);
  always @(posedge clk)
    if (clr) 
      q <= 0; // Required for initialization
    else if (en)
      q <= d;
endmodule
