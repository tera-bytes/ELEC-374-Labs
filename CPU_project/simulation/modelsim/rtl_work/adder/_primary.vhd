library verilog;
use verilog.vl_types.all;
entity adder is
    port(
        A               : in     vl_logic_vector(31 downto 0);
        B               : in     vl_logic_vector(31 downto 0);
        C               : out    vl_logic_vector(31 downto 0);
        \select\        : in     vl_logic
    );
end adder;
