library verilog;
use verilog.vl_types.all;
entity Not_32_bit is
    port(
        A               : in     vl_logic_vector(31 downto 0);
        B               : out    vl_logic_vector(31 downto 0)
    );
end Not_32_bit;
