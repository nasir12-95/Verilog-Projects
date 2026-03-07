module uart_tx #(
    parameter CLKS_PER_BIT = 434
)(
    input clk,
    input reset,
    input start,
    input [7:0] data_in,
    output reg tx,
    output reg busy,
    output reg tx_done
);

// FSM states
localparam IDLE  = 2'b00;
localparam START = 2'b01;
localparam DATA  = 2'b10;
localparam STOP  = 2'b11;

reg [1:0] state;
reg [15:0] clk_count;
reg [2:0] bit_index;
reg [7:0] shift_reg;

// Edge detector
reg start_prev;
wire start_pulse;

assign start_pulse = start & ~start_prev;

always @(posedge clk or posedge reset) begin
    if (reset)
        start_prev <= 0;
    else
        start_prev <= start;
end

//------------------------------------------------
// UART FSM
//------------------------------------------------
always @(posedge clk or posedge reset) begin

    if (reset) begin
        state <= IDLE;
        tx <= 1'b1;
        busy <= 0;
        tx_done <= 0;
        clk_count <= 0;
        bit_index <= 0;
        shift_reg <= 0;
    end

    else begin

        // default
        tx_done <= 0;

        case(state)

        //------------------------------------------------
        IDLE: begin
            tx <= 1'b1;
            busy <= 0;
            clk_count <= 0;
            bit_index <= 0;

            if (start_pulse) begin
                busy <= 1;
                shift_reg <= data_in;
                state <= START;
            end
        end

        //------------------------------------------------
        START: begin
            tx <= 0;

            if (clk_count < CLKS_PER_BIT-1)
                clk_count <= clk_count + 1;
            else begin
                clk_count <= 0;
                state <= DATA;
            end
        end

        //------------------------------------------------
        DATA: begin
            tx <= shift_reg[0];

            if (clk_count < CLKS_PER_BIT-1)
                clk_count <= clk_count + 1;

            else begin
                clk_count <= 0;
                shift_reg <= shift_reg >> 1;

                if (bit_index < 7)
                    bit_index <= bit_index + 1;
                else begin
                    bit_index <= 0;
                    state <= STOP;
                end
            end
        end

        //------------------------------------------------
        STOP: begin
            tx <= 1'b1;

            if (clk_count < CLKS_PER_BIT-1)
                clk_count <= clk_count + 1;

            else begin
                clk_count <= 0;
                state <= IDLE;
                tx_done <= 1;   // transmission finished
            end
        end

        default: state <= IDLE;

        endcase

    end
end

endmodule
