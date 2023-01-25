module encoder_32_5(
/*input wire R0out, R1out, R2out, R3out, 
	R4out, R5out, R6out, R7out, R8out, 
	R9out, R10out, R11out, R12out, R13out, 
	R14out, R15out, RHIout, RLOout, RZHIout, 
	RZLOout, PCout, MDRout, Inportout, Cout 

*/
input wire [31:0] in,
output reg [4:0] out
);

always@(*)begin
	case(in)
		8'h00000001 : out = 0;
		8'h00000002 : out = 1;
		8'h00000004 : out = 2;
		8'h00000008 : out = 3;
		8'h00000010 : out = 4;
		8'h00000020 : out = 5;
		8'h00000040 : out = 6;
		8'h00000080 : out = 7;
		8'h00000100 : out = 8;
		8'h00000200 : out = 9;
		8'h00000400 : out = 10;
		8'h00000800 : out = 11;
		8'h00001000 : out = 12;
		8'h00002000 : out = 13;
		8'h00004000 : out = 14;
		8'h00008000 : out = 15;
		8'h00010000 : out = 16;
		8'h00020000 : out = 17;
		8'h00040000 : out = 18;
		8'h00080000 : out = 19;
		8'h00100000 : out = 20;
		8'h00200000 : out = 21;
		8'h00400000 : out = 22;
		8'h00800000 : out = 23;
		default		: out = 32'bx;
		endcase
	end
endmodule