
`timescale 1ns/1ns

module regbank_test;
    reg write, reset, clk;
    reg [4:0] sr1, sr2, dr;
    reg [31:0] wrData;
    wire [31:0] rdData1, rdData2;
    integer k;

    regbank REGBANK (
        .rdData1(rdData1),
        .rdData2(rdData2),
        .wrData(wrData),
        .sr1(sr1),
        .sr2(sr2),
        .dr(dr),
        .write(write),
        .reset(reset),
        .clk(clk)
    );

    initial clk = 0;

    always #5 clk = ~clk;


    initial begin
        $dumpfile ("regbank.vcd"); $dumpvars (0, regbank_test);

        // Applying reset synchronized with the clock edge
        reset = 1; write = 0;
        #5 reset = 0;
    end

    initial begin
        #7
        for (k = 0; k < 32; k = k+1) begin
            dr = k; wrData = 10*k; write = 1;
            #10 write = 0;
        end

        #10;
        dr     = 0;
        wrData = 32'd20;
        write  = 1;

        #20
        for(k=0; k<32; k=k+2) begin
            sr1 = k; sr2 = k+1;
            #5;
            $display("reg[%2d] = %d, reg[%2d] = %d", sr1, rdData1, sr2, rdData2);
        end

        // Explicit regfile[0] verification
        sr1 = 0;
        #1;
        if (rdData1 !== 32'd0)
            $display("ERROR: regfile[%2d] modified!", sr1);
        else
            $display("regfile[%2d] is correctly hardwired to %d.", sr1, rdData1);


        #2000 $finish;

    end

endmodule

// iverilog -o regbank.vvp your_file.v your_tb.v
// vvp regbank.vvp
// gtkwave regbank.vcd
