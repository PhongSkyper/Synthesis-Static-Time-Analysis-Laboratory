`timescale 1ns/1ps

`ifdef GATE_LEVEL
	`include "../FULL_ADDER/03_outputs/fa_netlist.sv"
	`include "/home/yellow/ee3201_15/LAB2/gpdk045_verilog/fast_vdd1v2_basicCells_lvt.v"
`else
	`include "../FULL_ADDER/00_src/full_adder.sv"
`endif



module tb_fa;
  logic A, B, Cin;
  logic Sum, Cout;

  full_adder DUT (.A(A), .B(B), .Cin(Cin), .Sum(Sum), .Cout(Cout));

`ifdef ANNOTATION

  initial begin

    $sdf_annotate("../FULL_ADDER/03_outputs/delay.sdf",DUT,,"annotate_full_adder.log","MAXIMUM");

  end

`endif

  initial begin
    $dumpfile("fa_wave.vcd");
    $dumpvars(0, tb_fa);

    A=0; B=0; Cin=0; #0.1;
#0.1;
    A=0; B=0; Cin=1; #0.1;
#0.1;
    A=0; B=1; Cin=0; #0.1;
#0.1;
    A=0; B=1; Cin=1; #0.1;
#0.1;
    A=1; B=0; Cin=0; #0.1;
#0.1;
    A=1; B=0; Cin=1; #0.1;
#0.1;
    A=1; B=1; Cin=0; #0.1;
#0.1;
    A=1; B=1; Cin=1; #0.1;
    $finish;
  end
endmodule
