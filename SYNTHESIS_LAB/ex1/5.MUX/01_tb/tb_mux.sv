`timescale 1ns/1ps

`ifdef GATE_LEVEL
	`include "../MUX/03_outputs/mux_netlist.sv"
	`include "/home/yellow/ee3201_15/LAB2/gpdk045_verilog/slow_vdd1v0_basicCells_lvt.v"
`else
	`include "../MUX/00_src/mux.sv"
`endif


module tb_mux;
 logic A;
 logic B;
 logic S;
 logic Y;
  mux DUT (.A(A), .B(B), .S(S), .Y(Y));

`ifdef ANNOTATION  
 initial begin
	$sdf_annotate("../MUX/03_outputs/delay.sdf",DUT, ,"annotate.log", "MAXIMUM");
end
`endif

  initial begin
    $dumpfile("mux.vcd");
    $dumpvars(0, tb_mux);

    // S = 0
    A = 0; B = 0; S = 0; #0;
    A = 0; B = 1; S = 0; #0.1;
    A = 1; B = 0; S = 0; #0.1;
    A = 1; B = 1; S = 0; #0.1;
	#0.1;

    // S = 1
    A = 0; B = 0; S = 1; #0.1;
    A = 0; B = 1; S = 1; #0.1;
    A = 1; B = 0; S = 1; #0.1;
    A = 1; B = 1; S = 1; #0.1;
	#0.1;
    $finish;
  end
endmodule
