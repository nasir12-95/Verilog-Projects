
module EQZ(eqz, data);
    input  [15:0] data;
    output eqz;

// Checks whether data=0 or not and assigns True when data=0
    assign eqz = (data == 0);
endmodule
