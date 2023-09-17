`timescale 1ns / 1ps

module programCounter (input clk, assertBranch, jump,
                       input [31:0] signExtImm,
                       output instAddress);

// 00 - JUMP, 01 - BRANCH, 10 - PCPLUS4

wire [1:0] sel;
wire [31:0] curInstAddress, pcPlus4Out, branchorJumpOut, jumpOut;

always @ (posedge clk) begin
    sel = jump ? 2'b00 : (assertBranch ? 2'b10 : 10);
    instAddress = (sel == 2'b10) ? pcPlus4Out : branchorJumpOut;
end

endmodule
