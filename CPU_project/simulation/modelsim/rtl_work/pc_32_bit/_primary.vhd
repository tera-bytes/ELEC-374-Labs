library verilog;
use verilog.vl_types.all;
entity pc_32_bit is
    generic(
        qInitial        : integer := 0
    );
    port(
        clock           : in     vl_logic;
        clear           : in     vl_logic;
        IncPC           : in     vl_logic;
        enable          : in     vl_logic;
        d               : in     vl_logic_vector(31 downto 0);
        q               : out    vl_logic_vector(31 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of qInitial : constant is 1;
end pc_32_bit;
