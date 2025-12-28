
module Counter (
  output reg [4:0] data_out,
  input  decr, ldCnt, rst, clk
);
  always @(posedge clk) begin
    if (rst)
      data_out <= 0;
    else if (ldCnt)
      data_out <= 5'd16; // Starts from 16 as 16-bit inputs, when ldCnt=1
    else if (decr)
      data_out <= data_out - 1; // After that starts decrementing until becomes 0
  end
endmodule
