library verilog;
use verilog.vl_types.all;
entity ALUbit is
    port(
        dataA           : in     vl_logic;
        dataB           : in     vl_logic;
        binvert         : in     vl_logic;
        cin             : in     vl_logic;
        less            : in     vl_logic;
        \Signal\        : in     vl_logic_vector(5 downto 0);
        dataOut         : out    vl_logic;
        set             : out    vl_logic;
        cout            : out    vl_logic
    );
end ALUbit;
