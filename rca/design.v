`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:28:40 12/11/2020 
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
module FullAdder(A, B, Cin, Sum, Carry);
	
	input A, B, Cin;
	output reg Sum, Carry;
	
	always @ (*)
	begin
		Carry = (A & B) | (A & Cin) | (B & Cin);
		Sum = A ^ B ^ Cin;
	end 
	
endmodule
