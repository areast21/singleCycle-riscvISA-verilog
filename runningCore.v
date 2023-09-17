module riscVCore (input clk, rst);

wire        mClk;       //Output of clocking Wizard IP at 80 MHz
wire        locked;     //Used to assure IP based clock is ready
wire [31:0]	pc;		       //Instrn. at hand
wire [31:0]	pcNext;		   //Instrn. address to be latched next
wire [31:0] pcPlus;		   //Current Instrn. address + 4
wire [31:0] pcImmediate;   //Sign extended immediate for either Branch or Jump


wire 		aluSrc;		//ALU Src MUX Flag 0 - Regular (Read Data 2), 1 - Sign extended immediate value
wire		branch;		//Branch Flag for SB-Type and UJ-Type instructions
wire		jump;		//Jump Flag for JAL (absolute jump)
wire		memRead;	//Assert loading into Data Memory
wire		memToReg;	//Data Memory To Register MUX 0 - ALU output, 1 - Load from Memory to Register
wire		memWrite;	//Assert storing into Data Memory 
wire		regWrite;	//Writeback into the Register
wire [1:0]	aluOp;		//Determines ALU operation category

wire [31:0]	readData1;	//Register Read Data 1
wire [31:0]	readData2;	//Register Read Data 2
wire [5:0]	readReg1;	//Read Register 1
wire [5:0]	readReg2;	//Read Register 2
wire [5:0]	writeReg;	//Write Register
wire [31:0]	writeData;	//Write Data

wire[31:0]	immGenOut;	//Holds the sign extended version of either the 12-bit, 13-bit or 21-bit immediate

wire [3:0]	aluControl;	//Determines which ALU operation takes place

wire [31:0] dataMemOut;

wire 		Z;          //ALU Zero Flag
wire [31:0]	Y;          //ALU Result
wire [31:0]	A;          //ALU Operand 1
wire [31:0]	B;          //ALU Operand 2

wire        yesBranch;  //Branch condition is met

// ==================== programCounter.v ====================


// ==================== instructionMem.v ====================


// ==================== mainController.v ====================
controller MC0  (
                .instruction(instruction),
                .aluSrc(aluSrc),
                .branch(branch),
                .memRd(memRead),
                .memToreg(memToReg),
                .memWrt(memWrite),
                .regWrt(regWrite),
                .aluOp(aluOp)
                );

// ==================== aluController.v ====================
aluController AC0	(
                    .funct7(instruction[30]),
                    .aluOp(aluOp),
                    .funct3(instruction[14:12]),
                    .aluControl(aluControl)
                    );

// ==================== registers.v ====================
assign writeData = (memToReg == 2'b00) ? Y : ((memToReg == 2'b01) ? dataMemOut : (PC+4)); 

regsiters RF0   (
                .clk(mClk), 
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
            .zero(Z),
            .Y(Y)
            );

// ==================== BRAM MODULE ====================
blk_mem_gen_0 DMEM (
  .clka(mClk),
  .ena(memRead),
  .wea(memWrite),
  .addra(Y),
  .dina(readData2),
  .douta(dataMemOut)
);

// ==================== CLOCK MODULE ====================
clk_wiz_0 SYSCLK
   (
    .clk_out1(mClk),
    .reset(rst),
    .locked(locked),
    .clk_in1(clk)
    );
    
endmodule
