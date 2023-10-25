#!/bin/bash

iverilog -o ./iverilog_compiled_files/mainTestCompileOut ./rtl/aluController.v  ./rtl/ALU.v ./rtl/controlUnit.v  ./rtl/dataMemory.v ./rtl/immediateGenerator.v ./rtl/instrnMemory.v ./rtl/registers.v ./rtl/runningCore.v ./sim/mainTestBench.v

vvp ./iverilog_compiled_files/mainTestCompileOut 

open mainTestTrace.vcd 
