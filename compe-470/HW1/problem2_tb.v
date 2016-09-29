`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:12:21 09/28/2016 
// Design Name: 
// Module Name:    problem2_tb
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
module problem2_tb();

	reg unsigned [3:0] a;
	reg unsigned [3:0] b;
	
	wire [3:0] x;
	wire [3:0] y;

	problem2_structural UUT (.a(a), .b(b), .x(x), .y(y));

	initial begin
		a= 4'b0000; b= 4'b0000;
		#50;
		a= 4'b1111; b= 4'b1111;
		#50;
		a= 4'b1110; b= 4'b0111;
		#50;
		a= 4'b1010; b= 4'b0101;
		#50;
		a= 4'b0011; b= 4'b1100;
		#50;
		a= 4'b1010; b= 4'b0110;
		#50;
		a= 4'b1111; b= 4'b0001;
		#50;
		a= 4'b0000; b= 4'b1111;
		#50;
		a= 4'b0000; b= 4'b0001;
		#50;
		$finish; 
	end
	
endmodule
