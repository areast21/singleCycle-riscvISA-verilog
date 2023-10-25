module iMem	(input [31:0] addr,
			output [31:0] instrn);

//32 bits may have been allcoated for the address location, but the totatl no. of available locations are 128.

reg [7:0] memory [127:0];

// 1 Kb instruction memory - upto 32 unique instructions, can be easily scaled depending on program requirements

initial begin
	for(integer i = 0; i < 128; i = i + 1)
		memory[i] = 32'd0;
	
	/*In risc v, memory increments as PC + 4. This indicates to us that
	it is byte addressable hence each location in the ROM is a byte wide.
	On the other hand for the data memory, since, I am implementing only
	LW and SW for mem movement operations, I designed the data memory to
	be strictly word addressable.*/

	// ... enter program here ...

	//When reset is low each reg is written with a zero;
	// //Demo Program 1: This program tests I, R, SB and UJ types.

	// //INSTR1:	ADDI X01, X01, 21
	// memory[0]  = 8'b10010011;
	// memory[1]  = 8'b10000000;
	// memory[2]  = 8'b01010000;
	// memory[3]  = 8'b00000001;

	// //INSTR2:	ADDI X02, X02, 12
	// memory[4]  = 8'b00010011;
	// memory[5]  = 8'b00000001;
	// memory[6]  = 8'b11000001;
	// memory[7]  = 8'b00000000;

	// //			ADDI X04, X04, 1D
	// memory[8]  = 8'b00010011;
	// memory[9]  = 8'b00000010;
	// memory[10] = 8'b11010010;
	// memory[11] = 8'b00000001;

	// //			OR X03, X02, X01
	// memory[12] = 8'b10110011;
	// memory[13] = 8'b01100001;
	// memory[14] = 8'b00010001;
	// memory[15] = 8'b00000000;

	// //			ADDI X03, X03, 1
	// memory[16] = 8'b10010011;
	// memory[17] = 8'b10000001;
	// memory[18] = 8'b00010001;
	// memory[19] = 8'b00000000;

	// //			BEQ X03, X04, INSTR2
	// memory[20] = 8'b11100011;
	// memory[21] = 8'b10001000;
	// memory[22] = 8'b01000001;
	// memory[23] = 8'b11111110;

	// //			JAL  X5 INSTR1
	// memory[24] = 8'b11101111;
	// memory[25] = 8'b11110010;
	// memory[26] = 8'b10011111;
	// memory[27] = 8'b11111110;

	//Demo program 2: This program tests memory movement instructions L and S types.

	//				ADDI X07, X07, 1500
	memory[0]  = 8'b10010011;
	memory[1]  = 8'b10000011;
	memory[2]  = 8'b11000011;
	memory[3]  = 8'b01011101;

	//				ADDI X06. X06, 1200
	memory[4]  = 8'b00010011;
	memory[5]  = 8'b00000011;
	memory[6]  = 8'b00000011;
	memory[7]  = 8'b01001011;

	//				SW X07, 23(X06)
	memory[8]  = 8'b10100011;
	memory[9]  = 8'b00101011;
	memory[10] = 8'b01110011;
	memory[11] = 8'b00000000;

	//				ADDI X08, X08, 1223
	memory[12] = 8'b00010011;
	memory[13] = 8'b00000100;
	memory[14] = 8'b01110100;
	memory[15] = 8'b01001100;

	//				LW X09, 0(X08)
	memory[16] = 8'b10000011;
	memory[17] = 8'b00100100;
	memory[18] = 8'b00000100;
	memory[19] = 8'b00000000;

	//				SUB X09, X09, X00
	memory[20] = 8'b10110011;
	memory[21] = 8'b10000100;
	memory[22] = 8'b00000100;
	memory[23] = 8'b00000000;

end

assign instrn = {memory[addr + 3], memory[addr + 2], memory[addr + 1], memory[addr]};

endmodule