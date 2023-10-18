`timescale 1ns / 1ps

module aluController    (input funct7,
                        input [1:0] aluOp,
                        input [2:0] funct3,
                        output [3:0] aluControl
                        );
                     
localparam memoryInst = 2'b00, bitwiseOrShift = 2'b01,
           branch = 2'b10, upperImmediate = 2'b11;

/*  aluControl determines which operation takes place at the ALU
    ADD = 4'b0000    SUB = 4'b0001    SLL = 4'b0010    XOR = 4'b0011  
    SRL = 4'b0100    SRA = 4'b0101    OR = 4'b0110     AND = 4'b0111
    SLT = 4'b1000 where SLT is unsigned 
    and please note that just for I type shifts - The MSB - 1 bit has to be 1 for SRAI which would be represented by funct7
*/

always @ (*) begin
    case(aluOp)
        memoryInst: 
            aluControl = 4'b0000;
        bitwiseOrShift:begin
            if(funct7) begin
                aluControl = (funct3 == 3'b101) ? 4'b0101 : 4'b0001;
			end
			else begin
                case(funct3)
				    3'b000: aluControl = 4'b0000;
					3'b001: aluControl = 4'b0010;
					3'b010: aluControl = 4'b1000;
					3'b100: aluControl = 4'b0011;
					3'b101: aluControl = 4'b0100;
					3'b110: aluControl = 4'b0110;
					3'b111: aluControl = 4'b0111;
					default: aluControl = 4'b0000;
				endcase
			end                    
		end
        branch:begin
            if(funct3 == 000)
                aluControl = 4'b1010;
            else
                aluControl = 4'b1001;
		end
        upperImmediate:
            aluControl = 4'b1011;
    endcase
end

endmodule