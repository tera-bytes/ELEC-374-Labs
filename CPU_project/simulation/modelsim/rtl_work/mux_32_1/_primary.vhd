library verilog;
use verilog.vl_types.all;
entity mux_32_1 is
    port(
        busMuxIn_0R     : in     vl_logic_vector(31 downto 0);
        busMuxIn_1R     : in     vl_logic_vector(31 downto 0);
        busMuxIn_2R     : in     vl_logic_vector(31 downto 0);
        busMuxIn_3R     : in     vl_logic_vector(31 downto 0);
        busMuxIn_4R     : in     vl_logic_vector(31 downto 0);
        busMuxIn_5R     : in     vl_logic_vector(31 downto 0);
        busMuxIn_6R     : in     vl_logic_vector(31 downto 0);
        busMuxIn_7R     : in     vl_logic_vector(31 downto 0);
        busMuxIn_8R     : in     vl_logic_vector(31 downto 0);
        busMuxIn_9R     : in     vl_logic_vector(31 downto 0);
        busMuxIn_10R    : in     vl_logic_vector(31 downto 0);
        busMuxIn_11R    : in     vl_logic_vector(31 downto 0);
        busMuxIn_12R    : in     vl_logic_vector(31 downto 0);
        busMuxIn_13R    : in     vl_logic_vector(31 downto 0);
        busMuxIn_14R    : in     vl_logic_vector(31 downto 0);
        busMuxIn_15R    : in     vl_logic_vector(31 downto 0);
        busMuxIn_HI     : in     vl_logic_vector(31 downto 0);
        busMuxIn_LO     : in     vl_logic_vector(31 downto 0);
        busMuxIn_ZHI    : in     vl_logic_vector(31 downto 0);
        busMuxIn_ZLO    : in     vl_logic_vector(31 downto 0);
        busMuxIn_PC     : in     vl_logic_vector(31 downto 0);
        busMuxIn_MDR    : in     vl_logic_vector(31 downto 0);
        busMuxIn_InPort : in     vl_logic_vector(31 downto 0);
        busMuxIn_C      : in     vl_logic_vector(31 downto 0);
        read            : in     vl_logic_vector(4 downto 0);
        \out\           : out    vl_logic_vector(31 downto 0)
    );
end mux_32_1;
