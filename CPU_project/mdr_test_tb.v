module mdr_test_tb;
	reg [31:0] busMuxOut;
	reg [31:0] mDataIn;
	reg read;
	reg clock; 
	reg clear;
	reg enable;
	wire [31:0] q;
	
initial
	begin
	
	enable = 1;
	clear = 0;
	read = 0;
	
	busMuxOut = 32'b1; // d is set here
	mDataIn = 32'b100;
	
	#10
	
	clock = 1;
	
	#10
	
	clock = 0;
	read = 1; // d is set
	
	#10
	
	clock = 1;
	
	end
	
	
	mdr_test TEST(busMuxOut, mDataIn, read, clock, clear, enable, q);
endmodule