`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:21:23 09/21/2016 
// Design Name: 
// Module Name:    g1_tb 
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
module g1_tb( );
	 
	 reg [3:0] in;
	 wire [1:0] out;
	 
	 reg [3:0] in1;
	 wire [1:0] out1;
	 
	 reg [3:0] in2;
	 wire [1:0] out2;
	 
	 g1_dataflow DUTd(.x(in), .y(out));
	 g1_behavioral DUTb(.x(in1), .y(out1));
	 g1_gate DUTg(.x(in2), .y(out2));
	 
	 initial begin
			in = (4'b0000);
			in1 = (4'b0000);
			in2 = (4'b0000);
			#50
			in = (4'b1011);
			in1 = (4'b1011);
			in2 = (4'b1011);
			#50
			in = (4'b0101);
			in1 = (4'b0101);
			in2 = (4'b0101);
			#50
			in = (4'b1110);
			in1 = (4'b1110);
			in2 = (4'b1110);
	 end

endmodule
