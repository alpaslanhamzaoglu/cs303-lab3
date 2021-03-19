`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:58:26 12/12/2020 
// Design Name: 
// Module Name:    design 
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
module CLA(P0, G0, P1, G1, P2, G2, P3, G3, P4, G4, Cin, C0, C1, C2, C3, C4, C5);

	input P0, G0, P1, G1, P2, G2, P3, G3, P4, G4, Cin;
	output reg C0, C1, C2, C3, C4, C5;
		
	always @ (*)
	begin
			C0 = Cin;
			C1 = G0 | (P0 & Cin);
			C2 = G1 | (P1 & G0) | (P1 & P0 & Cin);
			C3 = G2 | (P2 & G1) | (P2 & P1 & G0) | (P2 & P1 & P0 & Cin);
			C4 = G3 | (P3 & G2) | (P3 & P2 & G1) | (P3 & P2 & P1 & G0) | (P3 & P2 & P1 & P0 & Cin);
			C5 = G4 | (P4 & G3) | (P4 & P3 & G2) | (P4 & P3 & P2 & G1) | (P4 & P3 & P2 & P1 & G0) | (P4 & P3 & P2 & P1 & P0 & Cin);
	end

endmodule
