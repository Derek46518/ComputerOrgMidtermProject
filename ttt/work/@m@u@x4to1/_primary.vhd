library verilog;
use verilog.vl_types.all;
entity MUX4to1 is
    port(
        sel             : in     vl_logic_vector(5 downto 0);
        andOut          : in     vl_logic;
        orOut           : in     vl_logic;
        FA              : in     vl_logic;
        SLT             : in     vl_logic;
        \out\           : out    vl_logic
    );
end MUX4to1;
