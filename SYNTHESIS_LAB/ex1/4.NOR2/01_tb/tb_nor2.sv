`timescale 1ns/1ps

`ifdef GATE_LEVEL
	`include "../NOR2/03_outputs/nor2_netlist.sv"
	`include "/home/yellow/ee3201_15/LAB2/gpdk045_verilog/fast_vdd1v0_basicCells_lvt.v"
`else
	`include "../NOR2/00_src/nor2.sv"
`endif


module tb_nor2;
 logic A;
 logic B;
 logic Y;
  nor2 DUT (.A(A), .B(B), .Y(Y));

`ifdef ANNOTATION  
 initial begin
	$sdf_annotate("../NOR2/03_outputs/delay.sdf",DUT, ,"annotate.log", "MAXIMUM");
end
`endif

initial begin   
   $dumpfile("nor2.vcd");
   $dumpvars(0, tb_nor2);
end

initial begin
#0;   A=0; B=0;	
#0.1; A=1; B=0;
#0.1; A=0; B=1;
#0.1; A=1; B=1;
#0.1;		
 $finish;
 end
endmodule