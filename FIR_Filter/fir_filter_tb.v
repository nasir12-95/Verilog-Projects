`timescale 1ns/1ns

module fir_filter_tb;

    // Parameters
    parameter CLK_PERIOD = 10;

    // Inputs
    reg CLK_Filter;
    reg rst_n;
    reg [7:0] filter_in;

    // Output
    wire [19:0] filter_out;

    // Instantiate the DUT (Device Under Test)
    fir_filter uut (
        .CLK_Filter(CLK_Filter),
        .rst_n(rst_n),
        .filter_in(filter_in),
        .filter_out(filter_out)
    );

    // Clock generation
    always #(CLK_PERIOD/2) CLK_Filter = ~CLK_Filter;


    initial begin
        // Initialize
        CLK_Filter = 0;
        rst_n = 0;
        filter_in = 0;

        // Reset pulse
        #20;
        rst_n = 1;

        // Input samples
        #10 filter_in = 8'd255;
        #10 filter_in = 8'd0;
        #10 filter_in = 8'd0;
        #10 filter_in = 8'd0;
        #10 filter_in = 8'd0;
        #10 filter_in = 8'd0;
        #10 filter_in = 8'd0;
        #10 filter_in = 8'd0;
        #10 filter_in = 8'd0;
        #10 filter_in = 8'd0;
        #10 filter_in = 8'd0;

        // Wait a few more cycles
        #1000;
        $finish;
    end

    // Monitor outputs
    initial begin
        $monitor("Time=%0t | filter_in=%d | filter_out=%d", $time, filter_in, filter_out);
    end

endmodule

