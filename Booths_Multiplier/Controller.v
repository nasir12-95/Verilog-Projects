
module Controller (
  input  clk, rst,
  input  start,
  input  q0, qm1, eqz,

  output reg ldA, clrA, sftA,
  output reg ldQ, clrQ, sftQ,
  output reg ldM, clrff,
  output reg addsub,
  output reg decr, ldCnt,
  output reg done
);

  reg [2:0] state, next_state;

  parameter S0=3'b000, S1=3'b001, S2=3'b010, S3=3'b011, S4=3'b100, S5=3'b101, S6=3'b110;

  // State register
  always @(posedge clk)
    if (rst) state <= S0;
    else     state <= next_state;

  // Next-state logic
  always @(*) begin
    next_state = state;
    case (state)
      S0: if (start) next_state = S1; // Starts at S1 when start = 1
      S1: next_state = S2;
      S2:
        if ({q0,qm1} == 2'b01) next_state = S3; // q0q1 = 01, does Addition operation
      else if ({q0,qm1} == 2'b10) next_state = S4; // q0q1 = 10, does Subtraction operation
        else next_state = S5; // q0q1 = 11 or 00, does shift operation
      S3, S4: next_state = S5; // From S3 or S4 goes to the S5
      S5:
        if (eqz) next_state = S6; // Goes to S6, when eqz = 1
        else if ({q0,qm1} == 2'b01) next_state = S3;
        else if ({q0,qm1} == 2'b10) next_state = S4;
        else next_state = S5;
      S6: next_state = S6;
    endcase
  end

  // Output logic
  always @(*) begin
    // Initialization
    ldA=0; clrA=0; sftA=0;
    ldQ=0; clrQ=0; sftQ=0;
    ldM=0; clrff=0;
    addsub=0;
    decr=0; ldCnt=0;
    done=0;

    case (state)
      S1: begin clrA=1; clrQ=1; clrff=1; ldCnt=1; ldM=1; end
      S2: ldQ=1;
      S3: begin ldA=1; addsub=1; end
      S4: begin ldA=1; addsub=0; end
      S5: begin sftA=1; sftQ=1; decr=1; end
      S6: done=1;
    endcase
  end

endmodule
