
module PIPO2(dout, din, ld, clr, clk);
    input  [15:0] din;
    input  ld, clr, clk;
    output reg [15:0] dout;

// Clears dout when clr is active
// Otherwise, loads din to dout when ld is active
    always @(posedge clk) begin
        if (clr)
            dout <= 16'd0;
        else if (ld)
            dout <= din;
    end
endmodule
