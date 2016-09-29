`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:09:18 09/28/2016 
// Design Name: 
// Module Name:    g3_tb 
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
module g3_tb();

	reg a,b,c,d,e,f;
	wire z;
	
	g3_structural UUT(.a(a), .b(b), .c(c), .d(d), .e(e), .f(f), .z(z));
	
	initial begin
		a = 0; b = 0; c = 0; d = 0; e = 0; f = 0;
		#50;
		a = 1; b = 1; c = 1; d = 1; e = 1; f = 1;
		#50; 
		a = 0; b = 1; c = 0; d = 1; e = 0; f = 1; 
		#50;
		a = 1; b = 0; c = 1; d = 0; e = 1; f = 0;
		#50;
		$finish;
	end

endmodule
