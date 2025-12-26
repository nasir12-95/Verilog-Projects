
module PIPO(data_out, data_in, load, clk);
  input [15:0] data_in;
  input load, clk;
  output reg [15:0] data_out;
  
  // At the positive edge of the clk, loads data_in to data_out
  always @(posedge clk)
    if (load) data_out <= data_in;
  
endmodule
