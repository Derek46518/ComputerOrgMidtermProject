library verilog;
use verilog.vl_types.all;
entity ONEBIT_FA is
    port(
        A               : in     vl_logic;
        B               : in     vl_logic;
        cin             : in     vl_logic;
        sum             : out    vl_logic;
        \out\           : out    vl_logic
    );
end ONEBIT_FA;
