library verilog;
use verilog.vl_types.all;
entity CON_FF is
    port(
        bus_in          : in     vl_logic_vector(31 downto 0);
        ir_field        : in     vl_logic_vector(1 downto 0);
        CON_in          : in     vl_logic;
        q               : out    vl_logic
    );
end CON_FF;
