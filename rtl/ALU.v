module alu	(input [3:0] opcode,
			input [31:0] A, B,
			output carry, zero,
			output reg [31:0] Y
			);

reg adderCarryOut;

localparam	ADD = 4'b0000, SUB = 4'b0001, SLL = 4'b0010,
			XOR = 4'b0011, SRL = 4'b0100, SRA = 4'b0101,
			OR = 4'b0110, AND = 4'b0111, SLTU = 4'b1000,
			BNE = 4'b1001, BEQ = 4'b1010, LUI = 4'b1011;

always @ (*) begin
	case(opcode)
		ADD: {adderCarryOut, Y} = A + B;
		SUB: Y = A - B;
		SLL: Y = A << B;
		XOR: Y = A ^ B;
		SRL: Y = A >> B;
		SRA: Y = {A[31], 31'd0} | A>>B;
		OR:  Y = A | B;
		AND: Y = A & B;
		SLTU: Y = (A < B) ? 1'b1 : 1'b0;
		BNE: Y = (A != B) ? 1'b0 : 1'b1;
		BEQ: Y = (A == B) ? 1'b1 : 1'b0;
		LUI: Y = {B, {12{1'b0}}};
		default: Y = 4'd0;
	endcase
end

assign carry = (opcode == ADD && adderCarryOut == 1) ? 1'b1 :
			   (opcode == BEQ && Y == 1) ? 1'b1 :
			   1'b0;

assign zero = (Y == 32'd0) ? 1'b1 : 1'b0;

endmodule