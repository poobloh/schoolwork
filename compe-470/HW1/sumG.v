`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:36:37 09/28/2016 
// Design Name: 
// Module Name:    sumG 
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
module sumG(input[3:0] a, input[3:0]b, input c0, output[3:0] sumG, output c4);

	wire[3:0] carry;
	wire[3:0]ab, Xab, cinAndXab, //these are the inner wires

		//when sum = cin^a^b
		xor sum0(sumG[0], a[0], b[0], c0); //a XOR b XOR cin will be equal to sum
		and and0(ab[0], a[0], b[0]); //when a ANDs b 
		xor xor0(Xab[0], a[0], b[0]); //when a XORs b
		and and01(cinAndXab[0], Xab[0], c0);
		or carry0(carry[0], cinAndXab[0], ab[0]); 
		
		//2nd full adder bit
		xor sum1(sumG[1], a[1], b[1], carry[0]); //a XOR b XOR cin will be equal to sum
		and and1(ab[1], a[1], b[1]); //when a ANDs b 
		xor xor1(Xab[1], a[1], b[1]); //when a XORs b
		and and11(cinAndXab[1], Xab[1], carry[0]);
		or carry1(carry[1], cinAndXab[1], ab[1]); 

		//3rd full adder bit 
		xor sum2(sumG[2], a[2], b[2], carry[1]); //a XOR b XOR cin will be equal to sum
		and and2(ab[2], a[2], b[2]); //when a ANDs b 
		xor xor2(Xab[2], a[2], b[2]); //when a XORs b
		and and21(cinAndXab[2], Xab[2], carry[1]);
		or carry2(carry[2], cinAndXab[2], ab[2]); 

		//4th full adder bit
		xor sum3(sumG[3], a[3], b[3], carry[2]); //a XOR b XOR cin will be equal to sum
		and and3(ab[3], a[3], b[3]); //when a ANDs b 
		xor xor3(Xab[3], a[3], b[3]); //when a XORs b
		and and31(cinAndXab[3], Xab[3], carry[2]);
		or cout3(c4, cinAndXab[3], ab[3]); 

endmodule
