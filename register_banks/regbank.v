// 32 x 32 register file with reset facility

module regbank (
    rdData1, rdData2, wrData, sr1, sr2, dr, write, reset, clk
);
    input write, reset, clk;
    input [4:0] sr1, sr2, dr;   // source and destination registers
    input [31:0] wrData;
    output [31:0] rdData1, rdData2;

    integer k;

    reg [31:0] regfile [0:31]; // 32-bit 32 registers

    // Asynchronous READ
    // regfile[0] = 0 is forced 
    assign rdData1 = (sr1 == 5'd0) ? 32'd0 : regfile[sr1];
    assign rdData2 = (sr2 == 5'd0) ? 32'd0 : regfile[sr2];

    always @(posedge clk) begin
        if (reset) begin
            for (k = 0; k<32; k=k+1) begin
                regfile[k] <= 32'd0;
            end
        end

        else begin
            if(write && dr != 5'd0)
                regfile[dr] <= wrData;
        end
        
    end
    
endmodule
