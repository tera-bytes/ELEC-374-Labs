module CON_FF_tb;
reg [31:0] bus_in;
reg [1:0] ir_field;
reg CON_in;
wire q;


CON_FF conff(bus_in, ir_field, CON_in, q);

initial begin
bus_in = 12;
ir_field = 0;
CON_in = 0;
#10
CON_in = 1;
#10
bus_in = 0;
#10
CON_in = 0;
#30


bus_in = 12;
ir_field = 1;
CON_in = 0;
#10
CON_in = 1;
#10
bus_in = 0;
#10
CON_in = 0;
#30


bus_in = 12;
ir_field = 2;
CON_in = 0;
#10
CON_in = 1;
#10
bus_in = 0;
#10
CON_in = 0;
#10
bus_in = -1;
#10
CON_in = 1;
#10
CON_in = 0;
#30


bus_in = 12;
ir_field = 3;
CON_in = 0;
#10
CON_in = 1;
#10
bus_in = 0;
#10
CON_in = 0;
#10
bus_in = -1;
#10
CON_in = 1;
#10
CON_in = 0;

end

endmodule
