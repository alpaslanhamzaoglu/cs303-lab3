`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:42:52 12/12/2020 
// Design Name: 
// Module Name:    top_design 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module RCA20(A, B, Cin, Sum, Ovf);
	
	input [19:0] A, B;
	input Cin;
	
	output [19:0] Sum;
	output Ovf;
	
	wire [19:0] D;
	
	assign D[0] = B[0] ^ Cin;
	assign D[1] = B[1] ^ Cin;
	assign D[2] = B[2] ^ Cin;
	assign D[3] = B[3] ^ Cin;
	assign D[4] = B[4] ^ Cin;
	assign D[5] = B[5] ^ Cin;
	assign D[6] = B[6] ^ Cin;
	assign D[7] = B[7] ^ Cin;
	assign D[8] = B[8] ^ Cin;
	assign D[9] = B[9] ^ Cin;
	assign D[10] = B[10] ^ Cin;
	assign D[11] = B[11] ^ Cin;
	assign D[12] = B[12] ^ Cin;
	assign D[13] = B[13] ^ Cin;
	assign D[14] = B[14] ^ Cin;
	assign D[15] = B[15] ^ Cin;
	assign D[16] = B[16] ^ Cin;
	assign D[17] = B[17] ^ Cin;
	assign D[18] = B[18] ^ Cin;
	assign D[19] = B[19] ^ Cin;
	
	wire [19:0] C;
	
	FullAdder FA0 (A[0], D[0], Cin, Sum[0], C[0]);
	FullAdder FA1 (.A(A[1]), .B(D[1]), .Cin(C[0]), .Sum(Sum[1]), .Carry(C[1]));
	FullAdder FA2 (.A(A[2]), .B(D[2]), .Cin(C[1]), .Sum(Sum[2]), .Carry(C[2]));
	FullAdder FA3 (.A(A[3]), .B(D[3]), .Cin(C[2]), .Sum(Sum[3]), .Carry(C[3]));
	FullAdder FA4 (.A(A[4]), .B(D[4]), .Cin(C[3]), .Sum(Sum[4]), .Carry(C[4]));
	FullAdder FA5 (.A(A[5]), .B(D[5]), .Cin(C[4]), .Sum(Sum[5]), .Carry(C[5]));
	FullAdder FA6 (.A(A[6]), .B(D[6]), .Cin(C[5]), .Sum(Sum[6]), .Carry(C[6]));
	FullAdder FA7 (.A(A[7]), .B(D[7]), .Cin(C[6]), .Sum(Sum[7]), .Carry(C[7]));
	FullAdder FA8 (.A(A[8]), .B(D[8]), .Cin(C[7]), .Sum(Sum[8]), .Carry(C[8]));
	FullAdder FA9 (.A(A[9]), .B(D[9]), .Cin(C[8]), .Sum(Sum[9]), .Carry(C[9]));
	FullAdder FA10 (.A(A[10]), .B(D[10]), .Cin(C[9]), .Sum(Sum[10]), .Carry(C[10]));
	FullAdder FA11 (.A(A[11]), .B(D[11]), .Cin(C[10]), .Sum(Sum[11]), .Carry(C[11]));
	FullAdder FA12 (.A(A[12]), .B(D[12]), .Cin(C[11]), .Sum(Sum[12]), .Carry(C[12]));
	FullAdder FA13 (.A(A[13]), .B(D[13]), .Cin(C[12]), .Sum(Sum[13]), .Carry(C[13]));
	FullAdder FA14 (.A(A[14]), .B(D[14]), .Cin(C[13]), .Sum(Sum[14]), .Carry(C[14]));
	FullAdder FA15 (.A(A[15]), .B(D[15]), .Cin(C[14]), .Sum(Sum[15]), .Carry(C[15]));
	FullAdder FA16 (.A(A[16]), .B(D[16]), .Cin(C[15]), .Sum(Sum[16]), .Carry(C[16]));
	FullAdder FA17 (.A(A[17]), .B(D[17]), .Cin(C[16]), .Sum(Sum[17]), .Carry(C[17]));
	FullAdder FA18 (.A(A[18]), .B(D[18]), .Cin(C[17]), .Sum(Sum[18]), .Carry(C[18]));
	FullAdder FA19 (.A(A[19]), .B(D[19]), .Cin(C[18]), .Sum(Sum[19]), .Carry(C[19]));

	assign Ovf = C[19] ^ C[18];

endmodule
