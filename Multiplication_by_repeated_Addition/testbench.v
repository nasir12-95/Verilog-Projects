
module testbench;
    reg clk, start;
    reg [15:0] Ain, Bin;

    wire eqz, done;
    wire ldA, ldB, ldP, clrP, decB;
    wire selA, selB;

    // Instantiation of the MUL_datapath
    MUL_datapath dp (
        eqz, Ain, Bin,
        selA, selB,
        ldA, ldB, decB, ldP, clrP,
        clk
    );

    // Instantiation of the Controller
    Controller ctr (
        ldA, ldB, ldP, clrP, decB,
        selA, selB,
        done,
        clk, eqz, start
    );

    always #5 clk = ~clk;

    initial begin
        clk = 0;
        start = 0;

        Ain = 17;
        Bin = 5;

        #10 start = 1;
      	#500;
      	$finish;
    end

    initial begin
        $monitor(
            "%0t | A=%d B=%d P=%d done=%b",
            $time,
            dp.X,
            dp.Bout,
            dp.Y,
            done
        );
    end
endmodule
