
module BOOTH (
  input  clk,
  input  rst,

  input  ldA, ldQ, ldM,
  input  clrA, clrQ, clrff,
  input  sftA, sftQ,
  input  addsub,
  input  decr, ldCnt,

  input  [15:0] data_in,

  output qm1,
  output eqz,
  output [15:0] A,
  output [15:0] Q
);
  wire A0;

  assign A0 = A[0]; // Capturing A0 before the shift

  wire [15:0] M;
  wire [15:0] Z;
  wire [4:0] count;

  assign eqz = (count == 0);

  shiftReg AR (
    .data_out(A),
    .data_in(Z),
    .s_in(A[15]),
    .clk(clk),
    .ld(ldA),
    .clr(clrA),
    .sft(sftA)
  );

  shiftReg QR (
    .data_out(Q),
    .data_in(data_in),
    .s_in(A0),
    .clk(clk),
    .ld(ldQ),
    .clr(clrQ),
    .sft(sftQ)
  );

  DFF_en QM1 (
  .d(Q[0]),
  .q(qm1),
  .clk(clk),
  .clr(clrff),
  .en(sftQ)   
);

  PIPO MR (
    .data_out(M),
    .data_in(data_in),
    .clk(clk),
    .load(ldM)
  );

  ALU AS (
    .out(Z),
    .in1(A),
    .in2(M),
    .addsub(addsub)
  );

  Counter CN (
    .data_out(count),
    .decr(decr),
    .ldCnt(ldCnt),
    .rst(rst),
    .clk(clk)
  );

endmodule
