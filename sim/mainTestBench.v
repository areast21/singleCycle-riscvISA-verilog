module mainTestBench;

reg clk = 0, rst_;

riscVCore DUT (clk, rst_);

always
	#5 clk = ~clk;

initial begin
	
	$dumpfile("mainTestTrace.vcd");
	$dumpvars(0, mainTestBench);

	rst_ = 0; #10;
	rst_ = 1; #90;

	$finish;

end

endmodule