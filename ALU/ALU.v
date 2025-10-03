// Paramterized ALU
// Initially 4-bit

module ALU #(parameter WIDTH = 4) (
	input [WIDTH-1:0] A, B,
	input [2:0] sel,
	output reg [WIDTH-1:0] out,
	output reg CarryOut
);

	// State encoding
	parameter ADD = 3'b000;
	parameter SUB = 3'b001;
	parameter AND = 3'b010;
	parameter OR = 3'b011;
	parameter XOR = 3'b100;
	parameter left_shift = 3'b101;
	parameter right_shift = 3'b110;
	parameter pass_through = 3'b111;

	always@(*)begin
		case (sel)
			ADD: {CarryOut, out} = A + B; // Addition Operation
			SUB: {CarryOut, out} = A -B; // Subtraction Operation
			AND: {CarryOut, out} = {1'b0, A & B}; // AND Operation
			OR: {CarryOut, out} = {1'b0, A | B}; // OR Operation
			XOR: {CarryOut, out} = {1'b0, A ^ B}; // XOR Operation
			left_shift: {CarryOut, out} = {1'b0, A << 1}; // Shift left
			right_shift: {CarryOut, out} = {1'b0, A >> 1}; // Shift Right
			pass_through: {CarryOut, out} = {1'b0, A}; // Only A is passed to the output
			default: {CarryOut, out} = {(WIDTH+1){1'b0}};
			
		
		endcase
	end


endmodule
