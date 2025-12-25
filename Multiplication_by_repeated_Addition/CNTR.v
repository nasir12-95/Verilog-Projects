
module CNTR(dout, din, ld, dec, clk);
    input  [15:0] din;
    input  ld, dec, clk;
    output reg [15:0] dout;

// If ld is active, then loads din into dout
// Else if dec is active, then starts decrementing the din
    always @(posedge clk) begin
        if (ld)
            dout <= din;
        else if (dec)
            dout <= dout - 1;
    end
endmodule
