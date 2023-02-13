library verilog;
use verilog.vl_types.all;
entity alu is
    port(
        Y               : in     vl_logic_vector(31 downto 0);
        B               : in     vl_logic_vector(31 downto 0);
        operation       : in     vl_logic_vector(4 downto 0);
        C               : out    vl_logic_vector(63 downto 0)
    );
end alu;
