`timescale 1ns/10ps
module TestBus_tb;

	reg R0out, R1out, R2out, R3out, 
		R4out, R5out, R6out, R7out, R8out, 
		R9out, R10out, R11out, R12out, R13out, 
		R14out, R15out, HIout, LOout, ZHIout, 
		ZLOout, PCout, MDRout, Inportout, Cout;
		
	reg busMuxIn_0R, busMuxIn_1R, busMuxIn_2R, busMuxIn_3R, 
		busMuxIn_4R, busMuxIn_5R, busMuxIn_6R, busMuxIn_7R, busMuxIn_8R, 
		busMuxIn_9R, busMuxIn_10R, busMuxIn_11R, busMuxIn_12R, busMuxIn_13R, 
		busMuxIn_14R, busMuxIn_15R, busMuxIn_HI, busMuxIn_LO, busMuxIn_ZHI, 
		busMuxIn_ZLO, busMuxIn_PC, busMuxIn_MDR, busMuxIn_InPort, busMuxIn_C;
		
	wire [31:0] Muxout;
	
	reg [23:0] setEncoderInput;
	
	
	
initial
	begin
	
	{busMuxIn_0R, busMuxIn_1R, busMuxIn_2R, busMuxIn_3R, 
		busMuxIn_4R, busMuxIn_5R, busMuxIn_6R, busMuxIn_7R, busMuxIn_8R, 
		busMuxIn_9R, busMuxIn_10R, busMuxIn_11R, busMuxIn_12R, busMuxIn_13R, 
		busMuxIn_14R, busMuxIn_15R, busMuxIn_HI, busMuxIn_LO, busMuxIn_ZHI, 
		busMuxIn_ZLO, busMuxIn_PC, busMuxIn_MDR, busMuxIn_InPort, busMuxIn_C} = 24'b101010101010101010101010;
		
	{R0out, R1out, R2out, R3out, 
		R4out, R5out, R6out, R7out, R8out, 
		R9out, R10out, R11out, R12out, R13out, 
		R14out, R15out, HIout, LOout, ZHIout, 
		ZLOout, PCout, MDRout, Inportout, Cout} = 24'b0;
		
		setEncoderInput = 24'b100000000000000000000000;
		
		while (setEncoderInput > 0)
			begin
				#1
				{R0out, R1out, R2out, R3out, 
					R4out, R5out, R6out, R7out, R8out, 
					R9out, R10out, R11out, R12out, R13out, 
					R14out, R15out, HIout, LOout, ZHIout, 
					ZLOout, PCout, MDRout, Inportout, Cout} = setEncoderInput;
			
				setEncoderInput = setEncoderInput >> 1;
		
		end
	end

TestBus TESTBUS(R0out, R1out, R2out, R3out, 
	R4out, R5out, R6out, R7out, R8out, 
	R9out, R10out, R11out, R12out, R13out, 
	R14out, R15out, HIout, LOout, ZHIout, 
	ZLOout, PCout, MDRout, Inportout, Cout,
	busMuxIn_0R, busMuxIn_1R, busMuxIn_2R, busMuxIn_3R, 
	busMuxIn_4R, busMuxIn_5R, busMuxIn_6R, busMuxIn_7R, busMuxIn_8R, 
	busMuxIn_9R, busMuxIn_10R, busMuxIn_11R, busMuxIn_12R, busMuxIn_13R,
	busMuxIn_14R, busMuxIn_15R, busMuxIn_HI, busMuxIn_LO, busMuxIn_ZHI, 
	busMuxIn_ZLO, busMuxIn_PC, busMuxIn_MDR, busMuxIn_InPort, busMuxIn_C, Y_data_out,
	Muxout
);
endmodule