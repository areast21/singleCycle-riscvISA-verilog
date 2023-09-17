`timescale 1ns / 1ps

module alu	(
			input [3:0] opcode,
			input [31:0] A, B,
			output zero,
			output reg [31:0] Y
			);

localparam ADD = 4'b0000, SUB = 4'b0001, SLL = 4'b0010, XOR = 4'b0011,
	   SRL = 4'b0100, SRA = 4'b0101, OR = 4'b0110, AND = 4'b0111,
	   SLT = 4'b0100, BNE = 4'b0101,LUI = 4'b0110;

always @ (opcode) begin
	case(opcode)
		ADD: Y = A + B;
		SUB: Y = A - B;
		SLL: Y = A << B;
		XOR: Y = A ^ B;
		SRL: Y = A >> B;
		SRA: Y = {A[31], 31'd0} | A>>B;
		OR:  Y = A | B;
		AND: Y = A & B;
		SLT: Y = (A > B) ? 1'b1 : 1'b0;
		BNE: Y = (A != B) ? 1'b0 : 1'b1; 
		LUI: Y = {B, {12{1'b0}}};
		default: Y = 4'd0;
	endcase
end

assign zero = (Y == 32'd0) ? 1'b1 : 1'b0;

endmodule