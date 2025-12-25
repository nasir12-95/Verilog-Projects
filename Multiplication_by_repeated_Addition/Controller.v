
module Controller(
    ldA, ldB, ldP, clrP, decB,
    selA, selB,
    done,
    clk, eqz, start
);
    input  clk, eqz, start;
    output reg ldA, ldB, ldP, clrP, decB;
    output reg selA, selB;
    output reg done;

    reg [2:0] state;

    localparam S0 = 3'd0,
               S1 = 3'd1,
               S2 = 3'd2,
               S3 = 3'd3,
               S4 = 3'd4;

    // STATE REGISTER
    always @(posedge clk) begin
        // When start is inactive, stays in S0 state
        if (!start)
            state <= S0;
        else begin
            // State transition
            case (state)
                S0: state <= S1;
                S1: state <= S2;
                S2: state <= S3;
                S3: state <= eqz ? S4 : S3; // When eqz = True, then goes to the S4 state else stays at the S3 state
                S4: state <= S4;
              	default: state <= S0;
            endcase
        end
    end

    // OUTPUT LOGIC
    always @(*) begin
        // Initialization
        ldA = 0; ldB = 0; ldP = 0;
        clrP = 0; decB = 0;
        selA = 0; selB = 0;
        done = 0;

        case (state)
            S1: begin
                selA = 1;
                ldA  = 1;
            end

            S2: begin
                selB = 1;
                ldB  = 1;
                clrP = 1;
            end

            S3: begin
                // Unless eqz = True, B decreases and starts the multiplication by repeated addition
                if (!eqz) begin 
                    ldP  = 1;
                    decB = 1;
                end
            end

            S4: begin
                done = 1; // Sets done=1 to indicate the end of operation
            end
          	default: begin
                ldA = 0; ldB = 0; ldP = 0;
        		clrP = 0; decB = 0;
        		selA = 0; selB = 0;
        		done = 0;
            end
        endcase
    end
endmodule
