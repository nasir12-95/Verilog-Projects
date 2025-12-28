
module booth_tb;

  reg clk, start, rst;
  reg [15:0] data_in;
	wire [31:0] result;
  wire done, qm1, eqz;
  wire ldA, clrA, sftA, ldQ, clrQ, sftQ;
  wire ldM, clrff, addsub, decr, ldCnt;

  wire [15:0] A, Q;

  BOOTH dp (
    clk, rst,
    ldA, ldQ, ldM,
    clrA, clrQ, clrff,
    sftA, sftQ,
    addsub,
    decr, ldCnt,
    data_in,
    qm1, eqz,
    A, Q
  );

  Controller ctrl (
    clk, rst, start,
    Q[0], qm1, eqz,
    ldA, clrA, sftA,
    ldQ, clrQ, sftQ,
    ldM, clrff,
    addsub,
    decr, ldCnt,
    done
  );

  assign result = {A, Q};

	always #5 clk = ~clk;

  initial begin
    clk = 0;
    rst = 1;
    start = 0;
    data_in = 0;

    #10 rst = 0;

    // M = -10
    data_in = -16'd10;
    start = 1;
    #10 start = 0;

    // Q = 13
    #10 data_in = 16'd13;

    wait(done);

    $display("RESULT = %d", $signed(result));
    $finish;
  end

endmodule

