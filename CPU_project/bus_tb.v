//Testbench to confirm registers can load values from the bus
`timescale 1ns/10ps
module bus_tb;
	// add any other signals to see in your simulation
	reg MARin, Zlowin, PCin, MDRin, IRin, Yin;
	reg IncPC, read, R1in, R2in, R3in;
	reg clock;
	reg [4:0] operation;
	reg [31:0] Mdatain;
	reg R0out, R1out, R2out, R3out, 
		R4out, R5out, R6out, R7out, R8out, 
		R9out, R10out, R11out, R12out, R13out, 
		R14out, R15out, HIout, LOout, ZHIout, 
		ZLOout, PCout, MDRout, Inportout, Cout;
	
	parameter	Default = 4'b0000, Reg_load1a = 4'b0001, Reg_load1b = 4'b0010, Reg_load2a = 4'b0011,
					Reg_load2b = 4'b0100, Reg_load3a = 4'b0101, Reg_load3b = 4'b0110, T0 = 4'b0111,
					T1 = 4'b1000, T2 = 4'b1001, T3 = 4'b1010, T4 = 4'b1011, T5 = 4'b1100;
	reg [3:0] Present_state = Default;

bus BUS(clock, clear, R0in, R1in, R2in, R3in, R4in, R5in, R6in, R7in, R8in, R9in,
	R10in, R11in, R12in, R13in, R14in, R15in, HIin, LOin, Zhighin, Zlowin,
	PCin, MDRin, OutPortin, Cin, MARin, IRin, Yin, Zin, R0out, R1out, R2out, R3out, 
	R4out, R5out, R6out, R7out, R8out, 
	R9out, R10out, R11out, R12out, R13out, 
	R14out, R15out, HIout, LOout, ZHIout, 
	ZLOout, PCout, MDRout, Inportout, Cout, IncPC, read, Mdatain,
	operation);
	
initial
	begin
		clock = 0;
		forever #10 clock = ~clock;
	end
	
always@(posedge clock)
	begin
		case (Present_state)
			Default : Present_state = Reg_load1a;
			Reg_load1a : Present_state = Reg_load1b;
		endcase
	end
	
	
	always@(Present_state)
	begin
		case (Present_state) // assert the required signals in each clock cycle
			Default: begin
				PCout <= 0; ZLOout <= 0; MDRout <= 0; // initialize the signals
				R2out <= 0; R3out <= 0; MARin <= 0; Zlowin <= 0;
				PCin <=0; MDRin <= 0; IRin <= 0; Yin <= 0;
				IncPC <=0; read <= 0; operation <= 5'b00000;
				R1in <=0; R2in<=0; R3in<=0; Mdatain <= 32'h00000000;
				{R0out, R1out, R2out, R3out, 
					R4out, R5out, R6out, R7out, R8out, 
					R9out, R10out, R11out, R12out, R13out, 
					R14out, R15out, HIout, LOout, ZHIout, 
					ZLOout, PCout, MDRout, Inportout, Cout} <= 24'b000000000000000000000000;
			end
			Reg_load1a: begin
				Mdatain <= 32'h00000012;
				read = 0; MDRin =0;
				#5 read <= 1; MDRin <= 1;
				#15 read <= 0; MDRin <= 0;
			end
			Reg_load1b: begin
				#5 MDRout <= 1; R2in <= 1;
				#15 MDRout <= 0; R2in <= 0; // initialize R2 with the value $12
			end
		endcase
	end
endmodule
