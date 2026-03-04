`timescale 1ns/1ps
`ifdef GATE_LEVEL
            `include "/home/yellow/ee3201_2/Desktop/ws3_lab2/EX2/03_outputs/alu_netlist.sv"
            `include "/home/yellow/ee3201_2/Desktop/ws3_lab2/gpdk045_verilog/slow_vdd1v2_basicCells_hvt.v"
`else
            `include "/home/yellow/ee3201_2/Desktop/ws3_lab2/EX2/00_src/alu.sv"
`endif

module testbench;
logic [1:0] A, B;
logic [1:0]S;
logic [1:0]Y;

alu DUT (.A(A),.B(B),.S(S),.Y(Y));
`ifdef ANNOTATION
initial begin 
    $sdf_annotate("/home/yellow/ee3201_2/Desktop/lab3/EX2/03_outputs/delay_alu.sdf", DUT,,"annotate.log","MAXIMUM");
end
`endif

initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0,testbench.DUT);
    //$shm_open("waveform.shm");
    //$shm_probe(testbench,"AS");
end

initial begin
    #0; A=2'b01; B=2'b00; S=2'b00;
    #200; A=2'b11; B=2'b01; S=2'b00;
    #200; A=2'b11; B=2'b00; S=2'b01;
    #200; A=2'b11; B=2'b11; S=2'b01;
    #200; A=2'b11; B=2'b01; S=2'b10;
    #200; A=2'b01; B=2'b10; S=2'b10;
    #200; A=2'b11; B=2'b01; S=2'b11;
    #200; A=2'b01; B=2'b10; S=2'b11;
    #200; $finish;


end
endmodule




