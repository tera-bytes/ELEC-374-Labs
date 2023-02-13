module mdr_test(
	input wire [31:0] busMuxOut,
	input wire [31:0] mDataIn,
	
	input wire read,
	
	input wire clock, 
	input wire clear,
	input wire enable,
	
	output wire [31:0] q
	
);

	wire [31:0] muxOut;
	register mdr_reg(clock, clear, enable, muxOut, q);
	mux_MDR mux(busMuxOut, mDataIn, read, muxOut);

endmodule