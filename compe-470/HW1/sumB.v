`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:36:52 09/28/2016 
// Design Name: 
// Module Name:    sumB 
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
module sumB(input[3:0] a, input[3:0] b, input c0, output reg[3:0] sumB, output reg c4);
							
	reg[3:0] carry; 

	always@*
	begin
		carry[0] = a[0] & b[0] | c0 &(a[0]^b[0]);
		sumB[0] = c0^a[0]^b[0];
		
		carry[1] = a[1] & b[1] | carry[0] & (a[1] ^ b[1]);
		sumB[1] = carry[0] ^ a[1]^b[1];
		
		carry[2] = a[2] & b[2] | carry[1] & (a[2] ^ b[2]);
		sumB[2] = carry[1] ^ a[2] ^ b[2];
		
		c4 = a[3] & b[3] | carry[2] & (a[3] ^ b[3]);
		sumB[3] = carry[2] ^ a[3] ^ b[3];
	end
		
endmodule
