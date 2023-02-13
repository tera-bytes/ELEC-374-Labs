library verilog;
use verilog.vl_types.all;
entity testBusMux is
    port(
        busMuxIn_0R     : in     vl_logic;
        busMuxIn_1R     : in     vl_logic;
        busMuxIn_2R     : in     vl_logic;
        busMuxIn_3R     : in     vl_logic;
        busMuxIn_4R     : in     vl_logic;
        busMuxIn_5R     : in     vl_logic;
        busMuxIn_6R     : in     vl_logic;
        busMuxIn_7R     : in     vl_logic;
        busMuxIn_8R     : in     vl_logic;
        busMuxIn_9R     : in     vl_logic;
        busMuxIn_10R    : in     vl_logic;
        busMuxIn_11R    : in     vl_logic;
        busMuxIn_12R    : in     vl_logic;
        busMuxIn_13R    : in     vl_logic;
        busMuxIn_14R    : in     vl_logic;
        busMuxIn_15R    : in     vl_logic;
        busMuxIn_HI     : in     vl_logic;
        busMuxIn_LO     : in     vl_logic;
        busMuxIn_ZHI    : in     vl_logic;
        busMuxIn_ZLO    : in     vl_logic;
        busMuxIn_PC     : in     vl_logic;
        busMuxIn_MDR    : in     vl_logic;
        busMuxIn_InPort : in     vl_logic;
        busMuxIn_C      : in     vl_logic;
        read            : in     vl_logic_vector(4 downto 0);
        \out\           : out    vl_logic_vector(31 downto 0)
    );
end testBusMux;
