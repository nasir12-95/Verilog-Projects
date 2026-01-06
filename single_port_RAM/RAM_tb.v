`timescale 1ns/1ns
`include "single_port_RAM.v"

module RAM_tb;
    reg [9:0] address;
    wire [7:0] data_out;
    reg [7:0] data_in;
    reg write, select, clk;
    integer k, myseed;

    single_port_RAM RAM(
        .data_out (data_out), 
        .data_in (data_in), 
        .addr(address), 
        .wr(write), 
        .cs(select),
        .clk(clk)
    );

    initial clk = 0;
    always #5 clk = ~clk;

    initial begin
        // initializations
        myseed = 35;
        write = 0;
        select = 0;
        for (k = 0; k <= 1023; k=k+1) begin
            @(posedge clk); // Writes to the address every positive edge of the clock
            address = k;
            data_in = (k + k) % 256; write = 1; select = 1; 

            // Reads every positive edge
            @(posedge clk);
            write = 0; select = 0;
        end

        repeat(20) begin
            @(posedge clk); // update address at the positive edge of the clock
            address = $random(myseed) % 1024; // Generates repeatable pseudo-random number
            write = 0; select = 1;
            #2 $display("Address: %5d | Data: %4d", address, data_out);
        end
        $finish;

    end

endmodule
