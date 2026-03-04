
//input ports
add mapped point A[3] A[3] -type PI PI
add mapped point A[2] A[2] -type PI PI
add mapped point A[1] A[1] -type PI PI
add mapped point A[0] A[0] -type PI PI
add mapped point B[3] B[3] -type PI PI
add mapped point B[2] B[2] -type PI PI
add mapped point B[1] B[1] -type PI PI
add mapped point B[0] B[0] -type PI PI
add mapped point S[1] S[1] -type PI PI
add mapped point S[0] S[0] -type PI PI
add mapped point clk clk -type PI PI

//output ports
add mapped point Y[3] Y[3] -type PO PO
add mapped point Y[2] Y[2] -type PO PO
add mapped point Y[1] Y[1] -type PO PO
add mapped point Y[0] Y[0] -type PO PO

//inout ports




//Sequential Pins
add mapped point sub_res[3]/q sub_res_reg[3]/Q -type DFF DFF
add mapped point add_res[3]/q add_res_reg[3]/Q -type DFF DFF
add mapped point sub_res[2]/q sub_res_reg[2]/Q -type DFF DFF
add mapped point sub_res[1]/q sub_res_reg[1]/Q -type DFF DFF
add mapped point add_res[2]/q add_res_reg[2]/Q -type DFF DFF
add mapped point add_res[1]/q add_res_reg[1]/Q -type DFF DFF
add mapped point sub_res[0]/q sub_res_reg[0]/Q -type DFF DFF
add mapped point xor_res[3]/q xor_res_reg[3]/Q -type DFF DFF
add mapped point and_res[3]/q and_res_reg[3]/Q -type DFF DFF
add mapped point add_res[0]/q add_res_reg[0]/Q -type DFF DFF
add mapped point xor_res[0]/q xor_res_reg[0]/Q -type DFF DFF
add mapped point xor_res[1]/q xor_res_reg[1]/Q -type DFF DFF
add mapped point xor_res[2]/q xor_res_reg[2]/Q -type DFF DFF
add mapped point and_res[2]/q and_res_reg[2]/Q -type DFF DFF
add mapped point and_res[0]/q and_res_reg[0]/Q -type DFF DFF
add mapped point and_res[1]/q and_res_reg[1]/Q -type DFF DFF



//Black Boxes



//Empty Modules as Blackboxes
