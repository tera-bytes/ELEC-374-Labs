library verilog;
use verilog.vl_types.all;
entity d_flip_flop is
    port(
        d               : in     vl_logic;
        clk             : in     vl_logic;
        q               : out    vl_logic
    );
end d_flip_flop;
