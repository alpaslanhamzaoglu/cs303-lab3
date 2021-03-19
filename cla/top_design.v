`timescale 1ns / 1ps

module CLA20(A, B, Cin, Sum, Ovf);

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
	
	wire [23:0] C;
	
	wire [39:0] E;

	assign E[0] = A[0] ^ D[0];
	assign E[1] = A[0] & D[0];
	assign E[2] = A[1] ^ D[1];
	assign E[3] = A[1] & D[1];
	assign E[4] = A[2] ^ D[2];
	assign E[5] = A[2] & D[2];
	assign E[6] = A[3] ^ D[3];
	assign E[7] = A[3] & D[3];
	assign E[8] = A[4] ^ D[4];
	assign E[9] = A[4] & D[4];
			
	CLA CLA0 (E[0], E[1], E[2], E[3], E[4], E[5], E[6], E[7], E[8], E[9], Cin, C[0], C[1], C[2], C[3], C[4], C[5]); 

	assign Sum[0] = (A[0] ^ D[0]) ^ C[0];
	assign Sum[1] = (A[1] ^ D[1]) ^ C[1];
	assign Sum[2] = (A[2] ^ D[2]) ^ C[2];
	assign Sum[3] = (A[3] ^ D[3]) ^ C[3];
	assign Sum[4] = (A[4] ^ D[4]) ^ C[4];
	
	assign E[10] = A[5] ^ D[5];
	assign E[11] = A[5] & D[5];
	assign E[12] = A[6] ^ D[6];
	assign E[13] = A[6] & D[6];
	assign E[14] = A[7] ^ D[7];
	assign E[15] = A[7] & D[7];
	assign E[16] = A[8] ^ D[8];
	assign E[17] = A[8] & D[8];
	assign E[18] = A[9] ^ D[9];
	assign E[19] = A[9] & D[9]; 
 	
	CLA CLA1 (.P0(E[10]), .G0(E[11]), .P1(E[12]), .G1(E[13]), .P2(E[14]), .G2(E[15]), .P3(E[16]), .G3(E[17]), .P4(E[18]), .G4(E[19]), .Cin(C[5]), .C0(C[6]), .C1(C[7]), .C2(C[8]), .C3(C[9]), .C4(C[10]), .C5(C[11])); 

	assign Sum[5] = (A[5] ^ D[5]) ^ C[6];
	assign Sum[6] = (A[6] ^ D[6]) ^ C[7];
	assign Sum[7] = (A[7] ^ D[7]) ^ C[8];
	assign Sum[8] = (A[8] ^ D[8]) ^ C[9];
	assign Sum[9] = (A[9] ^ D[9]) ^ C[10];
	
	assign E[20] = A[10] ^ D[10];
	assign E[21] = A[10] & D[10];
	assign E[22] = A[11] ^ D[11];
	assign E[23] = A[11] & D[11];
	assign E[24] = A[12] ^ D[12];
	assign E[25] = A[12] & D[12];
	assign E[26] = A[13] ^ D[13];
	assign E[27] = A[13] & D[13];
	assign E[28] = A[14] ^ D[14];
	assign E[29] = A[14] & D[14];
	
	CLA CLA2 (.P0(E[20]), .G0(E[21]), .P1(E[22]), .G1(E[23]), .P2(E[24]), .G2(E[25]), .P3(E[26]), .G3(E[27]), .P4(E[28]), .G4(E[29]), .Cin(C[11]), .C0(C[12]), .C1(C[13]), .C2(C[14]), .C3(C[15]), .C4(C[16]), .C5(C[17])); 

	assign Sum[10] = (A[10] ^ D[10]) ^ C[12];
	assign Sum[11] = (A[11] ^ D[11]) ^ C[13];
	assign Sum[12] = (A[12] ^ D[12]) ^ C[14];
	assign Sum[13] = (A[13] ^ D[13]) ^ C[15];
	assign Sum[14] = (A[14] ^ D[14]) ^ C[16];
	
	assign E[30] = A[15] ^ D[15];
	assign E[31] = A[15] & D[15];
	assign E[32] = A[16] ^ D[16];
	assign E[33] = A[16] & D[16];
	assign E[34] = A[17] ^ D[17];
	assign E[35] = A[17] & D[17];
	assign E[36] = A[18] ^ D[18];
	assign E[37] = A[18] & D[18];
	assign E[38] = A[19] ^ D[19];
	assign E[39] = A[19] & D[19];
	
	CLA CLA3 (.P0(E[30]), .G0(E[31]), .P1(E[32]), .G1(E[33]), .P2(E[34]), .G2(E[35]), .P3(E[36]), .G3(E[37]), .P4(E[38]), .G4(E[39]), .Cin(C[17]), .C0(C[18]), .C1(C[19]), .C2(C[20]), .C3(C[21]), .C4(C[22]), .C5(C[23])); 

	assign Sum[15] = (A[15] ^ D[15]) ^ C[18];
	assign Sum[16] = (A[16] ^ D[16]) ^ C[19];
	assign Sum[17] = (A[17] ^ D[17]) ^ C[20];
	assign Sum[18] = (A[18] ^ D[18]) ^ C[21];
	assign Sum[19] = (A[19] ^ D[19]) ^ C[22];
	
	assign Ovf = C[22] ^ C[23];
	
endmodule
