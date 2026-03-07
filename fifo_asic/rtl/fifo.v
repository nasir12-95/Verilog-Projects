module fifo (
    input clk,
    input rst_n,
    input wr_en,
    input rd_en,
    input [7:0] wr_data,
    output reg [7:0] rd_data,
    output full,
    output empty
);

    parameter DEPTH = 16;
    parameter ADDR_WIDTH = 4;

    // Memory array
    reg [7:0] mem [0:DEPTH-1];

    // Pointers use ADDR_WIDTH + 1 for the wrap-around bit
    // This allows us to distinguish between 'full' and 'empty'
    reg [ADDR_WIDTH:0] wr_ptr;
    reg [ADDR_WIDTH:0] rd_ptr;

    // 1. Flag Logic (Purely Dependent on Registers)
    // Empty: Pointers are identical
    assign empty = (wr_ptr == rd_ptr);

    // Full: Wrap-around bit is different, but address bits are same
    assign full = (wr_ptr[ADDR_WIDTH] != rd_ptr[ADDR_WIDTH]) &&
                  (wr_ptr[ADDR_WIDTH-1:0] == rd_ptr[ADDR_WIDTH-1:0]);

    // 2. Write Logic
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            wr_ptr <= 0;
        end else if (wr_en && !full) begin
            mem[wr_ptr[ADDR_WIDTH-1:0]] <= wr_data;
            wr_ptr <= wr_ptr + 1;
        end
    end

    // 3. Read Logic
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            rd_ptr <= 0;
            rd_data <= 8'h00;
        end else if (rd_en && !empty) begin
            rd_data <= mem[rd_ptr[ADDR_WIDTH-1:0]];
            rd_ptr <= rd_ptr + 1;
        end
    end

endmodule