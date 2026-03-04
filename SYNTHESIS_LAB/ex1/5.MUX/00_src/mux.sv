module mux (
    input  logic A,   
    input  logic B,   
    input  logic S,   // select
    output logic Y
);
    assign Y = (S == 1'b0) ? A : B;
endmodule