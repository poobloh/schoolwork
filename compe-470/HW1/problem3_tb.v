`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:32:35 09/28/2016 
// Design Name: 
// Module Name:    problem3_tb 
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
module problem3_tb();

	sumG();
	sumD();
	sumB();

	initial begin
		a = 4'b0000; b = 4'b0000;
		a = 4'b1111; b = 4'b1111;
		a = 4'b1110; b = 4'b0111;
		a = 4'b1010; b = 4'b0101;
		a = 4'b0011; b = 4'b1100;
		a = 4'b1010; b = 4'b0110;
		a = 4'b1111; b = 4'b0001;
		a = 4'b0000; b = 4'b1111;
		a = 4'b0000; b = 4'b0001;
		$finish;
	end

endmodule
