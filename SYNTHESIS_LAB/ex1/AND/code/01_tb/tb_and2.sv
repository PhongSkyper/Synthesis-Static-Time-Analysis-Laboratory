`timescale 1ns/1ps
`ifdef GATE_LEVEL
`include "../AND/03_outputs/and2_netlist.sv"
`include "/home/yellow/ee3201_15/LAB2/gpdk045_verilog/slow_vdd1v2_basicCells_lvt.v"
`else
`include "../AND/00_src/and2.sv"
`endif
module tb_and2 ;
logic A,B;
logic Y;
and2 DUT (.A(A),.B(B),.Y(Y));
`ifdef ANNOTATION
initial begin
$sdf_annotate("../AND/03_outputs/delay.sdf",DUT,,"annotate.log","MAXIMUM");
end
`endif
initial begin
$dumpfile("and2_wave.vcd");
$dumpvars(0,tb_and2);
end
initial begin
#0;   A=0;B=0;
#0.1; A=1;B=0;
#0.1; A=1;B=0;
#0.1; A=1;B=1;
#0.1;
$finish;
end
endmodule
