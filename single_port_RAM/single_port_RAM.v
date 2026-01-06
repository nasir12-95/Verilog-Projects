// Single port RAM with asynchronous WRITE
module single_port_RAM(
    data_out, data_in, addr, wr, cs, clk
);
    parameter word_size = 8, 
            addr_size = 10, 
            memory_size = 1024;
    input [word_size-1:0] data_in;
    input [addr_size-1:0] addr;
    input wr, cs, clk;
    output [word_size-1:0] data_out;
    reg [word_size-1:0] mem [memory_size-1:0];

    assign data_out = mem[addr]; // Asynchronous READ

    always @ (posedge clk) begin
        if (wr && cs) mem[addr] <= data_in; // Synchronous WRITE
    end

endmodule
