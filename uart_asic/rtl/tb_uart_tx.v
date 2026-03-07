`timescale 1ns/1ps

module tb_uart_tx;

reg clk;
reg reset;
reg start;
reg [7:0] data_in;

wire tx;
wire busy;
wire tx_done;

uart_tx #(
    .CLKS_PER_BIT(8)
) uut (
    .clk(clk),
    .reset(reset),
    .start(start),
    .data_in(data_in),
    .tx(tx),
    .busy(busy),
    .tx_done(tx_done)
);

// Clock
always #5 clk = ~clk;

initial begin

    clk = 0;
    reset = 1;
    start = 0;
    data_in = 0;

    #20
    reset = 0;

    // Send byte
    #20
    data_in = 8'h53;
    start = 1;

    #100
    start = 0;

    // Wait
    #2000

    // Send another byte
    data_in = 8'hA5;
    start = 1;

    #10
    start = 0;

    #2000
    $finish;

end

initial begin
    $dumpfile("uart_tx.vcd");
    $dumpvars(0, tb_uart_tx);
end

endmodule
