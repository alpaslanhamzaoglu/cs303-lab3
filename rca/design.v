`timescale 1ns / 1ps

module FullAdder(A, B, Cin, Sum, Carry);
	
	input A, B, Cin;
	output reg Sum, Carry;
	
	always @ (*)
	begin
		Carry = (A & B) | (A & Cin) | (B & Cin);
		Sum = A ^ B ^ Cin;
	end 
	
endmodule
