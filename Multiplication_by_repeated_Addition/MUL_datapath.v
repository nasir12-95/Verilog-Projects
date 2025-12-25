
module MUL_datapath(
    eqz,
    Ain, Bin,
    selA, selB,
    ldA, ldB, decB, ldP, clrP,
    clk
);
    input  [15:0] Ain, Bin;
    input  selA, selB;
    input  ldA, ldB, decB, ldP, clrP, clk;
    output eqz;

    wire [15:0] Bus;
    wire [15:0] X, Y, Z, Bout;

    // BUS MULTIPLEXER
    // Assigns Ain to the Bus when selA is active
    // or assigns Bin to the Bus when selB is active
    // By default, assign 16'd0 to the Bus
    assign Bus = selA ? Ain :
                 selB ? Bin :
                 16'd0;

    PIPO1 A (X, ldA, Bus, clk);
    CNTR  B (Bout, Bus, ldB, decB, clk);
    ADD   AD (Z, X, Y);
    PIPO2 P (Y, Z, ldP, clrP, clk);
    EQZ   CMP (eqz, Bout);
endmodule

