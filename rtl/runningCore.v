`timescale 1ns/1ps

module riscVCore	(input clk, rst_);

//wire			mClk;			    //Output of clocking Wizard IP at 80 MHz
//wire			locked;             //Used to assure IP based clock is ready
reg 	[31:0]	pc;				    //Instrn. address at hand
wire 	[31:0]	pcNext;			    //Instrn. address to be latched next

wire	[31:0]	instruction;	    //Data o/p received from instruction memory

wire			aluSrc;			    //MUX 0 - Regular (Read Data 2), 1 - Sign extended immediate value
wire			branch;			    //Branch Flag for SB-Type
wire			jump;			    //Jump Flag for JAL (UJ-Type)
wire			memRead;		    //Loading into Data Memory
wire			memWrite;		    //Storing into Data Memory 
wire			regWrite;		    //Writeback into Register File
wire    [1:0]   memToReg;           //MUX 0 - ALU output, 1 - Memory to Register, 2 PC + 4 Value
wire	[1:0]	aluOp;			    //Determines ALU operation category

wire	[31:0]	readData1;	        //Register 1 Read Data
wire	[31:0]	readData2;	        //Register 2 Read Data
wire	[4:0]	readReg1;		    //Read Register 1
wire	[4:0]	readReg2;		    //Read Register 2
wire	[4:0]	writeReg;		    //Write Register
wire	[31:0]	writeData;	        //Write Data

wire	[31:0]	immGenOut;	        //Sign extended o/p of immediate

wire	[3:0]	aluControl;	        //ALU operation taking place now

wire	[31:0]	dataMemOut;

wire			C;				    //ALU Carry Flag
wire 	        Z;                  //ALU Zero Flag
wire	[31:0]	Y;                  //ALU Result
wire	[31:0]	A;                  //ALU Operand 1
wire	[31:0]	B;                  //ALU Operand 2

wire            branchCondition;    //Use zero or Carry for BNE or BEQ 
wire			yesBranch;		    //Branch condition is met
wire            assertBranchOrJump; //Check whether jump or branch condition is met
wire            addrSel;            //PC+4 or jump/branch address

// ==================== programCounter.v ====================
assign branchCondition =    (aluControl === 4'b1001 && Z == 1) ? 1 :
                            (aluControl === 4'b1010 && C == 1) ? 1 : 0;
assign yesBranch = branch & branchCondition;
assign assertBranchOrJump = yesBranch || jump;
assign addrSel = (assertBranchOrJump) ? 1 : 0;
assign pcNext = addrSel ? (pc + immGenOut) : (pc + 4);

always @ (posedge clk)
    pc <= !rst_ ? 0 : pcNext;

// ==================== instrnMemory.v ====================
iMem IMEM0	(
			.addr(pc),
			.instrn(instruction)
			);

// ==================== mainController.v ====================
controller MC0  (
                .instruction(instruction),
                .aluSrc(aluSrc),
                .jump(jump),
                .branch(branch),
                .memRd(memRead),
                .memToReg(memToReg),
                .memWrt(memWrite),
                .regWrt(regWrite),
                .aluOp(aluOp)
                );

// ==================== aluController.v ====================
aluController AC0	(
					.funct7(instruction[30]),
                    .aluOp(aluOp),
                    .funct3(instruction[14:12]),
                    .instrnOpcode(instruction[6:0]),
                    .aluControl(aluControl)
                    );

// ==================== registers.v ====================
assign writeData =  (memToReg == 2'b00) ? Y :
                    ((memToReg == 2'b01) ? dataMemOut : (pc + 4));

assign readReg1 = instruction[19:15];
assign readReg2 = instruction[24:20];
assign writeReg = instruction[11:7];

registers RF0   (
				.clk(clk),
                .rst_(rst_),
                .wrtEn(regWrite),
                .rdReg1(readReg1),
                .rdReg2(readReg2),
                .wrtReg(writeReg),
                .wrtData(writeData), 
                .rdData1(readData1),
                .rdData2(readData2)
                );

// ==================== immediateGenerator.v ====================
immediateGen IG0	(
					.instruction(instruction),
                    .immediate(immGenOut)
                    );

// ==================== ALU.v ====================
assign A = readData1;
assign B = aluSrc ? immGenOut : readData2;

alu ALU0    (
			.opcode(aluControl),
            .A(A),
            .B(B),
            .carry(C),
            .zero(Z),
            .Y(Y)
            );

// ==================== dataMemory.v ====================
dMem DMEM0	(
			.clk(clk),
			.rst_(rst_),
			.memRd(memRead),
			.memWrt(memWrite),
			.addr(Y),
			.dataIn(readData2),
			.dataOut(dataMemOut)
			);

/*// Follow bellow instantiation for FPGA implementation. These IPs were instantiated through Xillinx Vivado

// // ==================== BRAM MODULE ====================
// blk_mem_gen_0 DMEM   (
                        .clka(mClk),
//                      .ena(memRead),
//                      .wea(memWrite),
//                      .addra(Y),
//                      .dina(readData2),
//                      .douta(dataMemOut)
//                      );

// // ==================== CLOCK MODULE ====================
// clk_wiz_0 SYSCLK (
                    .clk_out1(mClk),
//                  .reset(rst),
//                  .locked(locked),
//                  .clk_in1(clk)
//                  );*/
    
endmodule