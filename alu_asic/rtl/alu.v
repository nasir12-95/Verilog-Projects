module  alu (
    input [7:0] A,              // First operand
    input [7:0] B,              // Second operand
    input [2:0] opcode,         // Selects the operation
    output reg [7:0] result,    // Result of operation
    output reg carry_out,       // Carry/Borrow flag
    output zero                 // Flag if result = 0
);
    
    // Internal 9-bit variable to capture the carry bit
    reg [8:0] temp_result;

    // Opcode for readability
    parameter ADD = 3'b000;
    parameter SUB = 3'b001;
    parameter AND = 3'b010;
    parameter OR = 3'b011;
    parameter XOR = 3'b100;
    parameter SHL = 3'b101;
    parameter SHR = 3'b110;

    // Pure combinational logic
    // Executes whenever there is a change in the input
    always @(*) begin
        // Default values to avoid latches
        temp_result = 9'b0;
        carry_out = 1'b0;
        result = 8'b0;

        case (opcode)
            // Addition: 9th bit of temp_result is the carry
            ADD: begin
                temp_result = A + B;
                result = temp_result[7:0];
                carry_out = temp_result[8];
            end 

            // Substraction: 9th bit indicates if a borrow occurred
            SUB: begin
                temp_result = A - B;
                result = temp_result[7:0];
                carry_out = temp_result[8];
            end

            // Logic operations (carry_out stays 0)
            AND: result = A & B;
            OR: result = A | B;
            XOR: result = A ^ B;

            // Shift Left: bit shifted out becomes carry_out
            SHL: begin
                carry_out = A[7];
                result = A << 1;
            end

            // Shift Right: bit shifted out becomes carry_out
            SHR: begin
                carry_out = A[0];
                result = A >> 1;
            end

            default: begin
                result = 8'b0;
                carry_out = 1'b0;
            end
        endcase
    end
    // Zero flag: Combinational check if all result bits are zero
    // Hardware generated: 8-bit NOR gate
    assign zero = (result == 8'b0);

endmodule
