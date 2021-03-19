`timescale 1ns / 1ps


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

