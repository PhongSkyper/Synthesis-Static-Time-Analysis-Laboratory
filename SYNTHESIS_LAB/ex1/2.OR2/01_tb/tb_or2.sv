`timescale 1ns/1ps

`ifdef GATE_LEVEL
	`include "../OR2/03_outputs/or2_netlist.sv"
	`include "/home/yellow/ee3201_15/LAB2/gpdk045_verilog/slow_vdd1v2_basicCells_hvt.v"
`else
	`include "../OR2/00_src/or2.sv"
`endif


module tb_or2;
 logic A;
 logic B;
 logic Y;
  or2 DUT (.A(A), .B(B), .Y(Y));

`ifdef ANNOTATION  
 initial begin
	$sdf_annotate("../OR2/03_outputs/delay.sdf",DUT, ,"annotate.log", "MAXIMUM");
end
`endif

initial begin   
   $dumpfile("tb_or2.vcd");
   $dumpvars(0, tb_or2);
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