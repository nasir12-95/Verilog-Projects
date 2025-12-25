
module PIPO1(dout, ld, din, clk);
    input  [15:0] din;
    input  ld, clk;
    output reg [15:0] dout;

// Loads din into dout when ld is active
    always @(posedge clk)
        if (ld)
            dout <= din;
endmodule
