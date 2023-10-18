`timescale 1ns / 1ps

module regsiters    (input clk, rst_, wrtEn,
                    input [4:0] rdReg1, rdReg2, wrtReg,
                    input [31:0] wrtData, 
                    output [31:0] rdData1, rdData2
                    );

reg [31:0] regFile [31:0];

assign rdData1 = regFile[rdReg1];
assign rdData2 = regFile[rdReg2];

always @ (posedge clk) begin
    if(!rst_) begin
        for(integer i = 0; i < 32; i = i + 1)
            regFile[i] <= 0;
    end
    else if(wrtEn)
        regFile[wrtReg] = wrtData;
end

endmodule