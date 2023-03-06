module Ram_tb;
reg [31:0] data;
reg [8:0] addr;
reg write, read, clock;
wire [31:0] q;

Ram RAM(data, addr, write, read, clock, q);

initial
	begin
	clock =0;
	#10
	data = 12;
	write = 1;
	addr = 0;
	clock = 1;
	#10
	data = -1;
	write = 1;
	addr = 1;
	clock = 0;
	#10
	write = 0;
	data = 0;
	read = 1;
	addr = 0;
	clock = 1;
	end

	
endmodule