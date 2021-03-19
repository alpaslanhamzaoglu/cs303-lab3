`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:14:26 12/12/2020
// Design Name:   RCA20
// Module Name:   D:/Xilinx/lab3_1/rca_test.v
// Project Name:  lab3_1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: RCA20
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module rca_test;

	// Inputs
	reg [19:0] A;
	reg [19:0] B;
	reg Cin;

	// Outputs
	wire [19:0] Sum;
	wire Ovf;

	// Instantiate the Unit Under Test (UUT)
	RCA20 uut (
		.A(A), 
		.B(B), 
		.Cin(Cin), 
		.Sum(Sum), 
		.Ovf(Ovf)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		Cin = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		{A} = 50;
		{B} = 150;
		Cin = 0;
		#100;

	end
      
endmodule

