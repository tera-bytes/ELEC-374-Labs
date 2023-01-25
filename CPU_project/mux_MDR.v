module mux_mdr (
	input wire [31:0] busMuxOut,
	input wire [31:0] mDataIn,
	
	input wire [2:0] read,
	output reg [31:0] out
);

always@(*)begin
		if (read==0) 
			out[31:0] <= busMuxOut[31:0];
		
		else if (read==1)
			out[31:0] <= mDataIn[31:0];
	end

endmodule