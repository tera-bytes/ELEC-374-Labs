library verilog;
use verilog.vl_types.all;
entity mux_MDR is
    port(
        busMuxOut       : in     vl_logic_vector(31 downto 0);
        mDataIn         : in     vl_logic_vector(31 downto 0);
        read            : in     vl_logic;
        \out\           : out    vl_logic_vector(31 downto 0)
    );
end mux_MDR;
