`timescale 1ns/10ps
module register_tb;
	reg clock, clear, enable;
	reg [31:0] d;
	wire [31:0] q;
initial
	begin
		clock <= 0;
		clear <= 0;
		enable <= 0;
		d <= 32'b11;
		#10	enable <= 1;
				clock <= 1;
		#10	clock <= 0;
				enable <= 0;
				clear <= 1;
		#10	clock <= 1;
		#10	enable <= 1;
				clock <= 0;
				clear <= 0;
				d <= 32'b101;
		#10	clock <= 1;
		#10	clock <= 0;
				d <= 32'b111;
		#10	clock <= 1;
				
		
	end
register test_reg(clock, clear, enable, d, q);
endmodule