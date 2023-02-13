`timescale 1ns/10ps
module testBusMux_tb;
	reg busMuxIn_0R, busMuxIn_1R, busMuxIn_2R, busMuxIn_3R, 
		busMuxIn_4R, busMuxIn_5R, busMuxIn_6R, busMuxIn_7R, busMuxIn_8R, 
		busMuxIn_9R, busMuxIn_10R, busMuxIn_11R, busMuxIn_12R, busMuxIn_13R, 
		busMuxIn_14R, busMuxIn_15R, busMuxIn_HI, busMuxIn_LO, busMuxIn_ZHI, 
		busMuxIn_ZLO, busMuxIn_PC, busMuxIn_MDR, busMuxIn_InPort, busMuxIn_C;
	reg [4:0] read;
	wire [31:0] out;
	
	reg [23:0] setInput;
	
initial
	begin
	{busMuxIn_0R, busMuxIn_1R, busMuxIn_2R, busMuxIn_3R, 
		busMuxIn_4R, busMuxIn_5R, busMuxIn_6R, busMuxIn_7R, busMuxIn_8R, 
		busMuxIn_9R, busMuxIn_10R, busMuxIn_11R, busMuxIn_12R, busMuxIn_13R, 
		busMuxIn_14R, busMuxIn_15R, busMuxIn_HI, busMuxIn_LO, busMuxIn_ZHI, 
		busMuxIn_ZLO, busMuxIn_PC, busMuxIn_MDR, busMuxIn_InPort, busMuxIn_C} = 24'b0;
		
		setInput = 23'b10000000000000000000000;
		
		read = 5'b0;
		
		while (setInput > 0)
			begin
				#1
				read = read + 1'b1;
				#1
				{busMuxIn_0R, busMuxIn_1R, busMuxIn_2R, busMuxIn_3R, 
					busMuxIn_4R, busMuxIn_5R, busMuxIn_6R, busMuxIn_7R, busMuxIn_8R, 
					busMuxIn_9R, busMuxIn_10R, busMuxIn_11R, busMuxIn_12R, busMuxIn_13R, 
					busMuxIn_14R, busMuxIn_15R, busMuxIn_HI, busMuxIn_LO, busMuxIn_ZHI, 
					busMuxIn_ZLO, busMuxIn_PC, busMuxIn_MDR, busMuxIn_InPort, busMuxIn_C} = setInput;
			
				setInput = setInput >> 1;
		
		end
	end

testBusMux MUX(busMuxIn_0R, busMuxIn_1R, busMuxIn_2R, busMuxIn_3R, 
		busMuxIn_4R, busMuxIn_5R, busMuxIn_6R, busMuxIn_7R, busMuxIn_8R, 
		busMuxIn_9R, busMuxIn_10R, busMuxIn_11R, busMuxIn_12R, busMuxIn_13R, 
		busMuxIn_14R, busMuxIn_15R, busMuxIn_HI, busMuxIn_LO, busMuxIn_ZHI, 
		busMuxIn_ZLO, busMuxIn_PC, busMuxIn_MDR, busMuxIn_InPort, busMuxIn_C, read, out
);
endmodule
