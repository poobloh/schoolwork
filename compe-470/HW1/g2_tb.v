`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:08:12 09/28/2016 
// Design Name: 
// Module Name:    g2_tb 
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
module g2_tb( );

	reg [3:0] in;
	wire [0:0] out;
	
	reg [3:0] in1;
	wire [0:0] out1;
	
	reg [3:0] in2;
	wire [0:0] out2;
	
	g2_dataflow DUTd(.x(in), .y(out));
	g2_behavioral DUTb(.x(in1), .y(out1));
	g2_gate DUTg(.x(in2), .y(out2));
	
	initial begin
		in = (4'b0000);
		in1 = (4'b0000);
		in2 = (4'b0000);
	end

endmodule
