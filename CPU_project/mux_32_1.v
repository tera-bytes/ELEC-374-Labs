module mux_32_1 (
	input wire [31:0] busMuxIn_0R, busMuxIn_1R, busMuxIn_2R, busMuxIn_3R, 
		busMuxIn_4R, busMuxIn_5R, busMuxIn_6R, busMuxIn_7R, busMuxIn_8R, 
		busMuxIn_9R, busMuxIn_10R, busMuxIn_11R, busMuxIn_12R, busMuxIn_13R, 
		busMuxIn_14R, busMuxIn_15R, busMuxIn_HI, busMuxIn_LO, busMuxIn_ZHI, 
		busMuxIn_ZLO, busMuxIn_PC, busMuxIn_MDR, busMuxIn_InPort, busMuxIn_C,
	
	input wire [4:0] read,
	output reg [31:0] out
);

always@(*)begin
	case(read)
		0	:	out = busMuxIn_0R;
		1	:	out = busMuxIn_1R;
		2	:	out = busMuxIn_2R;
		3	:	out = busMuxIn_3R;
		4	:	out = busMuxIn_4R;
		5	:	out = busMuxIn_5R;
		6	:	out = busMuxIn_0R;
		7	:	out = busMuxIn_1R;
		8	:	out = busMuxIn_2R;
		9	:	out = busMuxIn_3R;
		10	:	out = busMuxIn_4R;
		11	:	out = busMuxIn_5R;
		12	:	out = busMuxIn_0R;
		13	:	out = busMuxIn_1R;
		14	:	out = busMuxIn_2R;
		15	:	out = busMuxIn_3R;
		16	:	out = busMuxIn_4R;
		17	:	out = busMuxIn_5R;
		18	:	out = busMuxIn_0R;
		19	:	out = busMuxIn_1R;
		20	:	out = busMuxIn_2R;
		21	:	out = busMuxIn_3R;
		22	:	out = busMuxIn_4R;
		23	:	out = busMuxIn_5R;
		default	: out = 32'bx;
		endcase
	end
endmodule
