library verilog;
use verilog.vl_types.all;
entity tb_AAA is
    generic(
        \AND\           : vl_logic_vector(0 to 5) := (Hi1, Hi0, Hi0, Hi1, Hi0, Hi0);
        \OR\            : vl_logic_vector(0 to 5) := (Hi1, Hi0, Hi0, Hi1, Hi0, Hi1);
        ADD             : vl_logic_vector(0 to 5) := (Hi1, Hi0, Hi0, Hi0, Hi0, Hi0);
        SUB             : vl_logic_vector(0 to 5) := (Hi1, Hi0, Hi0, Hi0, Hi1, Hi0);
        SLT             : vl_logic_vector(0 to 5) := (Hi1, Hi0, Hi1, Hi0, Hi1, Hi0);
        \SRL\           : vl_logic_vector(0 to 5) := (Hi0, Hi0, Hi0, Hi0, Hi1, Hi0);
        DIVU            : vl_logic_vector(0 to 5) := (Hi0, Hi1, Hi1, Hi0, Hi1, Hi1);
        MULTU           : vl_logic_vector(0 to 5) := (Hi0, Hi1, Hi1, Hi0, Hi0, Hi1);
        MFHI            : vl_logic_vector(0 to 5) := (Hi0, Hi1, Hi0, Hi0, Hi0, Hi0);
        MFLO            : vl_logic_vector(0 to 5) := (Hi0, Hi1, Hi0, Hi0, Hi1, Hi0);
        t               : integer := 200
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of \AND\ : constant is 1;
    attribute mti_svvh_generic_type of \OR\ : constant is 1;
    attribute mti_svvh_generic_type of ADD : constant is 1;
    attribute mti_svvh_generic_type of SUB : constant is 1;
    attribute mti_svvh_generic_type of SLT : constant is 1;
    attribute mti_svvh_generic_type of \SRL\ : constant is 1;
    attribute mti_svvh_generic_type of DIVU : constant is 1;
    attribute mti_svvh_generic_type of MULTU : constant is 1;
    attribute mti_svvh_generic_type of MFHI : constant is 1;
    attribute mti_svvh_generic_type of MFLO : constant is 1;
    attribute mti_svvh_generic_type of t : constant is 1;
end tb_AAA;
