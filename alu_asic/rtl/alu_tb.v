module alu_tb;

    // Inputs
    reg [7:0] A;
    reg [7:0] B;
    reg [2:0] opcode;

    // Outputs
    wire [7:0] result;
    wire carry_out;
    wire zero;

    // Instantiate the Unit Under Test (UUT)
    alu UUT(
        .A(A),
        .B(B),
        .opcode(opcode),
        .result(result),
        .carry_out(carry_out),
        .zero(zero)
    );

    integer i, j; // Loop variables

    // Opcode for readability
    parameter ADD = 3'b000;
    parameter SUB = 3'b001;
    parameter AND = 3'b010;
    parameter OR = 3'b011;
    parameter XOR = 3'b100;
    parameter SHL = 3'b101;
    parameter SHR = 3'b110;

    // Task for checking results to keep the code clean
    task check_results(input [7:0] exp_res, input exp_carry, input exp_zero);
        begin
            #5 // Wait for combinational logic to settle
            if (result !== exp_res || carry_out !== exp_carry || zero !== exp_zero) begin
                $display("ERROR at %t: Op:%b A:%d B:%d | Res:%d (Exp:%d) Carry:%b (Exp:%b) Zero:%b (Exp:%b)", 
                    $time, opcode, A, B, result, exp_res, carry_out, exp_carry, zero, exp_zero);
            end 
            else begin
                $display("PASS at %t: Op:%b A:%d B:%d | Res:%d Carry:%b Zero:%b", 
                    $time, opcode, A, B, result, carry_out, zero);
            end
        end
    endtask

    initial begin
        // Initialize Inputs
        $display("Starting ALU Testbench...");
        A = 0; B = 0; opcode = 0;

        // --- Test 1: Addition with Carry ---
        A = 8'd250; B = 8'd10; opcode = ADD;
        check_results(8'd4, 1'b1, 1'b0); // 260 -> 4 with carry 1

        // --- Test 2: Subtraction ---
        A = 8'd50; B = 8'd20; opcode = SUB;
        check_results(8'd30, 1'b0, 1'b0);

        // --- Test 3: Zero Flag Check ---
        A = 8'd10; B = 8'd10; opcode = SUB;
        check_results(8'd0, 1'b0, 1'b1);

        // --- Test 4: Logic AND ---
        A = 8'b10101010; B = 8'b11110000; opcode = AND;
        check_results(8'b10100000, 1'b0, 1'b0);

        // --- Test 5: Shift Left (Carry Check) ---
        A = 8'b10000001; opcode = SHL;
        check_results(8'b00000010, 1'b1, 1'b0); // MSB shifts into carry

        // --- Test 6: Shift Right ---
        A = 8'b00000011; opcode = SHR;
        check_results(8'b00000001, 1'b1, 1'b0); // LSB shifts into carry

        $display("ALU Testing Finished.");
        $finish;
    end

endmodule
