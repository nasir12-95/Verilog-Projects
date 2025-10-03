`timescale 1ns/1ns

module ALU_TB;
    // 4-bit signals
    reg  [3:0] A4, B4;
    wire [3:0] Out4;
    wire Carry4;

    // 8-bit signals
    reg  [7:0] A8, B8;
    wire [7:0] Out8;
    wire Carry8;

    reg [2:0] sel;

    // Instantiate 4-bit ALU
    ALU #(4) alu4 (.A(A4), .B(B4), .sel(sel), .out(Out4), .CarryOut(Carry4));

    // Instantiate 8-bit ALU
    ALU #(8) alu8 (.A(A8), .B(B8), .sel(sel), .out(Out8), .CarryOut(Carry8));

    initial begin
        $monitor("Sel=%b | A4=%b B4=%b Out4=%b Carry4=%b | A8=%b B8=%b Out8=%b Carry8=%b",
                 sel, A4, B4, Out4, Carry4, A8, B8, Out8, Carry8);

        // Test values for 4-bit
        A4 = 4'b0101; B4 = 4'b0011;

        // Test values for 8-bit
        A8 = 8'b00000101; B8 = 8'b00000011;

        sel = 3'b000; #10; // Addition
        sel = 3'b001; #10; // Subtraction
        sel = 3'b010; #10; // AND
        sel = 3'b011; #10; // OR
        sel = 3'b100; #10; // XOR
        sel = 3'b101; #10; // Shift Left
        sel = 3'b110; #10; // Shift Right
        sel = 3'b111; #10; // Pass-through A

        // Test values for 4-bit
        A4 = 4'b1111; B4 = 4'b1011;

        // Test values for 8-bit
        A8 = 8'b11010101; B8 = 8'b10010011;

        sel = 3'b000; #10; // Addition
        sel = 3'b001; #10; // Subtraction
        sel = 3'b010; #10; // AND
        sel = 3'b011; #10; // OR
        sel = 3'b100; #10; // XOR
        sel = 3'b101; #10; // Shift Left
        sel = 3'b110; #10; // Shift Right
        sel = 3'b111; #10; // Pass-through A

        $finish;
    end
endmodule

