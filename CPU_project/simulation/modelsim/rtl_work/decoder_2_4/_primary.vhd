library verilog;
use verilog.vl_types.all;
entity decoder_2_4 is
    port(
        \in\            : in     vl_logic_vector(1 downto 0);
        \out\           : out    vl_logic_vector(3 downto 0)
    );
end decoder_2_4;
