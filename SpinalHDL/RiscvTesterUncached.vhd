-- Generator : SpinalHDL v1.4.3    git head : adf552d8f500e7419fff395b7049228e4bc5de26
-- Component : RiscvTesterUncached
-- Git hash  : adf552d8f500e7419fff395b7049228e4bc5de26

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.all;

package pkg_enum is
  type BR is (N,NE,EQ,GE,GEU,LT,LTU,J,JR);
  type OP0 is (RS,IMU,IMZ,IMJB);
  type OP1 is (RS,IMI,IMS,PC_1);
  type ALU is (ADD,SLL1,SLT,SLTU,XOR_1,SRL_1,OR_1,AND_1,SUB,COPY,SRA_1);
  type WB is (ALU_1,MEM,PC4,CSR1);
  type M is (XRD,XWR);
  type MSK is (B,H,W);
  type CSR is (N,W,S,C);
  type MFS is (N,SI,SD,FA,FD);
  type PC is (INC,BRA,J,JR);

  function pkg_mux (sel : std_logic; one : BR; zero : BR) return BR;
  subtype BR_opt_type is std_logic_vector(3 downto 0);
  constant BR_opt_N : BR_opt_type := "1000";
  constant BR_opt_NE : BR_opt_type := "0001";
  constant BR_opt_EQ : BR_opt_type := "0000";
  constant BR_opt_GE : BR_opt_type := "0101";
  constant BR_opt_GEU : BR_opt_type := "0111";
  constant BR_opt_LT : BR_opt_type := "0100";
  constant BR_opt_LTU : BR_opt_type := "0110";
  constant BR_opt_J : BR_opt_type := "0010";
  constant BR_opt_JR : BR_opt_type := "0011";

  function pkg_mux (sel : std_logic; one : OP0; zero : OP0) return OP0;
  subtype OP0_binary_sequential_type is std_logic_vector(1 downto 0);
  constant OP0_binary_sequential_RS : OP0_binary_sequential_type := "00";
  constant OP0_binary_sequential_IMU : OP0_binary_sequential_type := "01";
  constant OP0_binary_sequential_IMZ : OP0_binary_sequential_type := "10";
  constant OP0_binary_sequential_IMJB : OP0_binary_sequential_type := "11";

  function pkg_mux (sel : std_logic; one : OP1; zero : OP1) return OP1;
  subtype OP1_binary_sequential_type is std_logic_vector(1 downto 0);
  constant OP1_binary_sequential_RS : OP1_binary_sequential_type := "00";
  constant OP1_binary_sequential_IMI : OP1_binary_sequential_type := "01";
  constant OP1_binary_sequential_IMS : OP1_binary_sequential_type := "10";
  constant OP1_binary_sequential_PC_1 : OP1_binary_sequential_type := "11";

  function pkg_mux (sel : std_logic; one : ALU; zero : ALU) return ALU;
  subtype ALU_opt_type is std_logic_vector(3 downto 0);
  constant ALU_opt_ADD : ALU_opt_type := "0000";
  constant ALU_opt_SLL1 : ALU_opt_type := "0001";
  constant ALU_opt_SLT : ALU_opt_type := "0010";
  constant ALU_opt_SLTU : ALU_opt_type := "0011";
  constant ALU_opt_XOR_1 : ALU_opt_type := "0100";
  constant ALU_opt_SRL_1 : ALU_opt_type := "0101";
  constant ALU_opt_OR_1 : ALU_opt_type := "0110";
  constant ALU_opt_AND_1 : ALU_opt_type := "0111";
  constant ALU_opt_SUB : ALU_opt_type := "1000";
  constant ALU_opt_COPY : ALU_opt_type := "1111";
  constant ALU_opt_SRA_1 : ALU_opt_type := "1101";

  function pkg_mux (sel : std_logic; one : WB; zero : WB) return WB;
  subtype WB_binary_sequential_type is std_logic_vector(1 downto 0);
  constant WB_binary_sequential_ALU_1 : WB_binary_sequential_type := "00";
  constant WB_binary_sequential_MEM : WB_binary_sequential_type := "01";
  constant WB_binary_sequential_PC4 : WB_binary_sequential_type := "10";
  constant WB_binary_sequential_CSR1 : WB_binary_sequential_type := "11";

  function pkg_mux (sel : std_logic; one : M; zero : M) return M;
  subtype M_binary_sequential_type is std_logic_vector(0 downto 0);
  constant M_binary_sequential_XRD : M_binary_sequential_type := "0";
  constant M_binary_sequential_XWR : M_binary_sequential_type := "1";

  function pkg_mux (sel : std_logic; one : MSK; zero : MSK) return MSK;
  subtype MSK_binary_sequential_type is std_logic_vector(1 downto 0);
  constant MSK_binary_sequential_B : MSK_binary_sequential_type := "00";
  constant MSK_binary_sequential_H : MSK_binary_sequential_type := "01";
  constant MSK_binary_sequential_W : MSK_binary_sequential_type := "10";

  function pkg_mux (sel : std_logic; one : CSR; zero : CSR) return CSR;
  subtype CSR_binary_sequential_type is std_logic_vector(1 downto 0);
  constant CSR_binary_sequential_N : CSR_binary_sequential_type := "00";
  constant CSR_binary_sequential_W : CSR_binary_sequential_type := "01";
  constant CSR_binary_sequential_S : CSR_binary_sequential_type := "10";
  constant CSR_binary_sequential_C : CSR_binary_sequential_type := "11";

  function pkg_mux (sel : std_logic; one : MFS; zero : MFS) return MFS;
  function pkg_toStdLogicVector_defaultEncoding (value : MFS) return std_logic_vector;
  function pkg_toMFS_defaultEncoding (value : std_logic_vector(2 downto 0)) return MFS;
  function pkg_mux (sel : std_logic; one : PC; zero : PC) return PC;
  subtype PC_binary_sequential_type is std_logic_vector(1 downto 0);
  constant PC_binary_sequential_INC : PC_binary_sequential_type := "00";
  constant PC_binary_sequential_BRA : PC_binary_sequential_type := "01";
  constant PC_binary_sequential_J : PC_binary_sequential_type := "10";
  constant PC_binary_sequential_JR : PC_binary_sequential_type := "11";

end pkg_enum;

package body pkg_enum is
  function pkg_mux (sel : std_logic; one : BR; zero : BR) return BR is
  begin
    if sel = '1' then
      return one;
    else
      return zero;
    end if;
  end pkg_mux;

  function pkg_mux (sel : std_logic; one : OP0; zero : OP0) return OP0 is
  begin
    if sel = '1' then
      return one;
    else
      return zero;
    end if;
  end pkg_mux;

  function pkg_mux (sel : std_logic; one : OP1; zero : OP1) return OP1 is
  begin
    if sel = '1' then
      return one;
    else
      return zero;
    end if;
  end pkg_mux;

  function pkg_mux (sel : std_logic; one : ALU; zero : ALU) return ALU is
  begin
    if sel = '1' then
      return one;
    else
      return zero;
    end if;
  end pkg_mux;

  function pkg_mux (sel : std_logic; one : WB; zero : WB) return WB is
  begin
    if sel = '1' then
      return one;
    else
      return zero;
    end if;
  end pkg_mux;

  function pkg_mux (sel : std_logic; one : M; zero : M) return M is
  begin
    if sel = '1' then
      return one;
    else
      return zero;
    end if;
  end pkg_mux;

  function pkg_mux (sel : std_logic; one : MSK; zero : MSK) return MSK is
  begin
    if sel = '1' then
      return one;
    else
      return zero;
    end if;
  end pkg_mux;

  function pkg_mux (sel : std_logic; one : CSR; zero : CSR) return CSR is
  begin
    if sel = '1' then
      return one;
    else
      return zero;
    end if;
  end pkg_mux;

  function pkg_mux (sel : std_logic; one : MFS; zero : MFS) return MFS is
  begin
    if sel = '1' then
      return one;
    else
      return zero;
    end if;
  end pkg_mux;

  function pkg_toMFS_defaultEncoding (value : std_logic_vector(2 downto 0)) return MFS is
  begin
    case value is
      when "000" => return N;
      when "001" => return SI;
      when "010" => return SD;
      when "011" => return FA;
      when "100" => return FD;
      when others => return N;
    end case;
  end;
  function pkg_toStdLogicVector_defaultEncoding (value : MFS) return std_logic_vector is
  begin
    case value is
      when N => return "000";
      when SI => return "001";
      when SD => return "010";
      when FA => return "011";
      when FD => return "100";
      when others => return "000";
    end case;
  end;
  function pkg_mux (sel : std_logic; one : PC; zero : PC) return PC is
  begin
    if sel = '1' then
      return one;
    else
      return zero;
    end if;
  end pkg_mux;

end pkg_enum;


library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

package pkg_scala2hdl is
  function pkg_extract (that : std_logic_vector; bitId : integer) return std_logic;
  function pkg_extract (that : std_logic_vector; base : unsigned; size : integer) return std_logic_vector;
  function pkg_cat (a : std_logic_vector; b : std_logic_vector) return std_logic_vector;
  function pkg_not (value : std_logic_vector) return std_logic_vector;
  function pkg_extract (that : unsigned; bitId : integer) return std_logic;
  function pkg_extract (that : unsigned; base : unsigned; size : integer) return unsigned;
  function pkg_cat (a : unsigned; b : unsigned) return unsigned;
  function pkg_not (value : unsigned) return unsigned;
  function pkg_extract (that : signed; bitId : integer) return std_logic;
  function pkg_extract (that : signed; base : unsigned; size : integer) return signed;
  function pkg_cat (a : signed; b : signed) return signed;
  function pkg_not (value : signed) return signed;

  function pkg_mux (sel : std_logic; one : std_logic; zero : std_logic) return std_logic;
  function pkg_mux (sel : std_logic; one : std_logic_vector; zero : std_logic_vector) return std_logic_vector;
  function pkg_mux (sel : std_logic; one : unsigned; zero : unsigned) return unsigned;
  function pkg_mux (sel : std_logic; one : signed; zero : signed) return signed;

  function pkg_toStdLogic (value : boolean) return std_logic;
  function pkg_toStdLogicVector (value : std_logic) return std_logic_vector;
  function pkg_toUnsigned (value : std_logic) return unsigned;
  function pkg_toSigned (value : std_logic) return signed;
  function pkg_stdLogicVector (lit : std_logic_vector) return std_logic_vector;
  function pkg_unsigned (lit : unsigned) return unsigned;
  function pkg_signed (lit : signed) return signed;

  function pkg_resize (that : std_logic_vector; width : integer) return std_logic_vector;
  function pkg_resize (that : unsigned; width : integer) return unsigned;
  function pkg_resize (that : signed; width : integer) return signed;

  function pkg_extract (that : std_logic_vector; high : integer; low : integer) return std_logic_vector;
  function pkg_extract (that : unsigned; high : integer; low : integer) return unsigned;
  function pkg_extract (that : signed; high : integer; low : integer) return signed;

  function pkg_shiftRight (that : std_logic_vector; size : natural) return std_logic_vector;
  function pkg_shiftRight (that : std_logic_vector; size : unsigned) return std_logic_vector;
  function pkg_shiftLeft (that : std_logic_vector; size : natural) return std_logic_vector;
  function pkg_shiftLeft (that : std_logic_vector; size : unsigned) return std_logic_vector;

  function pkg_shiftRight (that : unsigned; size : natural) return unsigned;
  function pkg_shiftRight (that : unsigned; size : unsigned) return unsigned;
  function pkg_shiftLeft (that : unsigned; size : natural) return unsigned;
  function pkg_shiftLeft (that : unsigned; size : unsigned) return unsigned;

  function pkg_shiftRight (that : signed; size : natural) return signed;
  function pkg_shiftRight (that : signed; size : unsigned) return signed;
  function pkg_shiftLeft (that : signed; size : natural) return signed;
  function pkg_shiftLeft (that : signed; size : unsigned; w : integer) return signed;

  function pkg_rotateLeft (that : std_logic_vector; size : unsigned) return std_logic_vector;
end  pkg_scala2hdl;

package body pkg_scala2hdl is
  function pkg_extract (that : std_logic_vector; bitId : integer) return std_logic is
  begin
    return that(bitId);
  end pkg_extract;

  function pkg_extract (that : std_logic_vector; base : unsigned; size : integer) return std_logic_vector is
   constant elementCount : integer := (that'length-size)+1;
   type tableType is array (0 to elementCount-1) of std_logic_vector(size-1 downto 0);
   variable table : tableType;
  begin
    for i in 0 to elementCount-1 loop
      table(i) := that(i + size - 1 downto i);
    end loop;
    return table(to_integer(base));
  end pkg_extract;

  function pkg_cat (a : std_logic_vector; b : std_logic_vector) return std_logic_vector is
    variable cat : std_logic_vector(a'length + b'length-1 downto 0);
  begin
    cat := a & b;
    return cat;
  end pkg_cat;

  function pkg_not (value : std_logic_vector) return std_logic_vector is
    variable ret : std_logic_vector(value'length-1 downto 0);
  begin
    ret := not value;
    return ret;
  end pkg_not;

  function pkg_extract (that : unsigned; bitId : integer) return std_logic is
  begin
    return that(bitId);
  end pkg_extract;

  function pkg_extract (that : unsigned; base : unsigned; size : integer) return unsigned is
   constant elementCount : integer := (that'length-size)+1;
   type tableType is array (0 to elementCount-1) of unsigned(size-1 downto 0);
   variable table : tableType;
  begin
    for i in 0 to elementCount-1 loop
      table(i) := that(i + size - 1 downto i);
    end loop;
    return table(to_integer(base));
  end pkg_extract;

  function pkg_cat (a : unsigned; b : unsigned) return unsigned is
    variable cat : unsigned(a'length + b'length-1 downto 0);
  begin
    cat := a & b;
    return cat;
  end pkg_cat;

  function pkg_not (value : unsigned) return unsigned is
    variable ret : unsigned(value'length-1 downto 0);
  begin
    ret := not value;
    return ret;
  end pkg_not;

  function pkg_extract (that : signed; bitId : integer) return std_logic is
  begin
    return that(bitId);
  end pkg_extract;

  function pkg_extract (that : signed; base : unsigned; size : integer) return signed is
   constant elementCount : integer := (that'length-size)+1;
   type tableType is array (0 to elementCount-1) of signed(size-1 downto 0);
   variable table : tableType;
  begin
    for i in 0 to elementCount-1 loop
      table(i) := that(i + size - 1 downto i);
    end loop;
    return table(to_integer(base));
  end pkg_extract;

  function pkg_cat (a : signed; b : signed) return signed is
    variable cat : signed(a'length + b'length-1 downto 0);
  begin
    cat := a & b;
    return cat;
  end pkg_cat;

  function pkg_not (value : signed) return signed is
    variable ret : signed(value'length-1 downto 0);
  begin
    ret := not value;
    return ret;
  end pkg_not;


  -- unsigned shifts
  function pkg_shiftRight (that : unsigned; size : natural) return unsigned is
  begin
    if size >= that'length then
      return "";
    else
      return shift_right(that,size)(that'length-1-size downto 0);
    end if;
  end pkg_shiftRight;

  function pkg_shiftRight (that : unsigned; size : unsigned) return unsigned is
  begin
    return shift_right(that,to_integer(size));
  end pkg_shiftRight;

  function pkg_shiftLeft (that : unsigned; size : natural) return unsigned is
  begin
    return shift_left(resize(that,that'length + size),size);
  end pkg_shiftLeft;

  function pkg_shiftLeft (that : unsigned; size : unsigned) return unsigned is
  begin
    return shift_left(resize(that,that'length + 2**size'length - 1),to_integer(size));
  end pkg_shiftLeft;

  -- std_logic_vector shifts
  function pkg_shiftRight (that : std_logic_vector; size : natural) return std_logic_vector is
  begin
    return std_logic_vector(pkg_shiftRight(unsigned(that),size));
  end pkg_shiftRight;

  function pkg_shiftRight (that : std_logic_vector; size : unsigned) return std_logic_vector is
  begin
    return std_logic_vector(pkg_shiftRight(unsigned(that),size));
  end pkg_shiftRight;

  function pkg_shiftLeft (that : std_logic_vector; size : natural) return std_logic_vector is
  begin
    return std_logic_vector(pkg_shiftLeft(unsigned(that),size));
  end pkg_shiftLeft;

  function pkg_shiftLeft (that : std_logic_vector; size : unsigned) return std_logic_vector is
  begin
    return std_logic_vector(pkg_shiftLeft(unsigned(that),size));
  end pkg_shiftLeft;

  -- signed shifts
  function pkg_shiftRight (that : signed; size : natural) return signed is
  begin
    return signed(pkg_shiftRight(unsigned(that),size));
  end pkg_shiftRight;

  function pkg_shiftRight (that : signed; size : unsigned) return signed is
  begin
    return shift_right(that,to_integer(size));
  end pkg_shiftRight;

  function pkg_shiftLeft (that : signed; size : natural) return signed is
  begin
    return signed(pkg_shiftLeft(unsigned(that),size));
  end pkg_shiftLeft;

  function pkg_shiftLeft (that : signed; size : unsigned; w : integer) return signed is
  begin
    return shift_left(resize(that,w),to_integer(size));
  end pkg_shiftLeft;

  function pkg_rotateLeft (that : std_logic_vector; size : unsigned) return std_logic_vector is
  begin
    return std_logic_vector(rotate_left(unsigned(that),to_integer(size)));
  end pkg_rotateLeft;

  function pkg_extract (that : std_logic_vector; high : integer; low : integer) return std_logic_vector is
    variable temp : std_logic_vector(high-low downto 0);
  begin
    temp := that(high downto low);
    return temp;
  end pkg_extract;

  function pkg_extract (that : unsigned; high : integer; low : integer) return unsigned is
    variable temp : unsigned(high-low downto 0);
  begin
    temp := that(high downto low);
    return temp;
  end pkg_extract;

  function pkg_extract (that : signed; high : integer; low : integer) return signed is
    variable temp : signed(high-low downto 0);
  begin
    temp := that(high downto low);
    return temp;
  end pkg_extract;

  function pkg_mux (sel : std_logic; one : std_logic; zero : std_logic) return std_logic is
  begin
    if sel = '1' then
      return one;
    else
      return zero;
    end if;
  end pkg_mux;

  function pkg_mux (sel : std_logic; one : std_logic_vector; zero : std_logic_vector) return std_logic_vector is
    variable ret : std_logic_vector(zero'range);
  begin
    if sel = '1' then
      ret := one;
    else
      ret := zero;
    end if;
    return ret;
  end pkg_mux;

  function pkg_mux (sel : std_logic; one : unsigned; zero : unsigned) return unsigned is
    variable ret : unsigned(zero'range);
  begin
    if sel = '1' then
      ret := one;
    else
      ret := zero;
    end if;
    return ret;
  end pkg_mux;

  function pkg_mux (sel : std_logic; one : signed; zero : signed) return signed is
    variable ret : signed(zero'range);
  begin
    if sel = '1' then
      ret := one;
    else
      ret := zero;
    end if;
    return ret;
  end pkg_mux;

  function pkg_toStdLogic (value : boolean) return std_logic is
  begin
    if value = true then
      return '1';
    else
      return '0';
    end if;
  end pkg_toStdLogic;

  function pkg_toStdLogicVector (value : std_logic) return std_logic_vector is
    variable ret : std_logic_vector(0 downto 0);
  begin
    ret(0) := value;
    return ret;
  end pkg_toStdLogicVector;

  function pkg_toUnsigned (value : std_logic) return unsigned is
    variable ret : unsigned(0 downto 0);
  begin
    ret(0) := value;
    return ret;
  end pkg_toUnsigned;

  function pkg_toSigned (value : std_logic) return signed is
    variable ret : signed(0 downto 0);
  begin
    ret(0) := value;
    return ret;
  end pkg_toSigned;

  function pkg_stdLogicVector (lit : std_logic_vector) return std_logic_vector is
    variable ret : std_logic_vector(lit'length-1 downto 0);
  begin
    ret := lit;
    return ret;
  end pkg_stdLogicVector;

  function pkg_unsigned (lit : unsigned) return unsigned is
    variable ret : unsigned(lit'length-1 downto 0);
  begin
    ret := lit;
    return ret;
  end pkg_unsigned;

  function pkg_signed (lit : signed) return signed is
    variable ret : signed(lit'length-1 downto 0);
  begin
    ret := lit;
    return ret;
  end pkg_signed;

  function pkg_resize (that : std_logic_vector; width : integer) return std_logic_vector is
  begin
    return std_logic_vector(resize(unsigned(that),width));
  end pkg_resize;

  function pkg_resize (that : unsigned; width : integer) return unsigned is
    variable ret : unsigned(width-1 downto 0);
  begin
    if that'length = 0 then
       ret := (others => '0');
    else
       ret := resize(that,width);
    end if;
    return ret;
  end pkg_resize;
  function pkg_resize (that : signed; width : integer) return signed is
    variable ret : signed(width-1 downto 0);
  begin
    if that'length = 0 then
       ret := (others => '0');
    elsif that'length >= width then
       ret := that(width-1 downto 0);
    else
       ret := resize(that,width);
    end if;
    return ret;
  end pkg_resize;
end pkg_scala2hdl;


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.pkg_scala2hdl.all;
use work.all;
use work.pkg_enum.all;


entity UnsignedDivider is
  port(
    io_flush : in std_logic;
    io_cmd_valid : in std_logic;
    io_cmd_ready : out std_logic;
    io_cmd_payload_numerator : in unsigned(31 downto 0);
    io_cmd_payload_denominator : in unsigned(31 downto 0);
    io_cmd_payload_context : in std_logic_vector(1 downto 0);
    io_rsp_valid : out std_logic;
    io_rsp_ready : in std_logic;
    io_rsp_payload_quotient : out unsigned(31 downto 0);
    io_rsp_payload_remainder : out unsigned(31 downto 0);
    io_rsp_payload_error : out std_logic;
    io_rsp_payload_context : out std_logic_vector(1 downto 0);
    clk : in std_logic;
    reset : in std_logic
  );
end UnsignedDivider;

architecture arch of UnsignedDivider is
  signal zz_1 : std_logic;

  signal done : std_logic;
  signal waitRsp : std_logic;
  signal counter_willIncrement : std_logic;
  signal counter_willClear : std_logic;
  signal counter_valueNext : unsigned(4 downto 0);
  signal counter_value : unsigned(4 downto 0);
  signal counter_willOverflowIfInc : std_logic;
  signal counter_willOverflow : std_logic;
  signal numerator : unsigned(31 downto 0);
  signal denominator : unsigned(31 downto 0);
  signal context_1 : std_logic_vector(1 downto 0);
  signal remainder : unsigned(31 downto 0);
  signal remainderShifted : unsigned(32 downto 0);
  signal remainderMinusDenominator : unsigned(32 downto 0);
begin
  zz_1 <= ((not waitRsp) or io_rsp_ready);
  process(done)
  begin
    counter_willIncrement <= pkg_toStdLogic(false);
    if done = '0' then
      counter_willIncrement <= pkg_toStdLogic(true);
    end if;
  end process;

  process(done,zz_1)
  begin
    counter_willClear <= pkg_toStdLogic(false);
    if done = '1' then
      if zz_1 = '1' then
        counter_willClear <= pkg_toStdLogic(true);
      end if;
    end if;
  end process;

  counter_willOverflowIfInc <= pkg_toStdLogic(counter_value = pkg_unsigned("11111"));
  counter_willOverflow <= (counter_willOverflowIfInc and counter_willIncrement);
  process(counter_value,counter_willIncrement,counter_willClear)
  begin
    counter_valueNext <= (counter_value + pkg_resize(unsigned(pkg_toStdLogicVector(counter_willIncrement)),5));
    if counter_willClear = '1' then
      counter_valueNext <= pkg_unsigned("00000");
    end if;
  end process;

  remainderShifted <= unsigned(pkg_cat(std_logic_vector(remainder),pkg_toStdLogicVector(pkg_extract(numerator,31))));
  remainderMinusDenominator <= (remainderShifted - pkg_resize(denominator,33));
  process(done,zz_1,counter_willOverflowIfInc)
  begin
    io_cmd_ready <= pkg_toStdLogic(false);
    if done = '1' then
      if zz_1 = '1' then
        io_cmd_ready <= pkg_toStdLogic(true);
      end if;
    else
      if counter_willOverflowIfInc = '1' then
        io_cmd_ready <= pkg_toStdLogic(true);
      end if;
    end if;
  end process;

  io_rsp_valid <= waitRsp;
  io_rsp_payload_quotient <= numerator;
  io_rsp_payload_remainder <= remainder;
  io_rsp_payload_context <= context_1;
  io_rsp_payload_error <= pkg_toStdLogic(denominator = pkg_unsigned("00000000000000000000000000000000"));
  process(clk, reset)
  begin
    if reset = '1' then
      done <= pkg_toStdLogic(true);
      waitRsp <= pkg_toStdLogic(false);
      counter_value <= pkg_unsigned("00000");
    elsif rising_edge(clk) then
      counter_value <= counter_valueNext;
      if io_rsp_ready = '1' then
        waitRsp <= pkg_toStdLogic(false);
      end if;
      if done = '1' then
        if zz_1 = '1' then
          done <= (not io_cmd_valid);
        end if;
      else
        if counter_willOverflowIfInc = '1' then
          done <= pkg_toStdLogic(true);
          waitRsp <= pkg_toStdLogic(true);
        end if;
      end if;
      if io_flush = '1' then
        done <= pkg_toStdLogic(true);
        waitRsp <= pkg_toStdLogic(false);
      end if;
    end if;
  end process;

  process(clk)
  begin
    if rising_edge(clk) then
      if done = '1' then
        if zz_1 = '1' then
          remainder <= pkg_unsigned("00000000000000000000000000000000");
          numerator <= io_cmd_payload_numerator;
          denominator <= io_cmd_payload_denominator;
          context_1 <= io_cmd_payload_context;
        end if;
      else
        remainder <= pkg_resize(remainderShifted,32);
        numerator <= pkg_resize(unsigned(pkg_cat(std_logic_vector(numerator),pkg_toStdLogicVector((not pkg_extract(remainderMinusDenominator,32))))),32);
        if (not pkg_extract(remainderMinusDenominator,32)) = '1' then
          remainder <= pkg_resize(remainderMinusDenominator,32);
        end if;
      end if;
    end if;
  end process;

end arch;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.pkg_scala2hdl.all;
use work.all;
use work.pkg_enum.all;


entity Alu_1 is
  port(
    io_func : in ALU_opt_type;
    io_doSub : in std_logic;
    io_src0 : in std_logic_vector(31 downto 0);
    io_src1 : in std_logic_vector(31 downto 0);
    io_result : out std_logic_vector(31 downto 0);
    io_adder : out unsigned(31 downto 0)
  );
end Alu_1;

architecture arch of Alu_1 is

  signal addSub : std_logic_vector(31 downto 0);
  signal bitwise : std_logic_vector(31 downto 0);
  signal less : std_logic;
  signal zz_1 : std_logic_vector(31 downto 0);
begin
  addSub <= std_logic_vector(((signed(io_src0) + signed(pkg_mux(io_doSub,pkg_not(io_src1),io_src1))) + pkg_resize(pkg_mux(io_doSub,pkg_signed("01"),pkg_signed("00")),32)));
  process(io_func,io_src0,io_src1)
  begin
    case io_func is
      when ALU_opt_AND_1 =>
        bitwise <= (io_src0 and io_src1);
      when ALU_opt_OR_1 =>
        bitwise <= (io_src0 or io_src1);
      when ALU_opt_XOR_1 =>
        bitwise <= (io_src0 xor io_src1);
      when others =>
        bitwise <= io_src0;
    end case;
  end process;

  less <= pkg_mux(pkg_toStdLogic(pkg_extract(io_src0,31) = pkg_extract(io_src1,31)),pkg_extract(addSub,31),pkg_mux(pkg_toStdLogic(io_func = ALU_opt_SLTU),pkg_extract(io_src1,31),pkg_extract(io_src0,31)));
  process(io_func,less,addSub,bitwise)
  begin
    case io_func is
      when ALU_opt_SLT | ALU_opt_SLTU =>
        zz_1 <= pkg_resize(pkg_toStdLogicVector(less),32);
      when ALU_opt_ADD | ALU_opt_SUB =>
        zz_1 <= addSub;
      when others =>
        zz_1 <= bitwise;
    end case;
  end process;

  io_result <= zz_1;
  io_adder <= unsigned(addSub);
end arch;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.pkg_scala2hdl.all;
use work.all;
use work.pkg_enum.all;


entity MixedDivider is
  port(
    io_flush : in std_logic;
    io_cmd_valid : in std_logic;
    io_cmd_ready : out std_logic;
    io_cmd_payload_numerator : in std_logic_vector(31 downto 0);
    io_cmd_payload_denominator : in std_logic_vector(31 downto 0);
    io_cmd_payload_signed : in std_logic;
    io_rsp_valid : out std_logic;
    io_rsp_ready : in std_logic;
    io_rsp_payload_quotient : out std_logic_vector(31 downto 0);
    io_rsp_payload_remainder : out std_logic_vector(31 downto 0);
    io_rsp_payload_error : out std_logic;
    clk : in std_logic;
    reset : in std_logic
  );
end MixedDivider;

architecture arch of MixedDivider is
  signal zz_5 : unsigned(31 downto 0);
  signal zz_6 : unsigned(31 downto 0);
  signal zz_7 : std_logic_vector(1 downto 0);
  signal divider_io_cmd_ready : std_logic;
  signal divider_io_rsp_valid : std_logic;
  signal divider_io_rsp_payload_quotient : unsigned(31 downto 0);
  signal divider_io_rsp_payload_remainder : unsigned(31 downto 0);
  signal divider_io_rsp_payload_error : std_logic;
  signal divider_io_rsp_payload_context : std_logic_vector(1 downto 0);

  signal zz_1 : signed(31 downto 0);
  signal zz_2 : signed(31 downto 0);
  signal zz_3 : std_logic;
  signal zz_4 : std_logic;
begin
  divider : entity work.UnsignedDivider
    port map ( 
      io_flush => io_flush,
      io_cmd_valid => io_cmd_valid,
      io_cmd_ready => divider_io_cmd_ready,
      io_cmd_payload_numerator => zz_5,
      io_cmd_payload_denominator => zz_6,
      io_cmd_payload_context => zz_7,
      io_rsp_valid => divider_io_rsp_valid,
      io_rsp_ready => io_rsp_ready,
      io_rsp_payload_quotient => divider_io_rsp_payload_quotient,
      io_rsp_payload_remainder => divider_io_rsp_payload_remainder,
      io_rsp_payload_error => divider_io_rsp_payload_error,
      io_rsp_payload_context => divider_io_rsp_payload_context,
      clk => clk,
      reset => reset 
    );
  io_cmd_ready <= divider_io_cmd_ready;
  zz_1 <= signed(io_cmd_payload_numerator);
  zz_5 <= (unsigned(pkg_mux((pkg_extract(zz_1,31) and io_cmd_payload_signed),pkg_not(zz_1),zz_1)) + pkg_resize(unsigned(pkg_toStdLogicVector((pkg_extract(zz_1,31) and io_cmd_payload_signed))),32));
  zz_2 <= signed(io_cmd_payload_denominator);
  zz_6 <= (unsigned(pkg_mux((pkg_extract(zz_2,31) and io_cmd_payload_signed),pkg_not(zz_2),zz_2)) + pkg_resize(unsigned(pkg_toStdLogicVector((pkg_extract(zz_2,31) and io_cmd_payload_signed))),32));
  process(io_cmd_payload_signed,io_cmd_payload_numerator,io_cmd_payload_denominator)
  begin
    zz_7(0) <= (io_cmd_payload_signed and (pkg_extract(io_cmd_payload_numerator,31) xor pkg_extract(io_cmd_payload_denominator,31)));
    zz_7(1) <= (io_cmd_payload_signed and pkg_extract(io_cmd_payload_numerator,31));
  end process;

  io_rsp_valid <= divider_io_rsp_valid;
  zz_3 <= pkg_extract(divider_io_rsp_payload_context,0);
  io_rsp_payload_quotient <= pkg_resize(std_logic_vector(signed((unsigned(pkg_cat(pkg_toStdLogicVector(zz_3),std_logic_vector(pkg_mux(zz_3,pkg_not(divider_io_rsp_payload_quotient),divider_io_rsp_payload_quotient)))) + pkg_resize(unsigned(pkg_toStdLogicVector(zz_3)),33)))),32);
  zz_4 <= pkg_extract(divider_io_rsp_payload_context,1);
  io_rsp_payload_remainder <= pkg_resize(std_logic_vector(signed((unsigned(pkg_cat(pkg_toStdLogicVector(zz_4),std_logic_vector(pkg_mux(zz_4,pkg_not(divider_io_rsp_payload_remainder),divider_io_rsp_payload_remainder)))) + pkg_resize(unsigned(pkg_toStdLogicVector(zz_4)),33)))),32);
  io_rsp_payload_error <= divider_io_rsp_payload_error;
end arch;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.pkg_scala2hdl.all;
use work.all;
use work.pkg_enum.all;


entity RiscvCore is
  port(
    io_interrupt_1 : in std_logic;
    io_interrupt_0 : in std_logic;
    io_interrupt_3 : in std_logic;
    io_interrupt_2 : in std_logic;
    io_i_cmd_valid : out std_logic;
    io_i_cmd_ready : in std_logic;
    io_i_cmd_payload_pc : out unsigned(31 downto 0);
    io_i_rsp_valid : in std_logic;
    io_i_rsp_ready : out std_logic;
    io_i_rsp_payload_instruction : in std_logic_vector(31 downto 0);
    io_i_rsp_payload_pc : in unsigned(31 downto 0);
    io_d_cmd_valid : out std_logic;
    io_d_cmd_ready : in std_logic;
    io_d_cmd_payload_wr : out std_logic;
    io_d_cmd_payload_address : out unsigned(31 downto 0);
    io_d_cmd_payload_data : out std_logic_vector(31 downto 0);
    io_d_cmd_payload_size : out unsigned(1 downto 0);
    io_d_rsp_valid : in std_logic;
    io_d_rsp_ready : out std_logic;
    io_d_rsp_payload : in std_logic_vector(31 downto 0);
    zz_32 : out std_logic;
    zz_33 : out unsigned(31 downto 0);
    zz_34 : out std_logic_vector(31 downto 0);
    zz_35 : out std_logic;
    zz_36 : out std_logic;
    zz_37 : out std_logic;
    zz_38 : out unsigned(31 downto 0);
    zz_39 : out std_logic_vector(31 downto 0);
    zz_40 : out unsigned(1 downto 0);
    zz_41 : out std_logic;
    zz_42 : out std_logic_vector(31 downto 0);
    clk : in std_logic;
    reset : in std_logic
  );
end RiscvCore;

architecture arch of RiscvCore is
  signal zz_43 : std_logic;
  signal zz_44 : std_logic;
  signal zz_45 : std_logic;
  signal zz_46 : std_logic_vector(31 downto 0);
  signal zz_47 : std_logic_vector(31 downto 0);
  signal execute0_alu_io_result : std_logic_vector(31 downto 0);
  signal execute0_alu_io_adder : unsigned(31 downto 0);
  signal DivExtension_divider_io_cmd_ready : std_logic;
  signal DivExtension_divider_io_rsp_valid : std_logic;
  signal DivExtension_divider_io_rsp_payload_quotient : std_logic_vector(31 downto 0);
  signal DivExtension_divider_io_rsp_payload_remainder : std_logic_vector(31 downto 0);
  signal DivExtension_divider_io_rsp_payload_error : std_logic;
  signal zz_48 : std_logic;
  signal zz_49 : std_logic;
  signal zz_50 : std_logic;
  signal zz_51 : std_logic;
  signal zz_52 : std_logic;
  signal zz_53 : std_logic;
  signal zz_54 : std_logic;
  signal zz_55 : std_logic;
  signal zz_56 : std_logic;
  signal zz_57 : std_logic;
  signal zz_58 : std_logic;
  signal zz_59 : std_logic;
  signal zz_60 : std_logic;
  signal zz_61 : std_logic;
  signal zz_62 : std_logic;
  signal zz_63 : std_logic;
  signal zz_64 : std_logic;
  signal zz_65 : std_logic;
  signal zz_66 : std_logic;
  signal zz_67 : std_logic;
  signal zz_68 : std_logic;
  signal zz_69 : std_logic;
  signal zz_70 : std_logic;
  signal zz_71 : std_logic;
  signal zz_72 : std_logic_vector(1 downto 0);
  signal zz_73 : std_logic;
  signal zz_74 : std_logic;
  signal zz_75 : std_logic;
  signal zz_76 : std_logic;
  signal zz_77 : std_logic;
  signal zz_78 : std_logic;
  signal zz_79 : std_logic;
  signal zz_80 : std_logic;
  signal zz_81 : std_logic_vector(1 downto 0);
  signal zz_82 : std_logic_vector(1 downto 0);
  signal zz_83 : std_logic;
  signal zz_84 : std_logic;
  signal zz_85 : unsigned(15 downto 0);
  signal zz_86 : std_logic_vector(15 downto 0);
  signal zz_87 : std_logic;
  signal zz_88 : std_logic;
  signal zz_89 : std_logic;

  signal zz_1 : std_logic;
  signal zz_2 : std_logic;
  signal iCmd_valid : std_logic;
  signal iCmd_ready : std_logic;
  signal iCmd_payload_pc : unsigned(31 downto 0);
  signal iRsp_valid : std_logic;
  signal iRsp_ready : std_logic;
  signal iRsp_payload_instruction : std_logic_vector(31 downto 0);
  signal iRsp_payload_pc : unsigned(31 downto 0);
  signal dCmd_valid : std_logic;
  signal dCmd_ready : std_logic;
  signal dCmd_payload_wr : std_logic;
  signal dCmd_payload_address : unsigned(31 downto 0);
  signal dCmd_payload_data : std_logic_vector(31 downto 0);
  signal dCmd_payload_size : unsigned(1 downto 0);
  signal dRsp_valid : std_logic;
  signal dRsp_ready : std_logic;
  signal dRsp_payload : std_logic_vector(31 downto 0);
  signal prefetch_halt : std_logic;
  signal prefetch_pc : unsigned(31 downto 0);
  signal prefetch_inc : std_logic;
  signal prefetch_pcNext : unsigned(31 downto 0);
  signal prefetch_pcLoad_valid : std_logic;
  signal prefetch_pcLoad_payload : unsigned(31 downto 0);
  signal prefetch_resetDone : std_logic;
  signal fetch_outInst_valid : std_logic;
  signal fetch_outInst_ready : std_logic;
  signal fetch_outInst_payload_pc : unsigned(31 downto 0);
  signal fetch_outInst_payload_instruction : std_logic_vector(31 downto 0);
  signal fetch_outInst_payload_branchCacheLine_pc : unsigned(13 downto 0);
  signal fetch_outInst_payload_branchCacheLine_history : signed(1 downto 0);
  signal fetch_throwIt : std_logic;
  signal fetch_flush : std_logic;
  signal fetch_pendingPrefetch_incrementIt : std_logic;
  signal fetch_pendingPrefetch_decrementIt : std_logic;
  signal fetch_pendingPrefetch_valueNext : unsigned(1 downto 0);
  signal fetch_pendingPrefetch_value : unsigned(1 downto 0);
  signal fetch_pendingPrefetch_willOverflowIfInc : std_logic;
  signal fetch_pendingPrefetch_willOverflow : std_logic;
  signal fetch_pendingPrefetch_finalIncrement : unsigned(1 downto 0);
  signal fetch_throwRemaining : unsigned(1 downto 0);
  signal fetch_throwNextIRsp : std_logic;
  signal iRsp_thrown_valid : std_logic;
  signal iRsp_thrown_ready : std_logic;
  signal iRsp_thrown_payload_instruction : std_logic_vector(31 downto 0);
  signal iRsp_thrown_payload_pc : unsigned(31 downto 0);
  signal decode_inInst_valid : std_logic;
  signal decode_inInst_ready : std_logic;
  signal decode_inInst_payload_pc : unsigned(31 downto 0);
  signal decode_inInst_payload_instruction : std_logic_vector(31 downto 0);
  signal decode_inInst_payload_branchCacheLine_pc : unsigned(13 downto 0);
  signal decode_inInst_payload_branchCacheLine_history : signed(1 downto 0);
  signal fetch_outInst_m2sPipe_rValid : std_logic;
  signal fetch_outInst_m2sPipe_rData_pc : unsigned(31 downto 0);
  signal fetch_outInst_m2sPipe_rData_instruction : std_logic_vector(31 downto 0);
  signal fetch_outInst_m2sPipe_rData_branchCacheLine_pc : unsigned(13 downto 0);
  signal fetch_outInst_m2sPipe_rData_branchCacheLine_history : signed(1 downto 0);
  signal decode_ctrl_instVal : std_logic;
  signal decode_ctrl_br : BR_opt_type;
  signal decode_ctrl_jmp : std_logic;
  signal decode_ctrl_op0 : OP0_binary_sequential_type;
  signal decode_ctrl_op1 : OP1_binary_sequential_type;
  signal decode_ctrl_alu : ALU_opt_type;
  signal decode_ctrl_wb : WB_binary_sequential_type;
  signal decode_ctrl_rfen : std_logic;
  signal decode_ctrl_execute0AluBypass : std_logic;
  signal decode_ctrl_execute1AluBypass : std_logic;
  signal decode_ctrl_canInternalyStallWriteBack0 : std_logic;
  signal decode_ctrl_men : std_logic;
  signal decode_ctrl_m : M_binary_sequential_type;
  signal decode_ctrl_msk : MSK_binary_sequential_type;
  signal decode_ctrl_csr : CSR_binary_sequential_type;
  signal decode_ctrl_mfs : MFS;
  signal decode_ctrl_useSrc0 : std_logic;
  signal decode_ctrl_useSrc1 : std_logic;
  signal decode_ctrl_extensionTag : std_logic_vector(1 downto 0);
  signal decode_ctrl_fencei : std_logic;
  signal zz_3 : MSK_binary_sequential_type;
  signal zz_4 : std_logic;
  signal zz_5 : ALU_opt_type;
  signal zz_6 : ALU_opt_type;
  signal zz_7 : BR_opt_type;
  signal zz_8 : CSR_binary_sequential_type;
  signal decode_hazard : std_logic;
  signal decode_throwIt : std_logic;
  signal decode_halt : std_logic;
  signal decode_addr0 : unsigned(4 downto 0);
  signal decode_addr1 : unsigned(4 downto 0);
  signal decode_addr0IsZero : std_logic;
  signal decode_addr1IsZero : std_logic;
  signal decode_srcInstruction : std_logic_vector(31 downto 0);
  signal decode_regFileReadAddress0 : unsigned(4 downto 0);
  signal decode_regFileReadAddress1 : unsigned(4 downto 0);
  signal decode_src0 : std_logic_vector(31 downto 0);
  signal decode_src1 : std_logic_vector(31 downto 0);
  signal zz_9 : std_logic;
  signal zz_10 : std_logic_vector(10 downto 0);
  signal zz_11 : std_logic;
  signal zz_12 : std_logic_vector(18 downto 0);
  signal decode_brjmpImm : std_logic_vector(31 downto 0);
  signal decode_brJumpPc : unsigned(31 downto 0);
  signal decode_branchCacheHit : std_logic;
  signal decode_staticBranchPrediction : std_logic;
  signal decode_shouldTakeBranch : std_logic;
  signal decode_outInst_valid : std_logic;
  signal decode_outInst_ready : std_logic;
  signal decode_outInst_payload_pc : unsigned(31 downto 0);
  signal decode_outInst_payload_instruction : std_logic_vector(31 downto 0);
  signal decode_outInst_payload_ctrl_instVal : std_logic;
  signal decode_outInst_payload_ctrl_br : BR_opt_type;
  signal decode_outInst_payload_ctrl_jmp : std_logic;
  signal decode_outInst_payload_ctrl_op0 : OP0_binary_sequential_type;
  signal decode_outInst_payload_ctrl_op1 : OP1_binary_sequential_type;
  signal decode_outInst_payload_ctrl_alu : ALU_opt_type;
  signal decode_outInst_payload_ctrl_wb : WB_binary_sequential_type;
  signal decode_outInst_payload_ctrl_rfen : std_logic;
  signal decode_outInst_payload_ctrl_execute0AluBypass : std_logic;
  signal decode_outInst_payload_ctrl_execute1AluBypass : std_logic;
  signal decode_outInst_payload_ctrl_canInternalyStallWriteBack0 : std_logic;
  signal decode_outInst_payload_ctrl_men : std_logic;
  signal decode_outInst_payload_ctrl_m : M_binary_sequential_type;
  signal decode_outInst_payload_ctrl_msk : MSK_binary_sequential_type;
  signal decode_outInst_payload_ctrl_csr : CSR_binary_sequential_type;
  signal decode_outInst_payload_ctrl_mfs : MFS;
  signal decode_outInst_payload_ctrl_useSrc0 : std_logic;
  signal decode_outInst_payload_ctrl_useSrc1 : std_logic;
  signal decode_outInst_payload_ctrl_extensionTag : std_logic_vector(1 downto 0);
  signal decode_outInst_payload_ctrl_fencei : std_logic;
  signal decode_outInst_payload_src0 : std_logic_vector(31 downto 0);
  signal decode_outInst_payload_src1 : std_logic_vector(31 downto 0);
  signal decode_outInst_payload_alu_op0 : std_logic_vector(31 downto 0);
  signal decode_outInst_payload_alu_op1 : std_logic_vector(31 downto 0);
  signal decode_outInst_payload_doSub : std_logic;
  signal decode_outInst_payload_predictorHasBranch : std_logic;
  signal decode_outInst_payload_branchHistory_valid : std_logic;
  signal decode_outInst_payload_branchHistory_payload : signed(1 downto 0);
  signal decode_pcLoad_valid : std_logic;
  signal decode_pcLoad_payload : unsigned(31 downto 0);
  signal decode_inInst_thrown_valid : std_logic;
  signal decode_inInst_thrown_ready : std_logic;
  signal decode_inInst_thrown_payload_pc : unsigned(31 downto 0);
  signal decode_inInst_thrown_payload_instruction : std_logic_vector(31 downto 0);
  signal decode_inInst_thrown_payload_branchCacheLine_pc : unsigned(13 downto 0);
  signal decode_inInst_thrown_payload_branchCacheLine_history : signed(1 downto 0);
  signal zz_13 : std_logic;
  signal zz_14 : std_logic_vector(31 downto 0);
  signal zz_15 : std_logic;
  signal zz_16 : std_logic_vector(19 downto 0);
  signal zz_17 : std_logic;
  signal zz_18 : std_logic_vector(19 downto 0);
  signal zz_19 : std_logic_vector(31 downto 0);
  signal decode_flush : std_logic;
  signal execute0_inInst_valid : std_logic;
  signal execute0_inInst_ready : std_logic;
  signal execute0_inInst_payload_pc : unsigned(31 downto 0);
  signal execute0_inInst_payload_instruction : std_logic_vector(31 downto 0);
  signal execute0_inInst_payload_ctrl_instVal : std_logic;
  signal execute0_inInst_payload_ctrl_br : BR_opt_type;
  signal execute0_inInst_payload_ctrl_jmp : std_logic;
  signal execute0_inInst_payload_ctrl_op0 : OP0_binary_sequential_type;
  signal execute0_inInst_payload_ctrl_op1 : OP1_binary_sequential_type;
  signal execute0_inInst_payload_ctrl_alu : ALU_opt_type;
  signal execute0_inInst_payload_ctrl_wb : WB_binary_sequential_type;
  signal execute0_inInst_payload_ctrl_rfen : std_logic;
  signal execute0_inInst_payload_ctrl_execute0AluBypass : std_logic;
  signal execute0_inInst_payload_ctrl_execute1AluBypass : std_logic;
  signal execute0_inInst_payload_ctrl_canInternalyStallWriteBack0 : std_logic;
  signal execute0_inInst_payload_ctrl_men : std_logic;
  signal execute0_inInst_payload_ctrl_m : M_binary_sequential_type;
  signal execute0_inInst_payload_ctrl_msk : MSK_binary_sequential_type;
  signal execute0_inInst_payload_ctrl_csr : CSR_binary_sequential_type;
  signal execute0_inInst_payload_ctrl_mfs : MFS;
  signal execute0_inInst_payload_ctrl_useSrc0 : std_logic;
  signal execute0_inInst_payload_ctrl_useSrc1 : std_logic;
  signal execute0_inInst_payload_ctrl_extensionTag : std_logic_vector(1 downto 0);
  signal execute0_inInst_payload_ctrl_fencei : std_logic;
  signal execute0_inInst_payload_src0 : std_logic_vector(31 downto 0);
  signal execute0_inInst_payload_src1 : std_logic_vector(31 downto 0);
  signal execute0_inInst_payload_alu_op0 : std_logic_vector(31 downto 0);
  signal execute0_inInst_payload_alu_op1 : std_logic_vector(31 downto 0);
  signal execute0_inInst_payload_doSub : std_logic;
  signal execute0_inInst_payload_predictorHasBranch : std_logic;
  signal execute0_inInst_payload_branchHistory_valid : std_logic;
  signal execute0_inInst_payload_branchHistory_payload : signed(1 downto 0);
  signal decode_outInst_m2sPipe_rValid : std_logic;
  signal decode_outInst_m2sPipe_rData_pc : unsigned(31 downto 0);
  signal decode_outInst_m2sPipe_rData_instruction : std_logic_vector(31 downto 0);
  signal decode_outInst_m2sPipe_rData_ctrl_instVal : std_logic;
  signal decode_outInst_m2sPipe_rData_ctrl_br : BR_opt_type;
  signal decode_outInst_m2sPipe_rData_ctrl_jmp : std_logic;
  signal decode_outInst_m2sPipe_rData_ctrl_op0 : OP0_binary_sequential_type;
  signal decode_outInst_m2sPipe_rData_ctrl_op1 : OP1_binary_sequential_type;
  signal decode_outInst_m2sPipe_rData_ctrl_alu : ALU_opt_type;
  signal decode_outInst_m2sPipe_rData_ctrl_wb : WB_binary_sequential_type;
  signal decode_outInst_m2sPipe_rData_ctrl_rfen : std_logic;
  signal decode_outInst_m2sPipe_rData_ctrl_execute0AluBypass : std_logic;
  signal decode_outInst_m2sPipe_rData_ctrl_execute1AluBypass : std_logic;
  signal decode_outInst_m2sPipe_rData_ctrl_canInternalyStallWriteBack0 : std_logic;
  signal decode_outInst_m2sPipe_rData_ctrl_men : std_logic;
  signal decode_outInst_m2sPipe_rData_ctrl_m : M_binary_sequential_type;
  signal decode_outInst_m2sPipe_rData_ctrl_msk : MSK_binary_sequential_type;
  signal decode_outInst_m2sPipe_rData_ctrl_csr : CSR_binary_sequential_type;
  signal decode_outInst_m2sPipe_rData_ctrl_mfs : MFS;
  signal decode_outInst_m2sPipe_rData_ctrl_useSrc0 : std_logic;
  signal decode_outInst_m2sPipe_rData_ctrl_useSrc1 : std_logic;
  signal decode_outInst_m2sPipe_rData_ctrl_extensionTag : std_logic_vector(1 downto 0);
  signal decode_outInst_m2sPipe_rData_ctrl_fencei : std_logic;
  signal decode_outInst_m2sPipe_rData_src0 : std_logic_vector(31 downto 0);
  signal decode_outInst_m2sPipe_rData_src1 : std_logic_vector(31 downto 0);
  signal decode_outInst_m2sPipe_rData_alu_op0 : std_logic_vector(31 downto 0);
  signal decode_outInst_m2sPipe_rData_alu_op1 : std_logic_vector(31 downto 0);
  signal decode_outInst_m2sPipe_rData_doSub : std_logic;
  signal decode_outInst_m2sPipe_rData_predictorHasBranch : std_logic;
  signal decode_outInst_m2sPipe_rData_branchHistory_valid : std_logic;
  signal decode_outInst_m2sPipe_rData_branchHistory_payload : signed(1 downto 0);
  signal execute0_throwIt : std_logic;
  signal execute0_halt : std_logic;
  signal execute0_haltFromDataRequest : std_logic;
  signal execute0_br_signed : std_logic;
  signal execute0_br_src0Ext : std_logic_vector(32 downto 0);
  signal execute0_br_src1Ext : std_logic_vector(32 downto 0);
  signal execute0_br_ltx : std_logic;
  signal execute0_br_eq : std_logic;
  signal execute0_br_pc_sel : PC_binary_sequential_type;
  signal execute0_outInst_valid : std_logic;
  signal execute0_outInst_ready : std_logic;
  signal execute0_outInst_payload_pc : unsigned(31 downto 0);
  signal execute0_outInst_payload_instruction : std_logic_vector(31 downto 0);
  signal execute0_outInst_payload_ctrl_instVal : std_logic;
  signal execute0_outInst_payload_ctrl_br : BR_opt_type;
  signal execute0_outInst_payload_ctrl_jmp : std_logic;
  signal execute0_outInst_payload_ctrl_op0 : OP0_binary_sequential_type;
  signal execute0_outInst_payload_ctrl_op1 : OP1_binary_sequential_type;
  signal execute0_outInst_payload_ctrl_alu : ALU_opt_type;
  signal execute0_outInst_payload_ctrl_wb : WB_binary_sequential_type;
  signal execute0_outInst_payload_ctrl_rfen : std_logic;
  signal execute0_outInst_payload_ctrl_execute0AluBypass : std_logic;
  signal execute0_outInst_payload_ctrl_execute1AluBypass : std_logic;
  signal execute0_outInst_payload_ctrl_canInternalyStallWriteBack0 : std_logic;
  signal execute0_outInst_payload_ctrl_men : std_logic;
  signal execute0_outInst_payload_ctrl_m : M_binary_sequential_type;
  signal execute0_outInst_payload_ctrl_msk : MSK_binary_sequential_type;
  signal execute0_outInst_payload_ctrl_csr : CSR_binary_sequential_type;
  signal execute0_outInst_payload_ctrl_mfs : MFS;
  signal execute0_outInst_payload_ctrl_useSrc0 : std_logic;
  signal execute0_outInst_payload_ctrl_useSrc1 : std_logic;
  signal execute0_outInst_payload_ctrl_extensionTag : std_logic_vector(1 downto 0);
  signal execute0_outInst_payload_ctrl_fencei : std_logic;
  signal execute0_outInst_payload_br_eq : std_logic;
  signal execute0_outInst_payload_br_ltx : std_logic;
  signal execute0_outInst_payload_src1 : std_logic_vector(31 downto 0);
  signal execute0_outInst_payload_result : std_logic_vector(31 downto 0);
  signal execute0_outInst_payload_adder : unsigned(31 downto 0);
  signal execute0_outInst_payload_predictorHasBranch : std_logic;
  signal execute0_outInst_payload_branchHistory_valid : std_logic;
  signal execute0_outInst_payload_branchHistory_payload : signed(1 downto 0);
  signal execute0_outInst_payload_pcPlus4 : unsigned(31 downto 0);
  signal execute0_outInst_payload_pc_sel : PC_binary_sequential_type;
  signal execute0_outInst_payload_unalignedMemoryAccessException : std_logic;
  signal execute0_outInst_payload_needMemRsp : std_logic;
  signal execute0_outInst_payload_dCmdAddress : unsigned(31 downto 0);
  signal execute0_inInst_thrown_valid : std_logic;
  signal execute0_inInst_thrown_ready : std_logic;
  signal execute0_inInst_thrown_payload_pc : unsigned(31 downto 0);
  signal execute0_inInst_thrown_payload_instruction : std_logic_vector(31 downto 0);
  signal execute0_inInst_thrown_payload_ctrl_instVal : std_logic;
  signal execute0_inInst_thrown_payload_ctrl_br : BR_opt_type;
  signal execute0_inInst_thrown_payload_ctrl_jmp : std_logic;
  signal execute0_inInst_thrown_payload_ctrl_op0 : OP0_binary_sequential_type;
  signal execute0_inInst_thrown_payload_ctrl_op1 : OP1_binary_sequential_type;
  signal execute0_inInst_thrown_payload_ctrl_alu : ALU_opt_type;
  signal execute0_inInst_thrown_payload_ctrl_wb : WB_binary_sequential_type;
  signal execute0_inInst_thrown_payload_ctrl_rfen : std_logic;
  signal execute0_inInst_thrown_payload_ctrl_execute0AluBypass : std_logic;
  signal execute0_inInst_thrown_payload_ctrl_execute1AluBypass : std_logic;
  signal execute0_inInst_thrown_payload_ctrl_canInternalyStallWriteBack0 : std_logic;
  signal execute0_inInst_thrown_payload_ctrl_men : std_logic;
  signal execute0_inInst_thrown_payload_ctrl_m : M_binary_sequential_type;
  signal execute0_inInst_thrown_payload_ctrl_msk : MSK_binary_sequential_type;
  signal execute0_inInst_thrown_payload_ctrl_csr : CSR_binary_sequential_type;
  signal execute0_inInst_thrown_payload_ctrl_mfs : MFS;
  signal execute0_inInst_thrown_payload_ctrl_useSrc0 : std_logic;
  signal execute0_inInst_thrown_payload_ctrl_useSrc1 : std_logic;
  signal execute0_inInst_thrown_payload_ctrl_extensionTag : std_logic_vector(1 downto 0);
  signal execute0_inInst_thrown_payload_ctrl_fencei : std_logic;
  signal execute0_inInst_thrown_payload_src0 : std_logic_vector(31 downto 0);
  signal execute0_inInst_thrown_payload_src1 : std_logic_vector(31 downto 0);
  signal execute0_inInst_thrown_payload_alu_op0 : std_logic_vector(31 downto 0);
  signal execute0_inInst_thrown_payload_alu_op1 : std_logic_vector(31 downto 0);
  signal execute0_inInst_thrown_payload_doSub : std_logic;
  signal execute0_inInst_thrown_payload_predictorHasBranch : std_logic;
  signal execute0_inInst_thrown_payload_branchHistory_valid : std_logic;
  signal execute0_inInst_thrown_payload_branchHistory_payload : signed(1 downto 0);
  signal zz_20 : std_logic;
  signal zz_21 : std_logic;
  signal zz_22 : unsigned(1 downto 0);
  signal execute0_pendingDataCmd_readCount : unsigned(1 downto 0);
  signal execute0_pendingDataCmd_readCountInc : std_logic;
  signal execute0_pendingDataCmd_readCountDec : std_logic;
  signal execute0_flush : std_logic;
  signal execute1_inInst_valid : std_logic;
  signal execute1_inInst_ready : std_logic;
  signal execute1_inInst_payload_pc : unsigned(31 downto 0);
  signal execute1_inInst_payload_instruction : std_logic_vector(31 downto 0);
  signal execute1_inInst_payload_ctrl_instVal : std_logic;
  signal execute1_inInst_payload_ctrl_br : BR_opt_type;
  signal execute1_inInst_payload_ctrl_jmp : std_logic;
  signal execute1_inInst_payload_ctrl_op0 : OP0_binary_sequential_type;
  signal execute1_inInst_payload_ctrl_op1 : OP1_binary_sequential_type;
  signal execute1_inInst_payload_ctrl_alu : ALU_opt_type;
  signal execute1_inInst_payload_ctrl_wb : WB_binary_sequential_type;
  signal execute1_inInst_payload_ctrl_rfen : std_logic;
  signal execute1_inInst_payload_ctrl_execute0AluBypass : std_logic;
  signal execute1_inInst_payload_ctrl_execute1AluBypass : std_logic;
  signal execute1_inInst_payload_ctrl_canInternalyStallWriteBack0 : std_logic;
  signal execute1_inInst_payload_ctrl_men : std_logic;
  signal execute1_inInst_payload_ctrl_m : M_binary_sequential_type;
  signal execute1_inInst_payload_ctrl_msk : MSK_binary_sequential_type;
  signal execute1_inInst_payload_ctrl_csr : CSR_binary_sequential_type;
  signal execute1_inInst_payload_ctrl_mfs : MFS;
  signal execute1_inInst_payload_ctrl_useSrc0 : std_logic;
  signal execute1_inInst_payload_ctrl_useSrc1 : std_logic;
  signal execute1_inInst_payload_ctrl_extensionTag : std_logic_vector(1 downto 0);
  signal execute1_inInst_payload_ctrl_fencei : std_logic;
  signal execute1_inInst_payload_br_eq : std_logic;
  signal execute1_inInst_payload_br_ltx : std_logic;
  signal execute1_inInst_payload_src1 : std_logic_vector(31 downto 0);
  signal execute1_inInst_payload_result : std_logic_vector(31 downto 0);
  signal execute1_inInst_payload_adder : unsigned(31 downto 0);
  signal execute1_inInst_payload_predictorHasBranch : std_logic;
  signal execute1_inInst_payload_branchHistory_valid : std_logic;
  signal execute1_inInst_payload_branchHistory_payload : signed(1 downto 0);
  signal execute1_inInst_payload_pcPlus4 : unsigned(31 downto 0);
  signal execute1_inInst_payload_pc_sel : PC_binary_sequential_type;
  signal execute1_inInst_payload_unalignedMemoryAccessException : std_logic;
  signal execute1_inInst_payload_needMemRsp : std_logic;
  signal execute1_inInst_payload_dCmdAddress : unsigned(31 downto 0);
  signal execute0_outInst_m2sPipe_rValid : std_logic;
  signal execute0_outInst_m2sPipe_rData_pc : unsigned(31 downto 0);
  signal execute0_outInst_m2sPipe_rData_instruction : std_logic_vector(31 downto 0);
  signal execute0_outInst_m2sPipe_rData_ctrl_instVal : std_logic;
  signal execute0_outInst_m2sPipe_rData_ctrl_br : BR_opt_type;
  signal execute0_outInst_m2sPipe_rData_ctrl_jmp : std_logic;
  signal execute0_outInst_m2sPipe_rData_ctrl_op0 : OP0_binary_sequential_type;
  signal execute0_outInst_m2sPipe_rData_ctrl_op1 : OP1_binary_sequential_type;
  signal execute0_outInst_m2sPipe_rData_ctrl_alu : ALU_opt_type;
  signal execute0_outInst_m2sPipe_rData_ctrl_wb : WB_binary_sequential_type;
  signal execute0_outInst_m2sPipe_rData_ctrl_rfen : std_logic;
  signal execute0_outInst_m2sPipe_rData_ctrl_execute0AluBypass : std_logic;
  signal execute0_outInst_m2sPipe_rData_ctrl_execute1AluBypass : std_logic;
  signal execute0_outInst_m2sPipe_rData_ctrl_canInternalyStallWriteBack0 : std_logic;
  signal execute0_outInst_m2sPipe_rData_ctrl_men : std_logic;
  signal execute0_outInst_m2sPipe_rData_ctrl_m : M_binary_sequential_type;
  signal execute0_outInst_m2sPipe_rData_ctrl_msk : MSK_binary_sequential_type;
  signal execute0_outInst_m2sPipe_rData_ctrl_csr : CSR_binary_sequential_type;
  signal execute0_outInst_m2sPipe_rData_ctrl_mfs : MFS;
  signal execute0_outInst_m2sPipe_rData_ctrl_useSrc0 : std_logic;
  signal execute0_outInst_m2sPipe_rData_ctrl_useSrc1 : std_logic;
  signal execute0_outInst_m2sPipe_rData_ctrl_extensionTag : std_logic_vector(1 downto 0);
  signal execute0_outInst_m2sPipe_rData_ctrl_fencei : std_logic;
  signal execute0_outInst_m2sPipe_rData_br_eq : std_logic;
  signal execute0_outInst_m2sPipe_rData_br_ltx : std_logic;
  signal execute0_outInst_m2sPipe_rData_src1 : std_logic_vector(31 downto 0);
  signal execute0_outInst_m2sPipe_rData_result : std_logic_vector(31 downto 0);
  signal execute0_outInst_m2sPipe_rData_adder : unsigned(31 downto 0);
  signal execute0_outInst_m2sPipe_rData_predictorHasBranch : std_logic;
  signal execute0_outInst_m2sPipe_rData_branchHistory_valid : std_logic;
  signal execute0_outInst_m2sPipe_rData_branchHistory_payload : signed(1 downto 0);
  signal execute0_outInst_m2sPipe_rData_pcPlus4 : unsigned(31 downto 0);
  signal execute0_outInst_m2sPipe_rData_pc_sel : PC_binary_sequential_type;
  signal execute0_outInst_m2sPipe_rData_unalignedMemoryAccessException : std_logic;
  signal execute0_outInst_m2sPipe_rData_needMemRsp : std_logic;
  signal execute0_outInst_m2sPipe_rData_dCmdAddress : unsigned(31 downto 0);
  signal execute1_halt : std_logic;
  signal execute1_throwIt : std_logic;
  signal execute1_pcLoad_valid : std_logic;
  signal execute1_pcLoad_payload : unsigned(31 downto 0);
  signal zz_23 : std_logic;
  signal execute1_line_pc : unsigned(13 downto 0);
  signal execute1_line_history : signed(1 downto 0);
  signal execute1_newHistory : signed(2 downto 0);
  signal execute1_outInst_valid : std_logic;
  signal execute1_outInst_ready : std_logic;
  signal execute1_outInst_payload_pc : unsigned(31 downto 0);
  signal execute1_outInst_payload_instruction : std_logic_vector(31 downto 0);
  signal execute1_outInst_payload_ctrl_instVal : std_logic;
  signal execute1_outInst_payload_ctrl_br : BR_opt_type;
  signal execute1_outInst_payload_ctrl_jmp : std_logic;
  signal execute1_outInst_payload_ctrl_op0 : OP0_binary_sequential_type;
  signal execute1_outInst_payload_ctrl_op1 : OP1_binary_sequential_type;
  signal execute1_outInst_payload_ctrl_alu : ALU_opt_type;
  signal execute1_outInst_payload_ctrl_wb : WB_binary_sequential_type;
  signal execute1_outInst_payload_ctrl_rfen : std_logic;
  signal execute1_outInst_payload_ctrl_execute0AluBypass : std_logic;
  signal execute1_outInst_payload_ctrl_execute1AluBypass : std_logic;
  signal execute1_outInst_payload_ctrl_canInternalyStallWriteBack0 : std_logic;
  signal execute1_outInst_payload_ctrl_men : std_logic;
  signal execute1_outInst_payload_ctrl_m : M_binary_sequential_type;
  signal execute1_outInst_payload_ctrl_msk : MSK_binary_sequential_type;
  signal execute1_outInst_payload_ctrl_csr : CSR_binary_sequential_type;
  signal execute1_outInst_payload_ctrl_mfs : MFS;
  signal execute1_outInst_payload_ctrl_useSrc0 : std_logic;
  signal execute1_outInst_payload_ctrl_useSrc1 : std_logic;
  signal execute1_outInst_payload_ctrl_extensionTag : std_logic_vector(1 downto 0);
  signal execute1_outInst_payload_ctrl_fencei : std_logic;
  signal execute1_outInst_payload_result : std_logic_vector(31 downto 0);
  signal execute1_outInst_payload_regFileAddress : unsigned(4 downto 0);
  signal execute1_outInst_payload_pcPlus4 : unsigned(31 downto 0);
  signal execute1_outInst_payload_unalignedMemoryAccessException : std_logic;
  signal execute1_outInst_payload_needMemRsp : std_logic;
  signal execute1_outInst_payload_dCmdAddress : unsigned(31 downto 0);
  signal execute1_inInst_thrown_valid : std_logic;
  signal execute1_inInst_thrown_ready : std_logic;
  signal execute1_inInst_thrown_payload_pc : unsigned(31 downto 0);
  signal execute1_inInst_thrown_payload_instruction : std_logic_vector(31 downto 0);
  signal execute1_inInst_thrown_payload_ctrl_instVal : std_logic;
  signal execute1_inInst_thrown_payload_ctrl_br : BR_opt_type;
  signal execute1_inInst_thrown_payload_ctrl_jmp : std_logic;
  signal execute1_inInst_thrown_payload_ctrl_op0 : OP0_binary_sequential_type;
  signal execute1_inInst_thrown_payload_ctrl_op1 : OP1_binary_sequential_type;
  signal execute1_inInst_thrown_payload_ctrl_alu : ALU_opt_type;
  signal execute1_inInst_thrown_payload_ctrl_wb : WB_binary_sequential_type;
  signal execute1_inInst_thrown_payload_ctrl_rfen : std_logic;
  signal execute1_inInst_thrown_payload_ctrl_execute0AluBypass : std_logic;
  signal execute1_inInst_thrown_payload_ctrl_execute1AluBypass : std_logic;
  signal execute1_inInst_thrown_payload_ctrl_canInternalyStallWriteBack0 : std_logic;
  signal execute1_inInst_thrown_payload_ctrl_men : std_logic;
  signal execute1_inInst_thrown_payload_ctrl_m : M_binary_sequential_type;
  signal execute1_inInst_thrown_payload_ctrl_msk : MSK_binary_sequential_type;
  signal execute1_inInst_thrown_payload_ctrl_csr : CSR_binary_sequential_type;
  signal execute1_inInst_thrown_payload_ctrl_mfs : MFS;
  signal execute1_inInst_thrown_payload_ctrl_useSrc0 : std_logic;
  signal execute1_inInst_thrown_payload_ctrl_useSrc1 : std_logic;
  signal execute1_inInst_thrown_payload_ctrl_extensionTag : std_logic_vector(1 downto 0);
  signal execute1_inInst_thrown_payload_ctrl_fencei : std_logic;
  signal execute1_inInst_thrown_payload_br_eq : std_logic;
  signal execute1_inInst_thrown_payload_br_ltx : std_logic;
  signal execute1_inInst_thrown_payload_src1 : std_logic_vector(31 downto 0);
  signal execute1_inInst_thrown_payload_result : std_logic_vector(31 downto 0);
  signal execute1_inInst_thrown_payload_adder : unsigned(31 downto 0);
  signal execute1_inInst_thrown_payload_predictorHasBranch : std_logic;
  signal execute1_inInst_thrown_payload_branchHistory_valid : std_logic;
  signal execute1_inInst_thrown_payload_branchHistory_payload : signed(1 downto 0);
  signal execute1_inInst_thrown_payload_pcPlus4 : unsigned(31 downto 0);
  signal execute1_inInst_thrown_payload_pc_sel : PC_binary_sequential_type;
  signal execute1_inInst_thrown_payload_unalignedMemoryAccessException : std_logic;
  signal execute1_inInst_thrown_payload_needMemRsp : std_logic;
  signal execute1_inInst_thrown_payload_dCmdAddress : unsigned(31 downto 0);
  signal zz_24 : std_logic;
  signal execute1_flush : std_logic;
  signal writeBack_inInst_valid : std_logic;
  signal writeBack_inInst_ready : std_logic;
  signal writeBack_inInst_payload_pc : unsigned(31 downto 0);
  signal writeBack_inInst_payload_instruction : std_logic_vector(31 downto 0);
  signal writeBack_inInst_payload_ctrl_instVal : std_logic;
  signal writeBack_inInst_payload_ctrl_br : BR_opt_type;
  signal writeBack_inInst_payload_ctrl_jmp : std_logic;
  signal writeBack_inInst_payload_ctrl_op0 : OP0_binary_sequential_type;
  signal writeBack_inInst_payload_ctrl_op1 : OP1_binary_sequential_type;
  signal writeBack_inInst_payload_ctrl_alu : ALU_opt_type;
  signal writeBack_inInst_payload_ctrl_wb : WB_binary_sequential_type;
  signal writeBack_inInst_payload_ctrl_rfen : std_logic;
  signal writeBack_inInst_payload_ctrl_execute0AluBypass : std_logic;
  signal writeBack_inInst_payload_ctrl_execute1AluBypass : std_logic;
  signal writeBack_inInst_payload_ctrl_canInternalyStallWriteBack0 : std_logic;
  signal writeBack_inInst_payload_ctrl_men : std_logic;
  signal writeBack_inInst_payload_ctrl_m : M_binary_sequential_type;
  signal writeBack_inInst_payload_ctrl_msk : MSK_binary_sequential_type;
  signal writeBack_inInst_payload_ctrl_csr : CSR_binary_sequential_type;
  signal writeBack_inInst_payload_ctrl_mfs : MFS;
  signal writeBack_inInst_payload_ctrl_useSrc0 : std_logic;
  signal writeBack_inInst_payload_ctrl_useSrc1 : std_logic;
  signal writeBack_inInst_payload_ctrl_extensionTag : std_logic_vector(1 downto 0);
  signal writeBack_inInst_payload_ctrl_fencei : std_logic;
  signal writeBack_inInst_payload_result : std_logic_vector(31 downto 0);
  signal writeBack_inInst_payload_regFileAddress : unsigned(4 downto 0);
  signal writeBack_inInst_payload_pcPlus4 : unsigned(31 downto 0);
  signal writeBack_inInst_payload_unalignedMemoryAccessException : std_logic;
  signal writeBack_inInst_payload_needMemRsp : std_logic;
  signal writeBack_inInst_payload_dCmdAddress : unsigned(31 downto 0);
  signal execute1_outInst_m2sPipe_rValid : std_logic;
  signal execute1_outInst_m2sPipe_rData_pc : unsigned(31 downto 0);
  signal execute1_outInst_m2sPipe_rData_instruction : std_logic_vector(31 downto 0);
  signal execute1_outInst_m2sPipe_rData_ctrl_instVal : std_logic;
  signal execute1_outInst_m2sPipe_rData_ctrl_br : BR_opt_type;
  signal execute1_outInst_m2sPipe_rData_ctrl_jmp : std_logic;
  signal execute1_outInst_m2sPipe_rData_ctrl_op0 : OP0_binary_sequential_type;
  signal execute1_outInst_m2sPipe_rData_ctrl_op1 : OP1_binary_sequential_type;
  signal execute1_outInst_m2sPipe_rData_ctrl_alu : ALU_opt_type;
  signal execute1_outInst_m2sPipe_rData_ctrl_wb : WB_binary_sequential_type;
  signal execute1_outInst_m2sPipe_rData_ctrl_rfen : std_logic;
  signal execute1_outInst_m2sPipe_rData_ctrl_execute0AluBypass : std_logic;
  signal execute1_outInst_m2sPipe_rData_ctrl_execute1AluBypass : std_logic;
  signal execute1_outInst_m2sPipe_rData_ctrl_canInternalyStallWriteBack0 : std_logic;
  signal execute1_outInst_m2sPipe_rData_ctrl_men : std_logic;
  signal execute1_outInst_m2sPipe_rData_ctrl_m : M_binary_sequential_type;
  signal execute1_outInst_m2sPipe_rData_ctrl_msk : MSK_binary_sequential_type;
  signal execute1_outInst_m2sPipe_rData_ctrl_csr : CSR_binary_sequential_type;
  signal execute1_outInst_m2sPipe_rData_ctrl_mfs : MFS;
  signal execute1_outInst_m2sPipe_rData_ctrl_useSrc0 : std_logic;
  signal execute1_outInst_m2sPipe_rData_ctrl_useSrc1 : std_logic;
  signal execute1_outInst_m2sPipe_rData_ctrl_extensionTag : std_logic_vector(1 downto 0);
  signal execute1_outInst_m2sPipe_rData_ctrl_fencei : std_logic;
  signal execute1_outInst_m2sPipe_rData_result : std_logic_vector(31 downto 0);
  signal execute1_outInst_m2sPipe_rData_regFileAddress : unsigned(4 downto 0);
  signal execute1_outInst_m2sPipe_rData_pcPlus4 : unsigned(31 downto 0);
  signal execute1_outInst_m2sPipe_rData_unalignedMemoryAccessException : std_logic;
  signal execute1_outInst_m2sPipe_rData_needMemRsp : std_logic;
  signal execute1_outInst_m2sPipe_rData_dCmdAddress : unsigned(31 downto 0);
  signal writeBack_throwIt : std_logic;
  signal writeBack_halt : std_logic;
  signal writeBack_irq_sources : std_logic_vector(7 downto 0);
  signal writeBack_irq_mask : std_logic_vector(7 downto 0);
  signal writeBack_irq_masked : std_logic_vector(7 downto 0);
  signal writeBack_irq_inhibate : std_logic;
  signal writeBack_pcLoad_valid : std_logic;
  signal writeBack_pcLoad_payload : unsigned(31 downto 0);
  signal writeBack_flushMemoryResponse : std_logic;
  signal zz_25 : std_logic;
  signal zz_26 : std_logic_vector(31 downto 0);
  signal zz_27 : std_logic;
  signal zz_28 : std_logic_vector(31 downto 0);
  signal writeBack_dataRspFormated : std_logic_vector(31 downto 0);
  signal writeBack_regFileData : std_logic_vector(31 downto 0);
  signal writeBack_outInst_valid : std_logic;
  signal writeBack_outInst_ready : std_logic;
  signal writeBack_outInst_payload_addr : unsigned(4 downto 0);
  signal writeBack_outInst_payload_data : std_logic_vector(31 downto 0);
  signal writeBack_inInst_thrown_valid : std_logic;
  signal writeBack_inInst_thrown_ready : std_logic;
  signal writeBack_inInst_thrown_payload_pc : unsigned(31 downto 0);
  signal writeBack_inInst_thrown_payload_instruction : std_logic_vector(31 downto 0);
  signal writeBack_inInst_thrown_payload_ctrl_instVal : std_logic;
  signal writeBack_inInst_thrown_payload_ctrl_br : BR_opt_type;
  signal writeBack_inInst_thrown_payload_ctrl_jmp : std_logic;
  signal writeBack_inInst_thrown_payload_ctrl_op0 : OP0_binary_sequential_type;
  signal writeBack_inInst_thrown_payload_ctrl_op1 : OP1_binary_sequential_type;
  signal writeBack_inInst_thrown_payload_ctrl_alu : ALU_opt_type;
  signal writeBack_inInst_thrown_payload_ctrl_wb : WB_binary_sequential_type;
  signal writeBack_inInst_thrown_payload_ctrl_rfen : std_logic;
  signal writeBack_inInst_thrown_payload_ctrl_execute0AluBypass : std_logic;
  signal writeBack_inInst_thrown_payload_ctrl_execute1AluBypass : std_logic;
  signal writeBack_inInst_thrown_payload_ctrl_canInternalyStallWriteBack0 : std_logic;
  signal writeBack_inInst_thrown_payload_ctrl_men : std_logic;
  signal writeBack_inInst_thrown_payload_ctrl_m : M_binary_sequential_type;
  signal writeBack_inInst_thrown_payload_ctrl_msk : MSK_binary_sequential_type;
  signal writeBack_inInst_thrown_payload_ctrl_csr : CSR_binary_sequential_type;
  signal writeBack_inInst_thrown_payload_ctrl_mfs : MFS;
  signal writeBack_inInst_thrown_payload_ctrl_useSrc0 : std_logic;
  signal writeBack_inInst_thrown_payload_ctrl_useSrc1 : std_logic;
  signal writeBack_inInst_thrown_payload_ctrl_extensionTag : std_logic_vector(1 downto 0);
  signal writeBack_inInst_thrown_payload_ctrl_fencei : std_logic;
  signal writeBack_inInst_thrown_payload_result : std_logic_vector(31 downto 0);
  signal writeBack_inInst_thrown_payload_regFileAddress : unsigned(4 downto 0);
  signal writeBack_inInst_thrown_payload_pcPlus4 : unsigned(31 downto 0);
  signal writeBack_inInst_thrown_payload_unalignedMemoryAccessException : std_logic;
  signal writeBack_inInst_thrown_payload_needMemRsp : std_logic;
  signal writeBack_inInst_thrown_payload_dCmdAddress : unsigned(31 downto 0);
  signal zz_29 : std_logic;
  signal writeBack_regFileWrite_valid : std_logic;
  signal writeBack_regFileWrite_payload_address : unsigned(4 downto 0);
  signal writeBack_regFileWrite_payload_data : std_logic_vector(31 downto 0);
  signal writeBack_flush : std_logic;
  signal writeBackBuffer_inInst_valid : std_logic;
  signal writeBackBuffer_inInst_ready : std_logic;
  signal writeBackBuffer_inInst_payload_addr : unsigned(4 downto 0);
  signal writeBackBuffer_inInst_payload_data : std_logic_vector(31 downto 0);
  signal writeBack_outInst_m2sPipe_rValid : std_logic;
  signal writeBack_outInst_m2sPipe_rData_addr : unsigned(4 downto 0);
  signal writeBack_outInst_m2sPipe_rData_data : std_logic_vector(31 downto 0);
  signal hazardTracker_src0Hazard : std_logic;
  signal hazardTracker_src1Hazard : std_logic;
  signal hazardTracker_W2R_addr0Match : std_logic;
  signal hazardTracker_W2R_addr1Match : std_logic;
  signal hazardTracker_A_addr0Match : std_logic;
  signal hazardTracker_A_addr1Match : std_logic;
  signal hazardTracker_E1_addr0Match : std_logic;
  signal hazardTracker_E1_addr1Match : std_logic;
  signal hazardTracker_E0_addr0Match : std_logic;
  signal hazardTracker_E0_addr1Match : std_logic;
  signal MulExtension_s1_aSigned : std_logic;
  signal MulExtension_s1_bSigned : std_logic;
  signal MulExtension_s1_a : std_logic_vector(31 downto 0);
  signal MulExtension_s1_b : std_logic_vector(31 downto 0);
  signal MulExtension_s1_aULow : unsigned(15 downto 0);
  signal MulExtension_s1_bULow : unsigned(15 downto 0);
  signal MulExtension_s1_aSLow : signed(16 downto 0);
  signal MulExtension_s1_bSLow : signed(16 downto 0);
  signal MulExtension_s1_aHigh : signed(16 downto 0);
  signal MulExtension_s1_bHigh : signed(16 downto 0);
  signal MulExtension_s1_mul_ll : unsigned(31 downto 0);
  signal MulExtension_s1_mul_lh : signed(33 downto 0);
  signal MulExtension_s1_mul_hl : signed(33 downto 0);
  signal MulExtension_s1_mul_hh : signed(33 downto 0);
  signal MulExtension_s2_mul_ll : unsigned(31 downto 0);
  signal MulExtension_s2_mul_lh : signed(33 downto 0);
  signal MulExtension_s2_mul_hl : signed(33 downto 0);
  signal MulExtension_s2_mul_hh : signed(33 downto 0);
  signal MulExtension_s2_low : signed(49 downto 0);
  signal MulExtension_s3_low : signed(49 downto 0);
  signal MulExtension_s3_mul_hh : signed(33 downto 0);
  signal MulExtension_s3_result : signed(65 downto 0);
  signal DivExtension_rspReady : std_logic;
  signal DivExtension_rsp : std_logic_vector(31 downto 0);
  signal barrelShifterLight_s1_amplitude : unsigned(4 downto 0);
  signal barrelShifterLight_s1_isShift : std_logic;
  signal SimpleInterrupExtension_inIrq : std_logic;
  signal SimpleInterrupExtension_exitPc : unsigned(31 downto 0);
  signal SimpleInterrupExtension_irqValue : std_logic_vector(7 downto 0);
  signal zz_30 : std_logic;
  signal zz_31 : std_logic;
  type regFile_type is array (0 to 31) of std_logic_vector(31 downto 0);
  signal regFile : regFile_type;
  type brancheCache_type is array (0 to 65535) of std_logic_vector(15 downto 0);
  signal brancheCache : brancheCache_type := (others => (others => '1'));
begin
  zz_48 <= (fetch_throwIt or fetch_throwNextIRsp);
  zz_49 <= pkg_toStdLogic((decode_inInst_payload_instruction and pkg_stdLogicVector("00000000000000000000000000000011")) = pkg_stdLogicVector("00000000000000000000000000000011"));
  zz_50 <= pkg_toStdLogic((decode_inInst_payload_instruction and pkg_stdLogicVector("00000000000000000000000001011100")) = pkg_stdLogicVector("00000000000000000000000000000000"));
  zz_51 <= pkg_toStdLogic((decode_inInst_payload_instruction and pkg_stdLogicVector("00000000000000000000000001111100")) = pkg_stdLogicVector("00000000000000000000000000010100"));
  zz_52 <= pkg_toStdLogic((decode_inInst_payload_instruction and pkg_stdLogicVector("00000000000000000000000001111100")) = pkg_stdLogicVector("00000000000000000000000000110100"));
  zz_53 <= pkg_toStdLogic((decode_inInst_payload_instruction and pkg_stdLogicVector("00000000000000000000000001011100")) = pkg_stdLogicVector("00000000000000000000000000010000"));
  zz_54 <= pkg_toStdLogic((decode_inInst_payload_instruction and pkg_stdLogicVector("00000000000000000000000000100000")) = pkg_stdLogicVector("00000000000000000000000000000000"));
  zz_55 <= ((not zz_4) or (pkg_toStdLogic((decode_inInst_payload_instruction and pkg_stdLogicVector("10111110000000000000000000000000")) = pkg_stdLogicVector("00000000000000000000000000000000")) and (not (pkg_extract(decode_inInst_payload_instruction,30) and (not pkg_extract(decode_inInst_payload_instruction,14))))));
  zz_56 <= pkg_toStdLogic((decode_inInst_payload_instruction and pkg_stdLogicVector("10111110000000000000000000000000")) = pkg_stdLogicVector("00000000000000000000000000000000"));
  zz_57 <= ((pkg_toStdLogic(pkg_extract(decode_inInst_payload_instruction,30) = pkg_toStdLogic(false)) or pkg_toStdLogic(pkg_extract(decode_inInst_payload_instruction,14,12) = pkg_stdLogicVector("000"))) or pkg_toStdLogic(pkg_extract(decode_inInst_payload_instruction,14,12) = pkg_stdLogicVector("101")));
  zz_58 <= pkg_toStdLogic((decode_inInst_payload_instruction and pkg_stdLogicVector("00000000000000000000000001111100")) = pkg_stdLogicVector("00000000000000000000000001101100"));
  zz_59 <= pkg_toStdLogic((decode_inInst_payload_instruction and pkg_stdLogicVector("00000000000000000000000001111100")) = pkg_stdLogicVector("00000000000000000000000001100100"));
  zz_60 <= pkg_toStdLogic((decode_inInst_payload_instruction and pkg_stdLogicVector("00000000000000000000000001111100")) = pkg_stdLogicVector("00000000000000000000000001100000"));
  zz_61 <= pkg_toStdLogic((decode_inInst_payload_instruction and pkg_stdLogicVector("00000000000000000000000001111100")) = pkg_stdLogicVector("00000000000000000000000001110000"));
  zz_62 <= pkg_toStdLogic((decode_inInst_payload_instruction and pkg_stdLogicVector("11111110000000000100000001111111")) = pkg_stdLogicVector("00000010000000000000000000110011"));
  zz_63 <= pkg_toStdLogic((decode_inInst_payload_instruction and pkg_stdLogicVector("11111110000000000100000001111111")) = pkg_stdLogicVector("00000010000000000100000000110011"));
  zz_64 <= pkg_toStdLogic((decode_inInst_payload_instruction and pkg_stdLogicVector("11111000000000000000000001111111")) = pkg_stdLogicVector("00000000000000000000000000001011"));
  zz_65 <= pkg_toStdLogic((decode_inInst_payload_instruction and pkg_stdLogicVector("00000000000000000000000000100000")) = pkg_stdLogicVector("00000000000000000000000000000000"));
  zz_66 <= ((not SimpleInterrupExtension_inIrq) and (not writeBack_irq_inhibate));
  zz_67 <= pkg_toStdLogic((writeBack_irq_masked and pkg_stdLogicVector("00000010")) /= pkg_stdLogicVector("00000000"));
  zz_68 <= (execute0_inInst_valid and pkg_toStdLogic(execute0_inInst_payload_ctrl_extensionTag = pkg_stdLogicVector("10")));
  zz_69 <= (execute0_inInst_valid and barrelShifterLight_s1_isShift);
  zz_70 <= pkg_toStdLogic(barrelShifterLight_s1_amplitude /= pkg_unsigned("00000"));
  zz_71 <= pkg_toStdLogic(execute1_inInst_payload_ctrl_extensionTag = pkg_stdLogicVector("11"));
  zz_72 <= pkg_extract(execute1_inInst_payload_instruction,26,25);
  zz_73 <= (execute1_inInst_valid and pkg_toStdLogic(execute1_inInst_payload_ctrl_extensionTag = pkg_stdLogicVector("10")));
  zz_74 <= (((decode_inInst_valid and (not execute0_inInst_valid)) and (not execute1_inInst_valid)) and (not writeBack_inInst_valid));
  zz_75 <= (writeBack_inInst_valid and writeBack_inInst_payload_ctrl_rfen);
  zz_76 <= (pkg_toStdLogic(true) or (not writeBack_outInst_valid));
  zz_77 <= (execute1_inInst_valid and execute1_outInst_payload_ctrl_rfen);
  zz_78 <= ((pkg_toStdLogic(true) or (not execute1_inInst_payload_ctrl_execute1AluBypass)) or (not execute1_outInst_valid));
  zz_79 <= (execute0_inInst_valid and execute0_outInst_payload_ctrl_rfen);
  zz_80 <= ((pkg_toStdLogic(true) or (not execute0_inInst_payload_ctrl_execute0AluBypass)) or (not execute0_outInst_valid));
  zz_81 <= pkg_extract(execute0_inInst_payload_instruction,13,12);
  zz_82 <= pkg_extract(writeBack_inInst_payload_instruction,13,12);
  zz_83 <= pkg_toStdLogic(true);
  zz_84 <= pkg_toStdLogic(true);
  zz_85 <= pkg_extract(execute1_inInst_payload_pc,17,2);
  zz_86 <= pkg_cat(std_logic_vector(execute1_line_history),std_logic_vector(execute1_line_pc));
  zz_87 <= pkg_extract(decode_inInst_payload_instruction,31);
  zz_88 <= pkg_extract(decode_inInst_payload_instruction,31);
  zz_89 <= pkg_extract(decode_inInst_payload_instruction,7);
  process(clk)
  begin
    if rising_edge(clk) then
      if zz_83 = '1' then
        zz_46 <= regFile(to_integer(decode_regFileReadAddress0));
      end if;
    end if;
  end process;

  process(clk)
  begin
    if rising_edge(clk) then
      if zz_84 = '1' then
        zz_47 <= regFile(to_integer(decode_regFileReadAddress1));
      end if;
    end if;
  end process;

  process(clk)
  begin
    if rising_edge(clk) then
      if zz_1 = '1' then
        regFile(to_integer(writeBack_regFileWrite_payload_address)) <= writeBack_regFileWrite_payload_data;
      end if;
    end if;
  end process;

  process(clk)
  begin
    if rising_edge(clk) then
      if zz_2 = '1' then
        brancheCache(to_integer(zz_85)) <= zz_86;
      end if;
    end if;
  end process;

  execute0_alu : entity work.Alu_1
    port map ( 
      io_func => execute0_inInst_payload_ctrl_alu,
      io_doSub => execute0_inInst_payload_doSub,
      io_src0 => execute0_inInst_payload_alu_op0,
      io_src1 => execute0_inInst_payload_alu_op1,
      io_result => execute0_alu_io_result,
      io_adder => execute0_alu_io_adder 
    );
  DivExtension_divider : entity work.MixedDivider
    port map ( 
      io_flush => execute1_throwIt,
      io_cmd_valid => zz_43,
      io_cmd_ready => DivExtension_divider_io_cmd_ready,
      io_cmd_payload_numerator => execute0_inInst_payload_alu_op0,
      io_cmd_payload_denominator => execute0_inInst_payload_alu_op1,
      io_cmd_payload_signed => zz_44,
      io_rsp_valid => DivExtension_divider_io_rsp_valid,
      io_rsp_ready => zz_45,
      io_rsp_payload_quotient => DivExtension_divider_io_rsp_payload_quotient,
      io_rsp_payload_remainder => DivExtension_divider_io_rsp_payload_remainder,
      io_rsp_payload_error => DivExtension_divider_io_rsp_payload_error,
      clk => clk,
      reset => reset 
    );
  process(writeBack_regFileWrite_valid)
  begin
    zz_1 <= pkg_toStdLogic(false);
    if writeBack_regFileWrite_valid = '1' then
      zz_1 <= pkg_toStdLogic(true);
    end if;
  end process;

  process(execute1_inInst_valid,execute1_inInst_ready,execute1_inInst_payload_ctrl_br,execute1_newHistory)
  begin
    zz_2 <= pkg_toStdLogic(false);
    if ((((execute1_inInst_valid and execute1_inInst_ready) and pkg_toStdLogic(execute1_inInst_payload_ctrl_br /= BR_opt_JR)) and pkg_toStdLogic(execute1_inInst_payload_ctrl_br /= BR_opt_N)) and pkg_toStdLogic(execute1_inInst_payload_ctrl_br /= BR_opt_J)) = '1' then
      if (pkg_toStdLogic(pkg_extract(execute1_newHistory,2,1) /= pkg_signed("10")) and pkg_toStdLogic(pkg_extract(execute1_newHistory,2,1) /= pkg_signed("01"))) = '1' then
        zz_2 <= pkg_toStdLogic(true);
      end if;
    end if;
  end process;

  prefetch_halt <= pkg_toStdLogic(false);
  process(prefetch_pc,prefetch_inc,prefetch_pcLoad_valid,prefetch_pcLoad_payload)
  begin
    prefetch_pcNext <= (prefetch_pc + pkg_resize(pkg_mux(prefetch_inc,pkg_unsigned("100"),pkg_unsigned("000")),32));
    if prefetch_pcLoad_valid = '1' then
      prefetch_pcNext <= prefetch_pcLoad_payload;
    end if;
  end process;

  process(prefetch_resetDone,prefetch_halt,fetch_pendingPrefetch_value)
  begin
    iCmd_valid <= (prefetch_resetDone and (not prefetch_halt));
    if pkg_toStdLogic(fetch_pendingPrefetch_value = pkg_unsigned("11")) = '1' then
      iCmd_valid <= pkg_toStdLogic(false);
    end if;
  end process;

  iCmd_payload_pc <= prefetch_pcNext;
  process(fetch_flush,decode_flush,execute0_flush,execute1_flush,writeBack_flush)
  begin
    fetch_throwIt <= pkg_toStdLogic(false);
    if fetch_flush = '1' then
      fetch_throwIt <= pkg_toStdLogic(true);
    end if;
    if decode_flush = '1' then
      fetch_throwIt <= pkg_toStdLogic(true);
    end if;
    if execute0_flush = '1' then
      fetch_throwIt <= pkg_toStdLogic(true);
    end if;
    if execute1_flush = '1' then
      fetch_throwIt <= pkg_toStdLogic(true);
    end if;
    if writeBack_flush = '1' then
      fetch_throwIt <= pkg_toStdLogic(true);
    end if;
  end process;

  fetch_flush <= pkg_toStdLogic(false);
  process(iCmd_valid,iCmd_ready)
  begin
    fetch_pendingPrefetch_incrementIt <= pkg_toStdLogic(false);
    if (iCmd_valid and iCmd_ready) = '1' then
      fetch_pendingPrefetch_incrementIt <= pkg_toStdLogic(true);
    end if;
  end process;

  process(iRsp_valid,iRsp_ready)
  begin
    fetch_pendingPrefetch_decrementIt <= pkg_toStdLogic(false);
    if (iRsp_valid and iRsp_ready) = '1' then
      fetch_pendingPrefetch_decrementIt <= pkg_toStdLogic(true);
    end if;
  end process;

  fetch_pendingPrefetch_willOverflowIfInc <= (pkg_toStdLogic(fetch_pendingPrefetch_value = pkg_unsigned("11")) and (not fetch_pendingPrefetch_decrementIt));
  fetch_pendingPrefetch_willOverflow <= (fetch_pendingPrefetch_willOverflowIfInc and fetch_pendingPrefetch_incrementIt);
  process(fetch_pendingPrefetch_incrementIt,fetch_pendingPrefetch_decrementIt)
  begin
    if (fetch_pendingPrefetch_incrementIt and (not fetch_pendingPrefetch_decrementIt)) = '1' then
      fetch_pendingPrefetch_finalIncrement <= pkg_unsigned("01");
    else
      if ((not fetch_pendingPrefetch_incrementIt) and fetch_pendingPrefetch_decrementIt) = '1' then
        fetch_pendingPrefetch_finalIncrement <= pkg_unsigned("11");
      else
        fetch_pendingPrefetch_finalIncrement <= pkg_unsigned("00");
      end if;
    end if;
  end process;

  fetch_pendingPrefetch_valueNext <= (fetch_pendingPrefetch_value + fetch_pendingPrefetch_finalIncrement);
  fetch_throwNextIRsp <= pkg_toStdLogic(fetch_throwRemaining /= pkg_unsigned("00"));
  process(iRsp_valid,zz_48)
  begin
    iRsp_thrown_valid <= iRsp_valid;
    if zz_48 = '1' then
      iRsp_thrown_valid <= pkg_toStdLogic(false);
    end if;
  end process;

  process(iRsp_thrown_ready,zz_48)
  begin
    iRsp_ready <= iRsp_thrown_ready;
    if zz_48 = '1' then
      iRsp_ready <= pkg_toStdLogic(true);
    end if;
  end process;

  iRsp_thrown_payload_instruction <= iRsp_payload_instruction;
  iRsp_thrown_payload_pc <= iRsp_payload_pc;
  fetch_outInst_valid <= iRsp_thrown_valid;
  iRsp_thrown_ready <= fetch_outInst_ready;
  fetch_outInst_payload_pc <= iRsp_payload_pc;
  fetch_outInst_payload_instruction <= iRsp_payload_instruction;
  fetch_outInst_payload_branchCacheLine_pc <= pkg_unsigned("00000000000000");
  fetch_outInst_payload_branchCacheLine_history <= pkg_signed("00");
  fetch_outInst_ready <= ((pkg_toStdLogic(true) and (not decode_inInst_valid)) or decode_inInst_ready);
  decode_inInst_valid <= fetch_outInst_m2sPipe_rValid;
  decode_inInst_payload_pc <= fetch_outInst_m2sPipe_rData_pc;
  decode_inInst_payload_instruction <= fetch_outInst_m2sPipe_rData_instruction;
  decode_inInst_payload_branchCacheLine_pc <= fetch_outInst_m2sPipe_rData_branchCacheLine_pc;
  decode_inInst_payload_branchCacheLine_history <= fetch_outInst_m2sPipe_rData_branchCacheLine_history;
  process(zz_49,zz_50,zz_51,zz_52,zz_53,zz_54,zz_55,zz_56,zz_57,zz_58,zz_59,zz_60,zz_61,zz_62,zz_63,zz_64)
  begin
    decode_ctrl_instVal <= pkg_toStdLogic(false);
    if zz_49 = '1' then
      if zz_50 = '1' then
        decode_ctrl_instVal <= pkg_toStdLogic(true);
      end if;
      if zz_51 = '1' then
        decode_ctrl_instVal <= pkg_toStdLogic(true);
      end if;
      if zz_52 = '1' then
        decode_ctrl_instVal <= pkg_toStdLogic(true);
      end if;
      if zz_53 = '1' then
        if zz_54 = '1' then
          if zz_55 = '1' then
            decode_ctrl_instVal <= pkg_toStdLogic(true);
          end if;
        else
          if zz_56 = '1' then
            if zz_57 = '1' then
              decode_ctrl_instVal <= pkg_toStdLogic(true);
            end if;
          end if;
        end if;
      end if;
      if zz_58 = '1' then
        decode_ctrl_instVal <= pkg_toStdLogic(true);
      end if;
      if zz_59 = '1' then
        decode_ctrl_instVal <= pkg_toStdLogic(true);
      end if;
      if zz_60 = '1' then
        decode_ctrl_instVal <= pkg_toStdLogic(true);
      end if;
      if zz_61 = '1' then
        decode_ctrl_instVal <= pkg_toStdLogic(true);
      end if;
    end if;
    if zz_62 = '1' then
      decode_ctrl_instVal <= pkg_toStdLogic(true);
    end if;
    if zz_63 = '1' then
      decode_ctrl_instVal <= pkg_toStdLogic(true);
    end if;
    if zz_64 = '1' then
      decode_ctrl_instVal <= pkg_toStdLogic(true);
    end if;
  end process;

  process(zz_49,zz_58,zz_59,zz_60,zz_7)
  begin
    decode_ctrl_br <= BR_opt_N;
    if zz_49 = '1' then
      if zz_58 = '1' then
        decode_ctrl_br <= BR_opt_J;
      end if;
      if zz_59 = '1' then
        decode_ctrl_br <= BR_opt_JR;
      end if;
      if zz_60 = '1' then
        decode_ctrl_br <= zz_7;
      end if;
    end if;
  end process;

  process(zz_49,zz_58,zz_59)
  begin
    decode_ctrl_jmp <= pkg_toStdLogic(false);
    if zz_49 = '1' then
      if zz_58 = '1' then
        decode_ctrl_jmp <= pkg_toStdLogic(true);
      end if;
      if zz_59 = '1' then
        decode_ctrl_jmp <= pkg_toStdLogic(true);
      end if;
    end if;
  end process;

  process(zz_49,zz_50,zz_51,zz_52,zz_53,zz_54,zz_55,zz_56,zz_57,zz_58,zz_59,zz_60,zz_61,decode_inInst_payload_instruction,zz_62,zz_63)
  begin
    decode_ctrl_op0 <= OP0_binary_sequential_RS;
    if zz_49 = '1' then
      if zz_50 = '1' then
        decode_ctrl_op0 <= OP0_binary_sequential_RS;
      end if;
      if zz_51 = '1' then
        decode_ctrl_op0 <= OP0_binary_sequential_IMU;
      end if;
      if zz_52 = '1' then
        decode_ctrl_op0 <= OP0_binary_sequential_IMU;
      end if;
      if zz_53 = '1' then
        if zz_54 = '1' then
          if zz_55 = '1' then
            decode_ctrl_op0 <= OP0_binary_sequential_RS;
          end if;
        else
          if zz_56 = '1' then
            if zz_57 = '1' then
              decode_ctrl_op0 <= OP0_binary_sequential_RS;
            end if;
          end if;
        end if;
      end if;
      if zz_58 = '1' then
        decode_ctrl_op0 <= OP0_binary_sequential_IMJB;
      end if;
      if zz_59 = '1' then
        decode_ctrl_op0 <= OP0_binary_sequential_RS;
      end if;
      if zz_60 = '1' then
        decode_ctrl_op0 <= OP0_binary_sequential_IMJB;
      end if;
      if zz_61 = '1' then
        if pkg_toStdLogic((decode_inInst_payload_instruction and pkg_stdLogicVector("00000000000000000100000000000000")) = pkg_stdLogicVector("00000000000000000100000000000000")) = '1' then
          decode_ctrl_op0 <= OP0_binary_sequential_IMZ;
        else
          decode_ctrl_op0 <= OP0_binary_sequential_RS;
        end if;
      end if;
    end if;
    if zz_62 = '1' then
      decode_ctrl_op0 <= OP0_binary_sequential_RS;
    end if;
    if zz_63 = '1' then
      decode_ctrl_op0 <= OP0_binary_sequential_RS;
    end if;
  end process;

  process(zz_49,zz_50,zz_65,zz_51,zz_53,zz_54,zz_55,zz_56,zz_57,zz_58,zz_59,zz_60,zz_62,zz_63)
  begin
    decode_ctrl_op1 <= OP1_binary_sequential_RS;
    if zz_49 = '1' then
      if zz_50 = '1' then
        if zz_65 = '1' then
          decode_ctrl_op1 <= OP1_binary_sequential_IMI;
        else
          decode_ctrl_op1 <= OP1_binary_sequential_IMS;
        end if;
      end if;
      if zz_51 = '1' then
        decode_ctrl_op1 <= OP1_binary_sequential_PC_1;
      end if;
      if zz_53 = '1' then
        if zz_54 = '1' then
          if zz_55 = '1' then
            decode_ctrl_op1 <= OP1_binary_sequential_IMI;
          end if;
        else
          if zz_56 = '1' then
            if zz_57 = '1' then
              decode_ctrl_op1 <= OP1_binary_sequential_RS;
            end if;
          end if;
        end if;
      end if;
      if zz_58 = '1' then
        decode_ctrl_op1 <= OP1_binary_sequential_PC_1;
      end if;
      if zz_59 = '1' then
        decode_ctrl_op1 <= OP1_binary_sequential_IMI;
      end if;
      if zz_60 = '1' then
        decode_ctrl_op1 <= OP1_binary_sequential_PC_1;
      end if;
    end if;
    if zz_62 = '1' then
      decode_ctrl_op1 <= OP1_binary_sequential_RS;
    end if;
    if zz_63 = '1' then
      decode_ctrl_op1 <= OP1_binary_sequential_RS;
    end if;
  end process;

  process(zz_49,zz_50,zz_51,zz_52,zz_53,zz_54,zz_55,zz_5,zz_56,zz_57,zz_6,zz_58,zz_59,zz_60,zz_61,zz_64)
  begin
    decode_ctrl_alu <= ALU_opt_ADD;
    if zz_49 = '1' then
      if zz_50 = '1' then
        decode_ctrl_alu <= ALU_opt_ADD;
      end if;
      if zz_51 = '1' then
        decode_ctrl_alu <= ALU_opt_ADD;
      end if;
      if zz_52 = '1' then
        decode_ctrl_alu <= ALU_opt_COPY;
      end if;
      if zz_53 = '1' then
        if zz_54 = '1' then
          if zz_55 = '1' then
            decode_ctrl_alu <= zz_5;
          end if;
        else
          if zz_56 = '1' then
            if zz_57 = '1' then
              decode_ctrl_alu <= zz_6;
            end if;
          end if;
        end if;
      end if;
      if zz_58 = '1' then
        decode_ctrl_alu <= ALU_opt_ADD;
      end if;
      if zz_59 = '1' then
        decode_ctrl_alu <= ALU_opt_ADD;
      end if;
      if zz_60 = '1' then
        decode_ctrl_alu <= ALU_opt_ADD;
      end if;
      if zz_61 = '1' then
        decode_ctrl_alu <= ALU_opt_COPY;
      end if;
    end if;
    if zz_64 = '1' then
      decode_ctrl_alu <= ALU_opt_COPY;
    end if;
  end process;

  process(zz_49,zz_50,zz_65,zz_51,zz_52,zz_53,zz_54,zz_55,zz_56,zz_57,zz_58,zz_59,zz_61,zz_62,zz_63,zz_64)
  begin
    decode_ctrl_wb <= WB_binary_sequential_ALU_1;
    if zz_49 = '1' then
      if zz_50 = '1' then
        if zz_65 = '1' then
          decode_ctrl_wb <= WB_binary_sequential_MEM;
        end if;
      end if;
      if zz_51 = '1' then
        decode_ctrl_wb <= WB_binary_sequential_ALU_1;
      end if;
      if zz_52 = '1' then
        decode_ctrl_wb <= WB_binary_sequential_ALU_1;
      end if;
      if zz_53 = '1' then
        if zz_54 = '1' then
          if zz_55 = '1' then
            decode_ctrl_wb <= WB_binary_sequential_ALU_1;
          end if;
        else
          if zz_56 = '1' then
            if zz_57 = '1' then
              decode_ctrl_wb <= WB_binary_sequential_ALU_1;
            end if;
          end if;
        end if;
      end if;
      if zz_58 = '1' then
        decode_ctrl_wb <= WB_binary_sequential_PC4;
      end if;
      if zz_59 = '1' then
        decode_ctrl_wb <= WB_binary_sequential_PC4;
      end if;
      if zz_61 = '1' then
        decode_ctrl_wb <= WB_binary_sequential_CSR1;
      end if;
    end if;
    if zz_62 = '1' then
      decode_ctrl_wb <= WB_binary_sequential_ALU_1;
    end if;
    if zz_63 = '1' then
      decode_ctrl_wb <= WB_binary_sequential_ALU_1;
    end if;
    if zz_64 = '1' then
      decode_ctrl_wb <= WB_binary_sequential_ALU_1;
    end if;
  end process;

  process(zz_49,zz_50,zz_65,zz_51,zz_52,zz_53,zz_54,zz_55,zz_56,zz_57,zz_58,zz_59,zz_61,zz_62,zz_63,zz_64,decode_inInst_payload_instruction)
  begin
    decode_ctrl_rfen <= pkg_toStdLogic(false);
    if zz_49 = '1' then
      if zz_50 = '1' then
        if zz_65 = '1' then
          decode_ctrl_rfen <= pkg_toStdLogic(true);
        end if;
      end if;
      if zz_51 = '1' then
        decode_ctrl_rfen <= pkg_toStdLogic(true);
      end if;
      if zz_52 = '1' then
        decode_ctrl_rfen <= pkg_toStdLogic(true);
      end if;
      if zz_53 = '1' then
        if zz_54 = '1' then
          if zz_55 = '1' then
            decode_ctrl_rfen <= pkg_toStdLogic(true);
          end if;
        else
          if zz_56 = '1' then
            if zz_57 = '1' then
              decode_ctrl_rfen <= pkg_toStdLogic(true);
            end if;
          end if;
        end if;
      end if;
      if zz_58 = '1' then
        decode_ctrl_rfen <= pkg_toStdLogic(true);
      end if;
      if zz_59 = '1' then
        decode_ctrl_rfen <= pkg_toStdLogic(true);
      end if;
      if zz_61 = '1' then
        decode_ctrl_rfen <= pkg_toStdLogic(true);
      end if;
    end if;
    if zz_62 = '1' then
      decode_ctrl_rfen <= pkg_toStdLogic(true);
    end if;
    if zz_63 = '1' then
      decode_ctrl_rfen <= pkg_toStdLogic(true);
    end if;
    if zz_64 = '1' then
      if pkg_extract(decode_inInst_payload_instruction,25) = '1' then
        decode_ctrl_rfen <= pkg_toStdLogic(true);
      end if;
    end if;
  end process;

  process(zz_49,zz_51,zz_52,zz_53,zz_54,zz_55,zz_4,zz_56,zz_57,zz_62,zz_63)
  begin
    decode_ctrl_execute0AluBypass <= pkg_toStdLogic(false);
    if zz_49 = '1' then
      if zz_51 = '1' then
        decode_ctrl_execute0AluBypass <= pkg_toStdLogic(true);
      end if;
      if zz_52 = '1' then
        decode_ctrl_execute0AluBypass <= pkg_toStdLogic(true);
      end if;
      if zz_53 = '1' then
        if zz_54 = '1' then
          if zz_55 = '1' then
            decode_ctrl_execute0AluBypass <= (not zz_4);
          end if;
        else
          if zz_56 = '1' then
            if zz_57 = '1' then
              decode_ctrl_execute0AluBypass <= (not zz_4);
            end if;
          end if;
        end if;
      end if;
    end if;
    if zz_62 = '1' then
      decode_ctrl_execute0AluBypass <= pkg_toStdLogic(false);
    end if;
    if zz_63 = '1' then
      decode_ctrl_execute0AluBypass <= pkg_toStdLogic(false);
    end if;
  end process;

  process(zz_49,zz_51,zz_52,zz_53,zz_54,zz_55,zz_56,zz_57,zz_62,zz_63)
  begin
    decode_ctrl_execute1AluBypass <= pkg_toStdLogic(false);
    if zz_49 = '1' then
      if zz_51 = '1' then
        decode_ctrl_execute1AluBypass <= pkg_toStdLogic(true);
      end if;
      if zz_52 = '1' then
        decode_ctrl_execute1AluBypass <= pkg_toStdLogic(true);
      end if;
      if zz_53 = '1' then
        if zz_54 = '1' then
          if zz_55 = '1' then
            decode_ctrl_execute1AluBypass <= pkg_toStdLogic(true);
          end if;
        else
          if zz_56 = '1' then
            if zz_57 = '1' then
              decode_ctrl_execute1AluBypass <= pkg_toStdLogic(true);
            end if;
          end if;
        end if;
      end if;
    end if;
    if zz_62 = '1' then
      decode_ctrl_execute1AluBypass <= pkg_toStdLogic(false);
    end if;
    if zz_63 = '1' then
      decode_ctrl_execute1AluBypass <= pkg_toStdLogic(true);
    end if;
  end process;

  decode_ctrl_canInternalyStallWriteBack0 <= pkg_toStdLogic(false);
  process(zz_49,zz_50)
  begin
    decode_ctrl_men <= pkg_toStdLogic(false);
    if zz_49 = '1' then
      if zz_50 = '1' then
        decode_ctrl_men <= pkg_toStdLogic(true);
      end if;
    end if;
  end process;

  process(zz_49,zz_50,zz_65)
  begin
    decode_ctrl_m <= M_binary_sequential_XRD;
    if zz_49 = '1' then
      if zz_50 = '1' then
        if zz_65 = '1' then
          decode_ctrl_m <= M_binary_sequential_XRD;
        else
          decode_ctrl_m <= M_binary_sequential_XWR;
        end if;
      end if;
    end if;
  end process;

  zz_3 <= pkg_extract(decode_inInst_payload_instruction,13,12);
  decode_ctrl_msk <= zz_3;
  process(zz_49,zz_61,zz_8)
  begin
    decode_ctrl_csr <= CSR_binary_sequential_N;
    if zz_49 = '1' then
      if zz_61 = '1' then
        decode_ctrl_csr <= zz_8;
      end if;
    end if;
  end process;

  decode_ctrl_mfs <= pkg_enum.N;
  process(zz_49,zz_50,zz_53,zz_54,zz_55,zz_56,zz_57,zz_59,zz_60,zz_62,zz_63)
  begin
    decode_ctrl_useSrc0 <= pkg_toStdLogic(false);
    if zz_49 = '1' then
      if zz_50 = '1' then
        decode_ctrl_useSrc0 <= pkg_toStdLogic(true);
      end if;
      if zz_53 = '1' then
        if zz_54 = '1' then
          if zz_55 = '1' then
            decode_ctrl_useSrc0 <= pkg_toStdLogic(true);
          end if;
        else
          if zz_56 = '1' then
            if zz_57 = '1' then
              decode_ctrl_useSrc0 <= pkg_toStdLogic(true);
            end if;
          end if;
        end if;
      end if;
      if zz_59 = '1' then
        decode_ctrl_useSrc0 <= pkg_toStdLogic(true);
      end if;
      if zz_60 = '1' then
        decode_ctrl_useSrc0 <= pkg_toStdLogic(true);
      end if;
    end if;
    if zz_62 = '1' then
      decode_ctrl_useSrc0 <= pkg_toStdLogic(true);
    end if;
    if zz_63 = '1' then
      decode_ctrl_useSrc0 <= pkg_toStdLogic(true);
    end if;
  end process;

  process(zz_49,zz_50,zz_65,zz_53,zz_54,zz_56,zz_57,zz_60,zz_62,zz_63)
  begin
    decode_ctrl_useSrc1 <= pkg_toStdLogic(false);
    if zz_49 = '1' then
      if zz_50 = '1' then
        if zz_65 = '0' then
          decode_ctrl_useSrc1 <= pkg_toStdLogic(true);
        end if;
      end if;
      if zz_53 = '1' then
        if zz_54 = '0' then
          if zz_56 = '1' then
            if zz_57 = '1' then
              decode_ctrl_useSrc1 <= pkg_toStdLogic(true);
            end if;
          end if;
        end if;
      end if;
      if zz_60 = '1' then
        decode_ctrl_useSrc1 <= pkg_toStdLogic(true);
      end if;
    end if;
    if zz_62 = '1' then
      decode_ctrl_useSrc1 <= pkg_toStdLogic(true);
    end if;
    if zz_63 = '1' then
      decode_ctrl_useSrc1 <= pkg_toStdLogic(true);
    end if;
  end process;

  process(zz_62,zz_63,zz_64)
  begin
    decode_ctrl_extensionTag <= pkg_stdLogicVector("00");
    if zz_62 = '1' then
      decode_ctrl_extensionTag <= pkg_stdLogicVector("01");
    end if;
    if zz_63 = '1' then
      decode_ctrl_extensionTag <= pkg_stdLogicVector("10");
    end if;
    if zz_64 = '1' then
      decode_ctrl_extensionTag <= pkg_stdLogicVector("11");
    end if;
  end process;

  process(zz_49,decode_inInst_payload_instruction)
  begin
    decode_ctrl_fencei <= pkg_toStdLogic(false);
    if zz_49 = '1' then
      decode_ctrl_fencei <= pkg_toStdLogic((decode_inInst_payload_instruction and pkg_stdLogicVector("11111111111111111111111111111100")) = pkg_stdLogicVector("00000000000000000001000000001100"));
    end if;
  end process;

  zz_4 <= pkg_toStdLogic((decode_inInst_payload_instruction and pkg_stdLogicVector("00000000000000000011000000000000")) = pkg_stdLogicVector("00000000000000000001000000000000"));
  zz_5 <= pkg_cat(pkg_toStdLogicVector((zz_4 and pkg_extract(decode_inInst_payload_instruction,30))),pkg_extract(decode_inInst_payload_instruction,14,12));
  zz_6 <= pkg_cat(pkg_toStdLogicVector(pkg_extract(decode_inInst_payload_instruction,30)),pkg_extract(decode_inInst_payload_instruction,14,12));
  zz_7 <= pkg_cat(pkg_toStdLogicVector(pkg_toStdLogic(false)),pkg_extract(decode_inInst_payload_instruction,14,12));
  zz_8 <= pkg_extract(decode_inInst_payload_instruction,13,12);
  process(decode_flush,execute0_flush,execute1_flush,writeBack_flush)
  begin
    decode_throwIt <= pkg_toStdLogic(false);
    if decode_flush = '1' then
      decode_throwIt <= pkg_toStdLogic(true);
    end if;
    if execute0_flush = '1' then
      decode_throwIt <= pkg_toStdLogic(true);
    end if;
    if execute1_flush = '1' then
      decode_throwIt <= pkg_toStdLogic(true);
    end if;
    if writeBack_flush = '1' then
      decode_throwIt <= pkg_toStdLogic(true);
    end if;
  end process;

  process(decode_hazard,zz_66,zz_67,zz_31)
  begin
    decode_halt <= pkg_toStdLogic(false);
    if decode_hazard = '1' then
      decode_halt <= pkg_toStdLogic(true);
    end if;
    if zz_66 = '1' then
      if zz_67 = '0' then
        if zz_31 = '1' then
          decode_halt <= pkg_toStdLogic(true);
        end if;
      end if;
    end if;
  end process;

  decode_addr0 <= unsigned(pkg_extract(decode_inInst_payload_instruction,19,15));
  decode_addr1 <= unsigned(pkg_extract(decode_inInst_payload_instruction,24,20));
  decode_addr0IsZero <= pkg_toStdLogic(decode_addr0 = pkg_unsigned("00000"));
  decode_addr1IsZero <= pkg_toStdLogic(decode_addr1 = pkg_unsigned("00000"));
  decode_srcInstruction <= pkg_mux((decode_inInst_valid and (not decode_inInst_ready)),decode_inInst_payload_instruction,fetch_outInst_payload_instruction);
  decode_regFileReadAddress0 <= unsigned(pkg_extract(decode_srcInstruction,19,15));
  decode_regFileReadAddress1 <= unsigned(pkg_extract(decode_srcInstruction,24,20));
  decode_src0 <= zz_46;
  decode_src1 <= zz_47;
  zz_9 <= pkg_extract(pkg_cat(pkg_cat(pkg_cat(pkg_toStdLogicVector(pkg_extract(decode_inInst_payload_instruction,31)),pkg_extract(decode_inInst_payload_instruction,19,12)),pkg_toStdLogicVector(pkg_extract(decode_inInst_payload_instruction,20))),pkg_extract(decode_inInst_payload_instruction,30,21)),19);
  process(zz_9)
  begin
    zz_10(10) <= zz_9;
    zz_10(9) <= zz_9;
    zz_10(8) <= zz_9;
    zz_10(7) <= zz_9;
    zz_10(6) <= zz_9;
    zz_10(5) <= zz_9;
    zz_10(4) <= zz_9;
    zz_10(3) <= zz_9;
    zz_10(2) <= zz_9;
    zz_10(1) <= zz_9;
    zz_10(0) <= zz_9;
  end process;

  zz_11 <= pkg_extract(pkg_cat(pkg_cat(pkg_cat(pkg_toStdLogicVector(pkg_extract(decode_inInst_payload_instruction,31)),pkg_toStdLogicVector(pkg_extract(decode_inInst_payload_instruction,7))),pkg_extract(decode_inInst_payload_instruction,30,25)),pkg_extract(decode_inInst_payload_instruction,11,8)),11);
  process(zz_11)
  begin
    zz_12(18) <= zz_11;
    zz_12(17) <= zz_11;
    zz_12(16) <= zz_11;
    zz_12(15) <= zz_11;
    zz_12(14) <= zz_11;
    zz_12(13) <= zz_11;
    zz_12(12) <= zz_11;
    zz_12(11) <= zz_11;
    zz_12(10) <= zz_11;
    zz_12(9) <= zz_11;
    zz_12(8) <= zz_11;
    zz_12(7) <= zz_11;
    zz_12(6) <= zz_11;
    zz_12(5) <= zz_11;
    zz_12(4) <= zz_11;
    zz_12(3) <= zz_11;
    zz_12(2) <= zz_11;
    zz_12(1) <= zz_11;
    zz_12(0) <= zz_11;
  end process;

  decode_brjmpImm <= pkg_mux(decode_ctrl_jmp,pkg_cat(pkg_cat(zz_10,pkg_cat(pkg_cat(pkg_cat(pkg_toStdLogicVector(zz_87),pkg_extract(decode_inInst_payload_instruction,19,12)),pkg_toStdLogicVector(pkg_extract(decode_inInst_payload_instruction,20))),pkg_extract(decode_inInst_payload_instruction,30,21))),pkg_toStdLogicVector(pkg_toStdLogic(false))),pkg_cat(pkg_cat(zz_12,pkg_cat(pkg_cat(pkg_cat(pkg_toStdLogicVector(zz_88),pkg_toStdLogicVector(zz_89)),pkg_extract(decode_inInst_payload_instruction,30,25)),pkg_extract(decode_inInst_payload_instruction,11,8))),pkg_toStdLogicVector(pkg_toStdLogic(false))));
  decode_brJumpPc <= pkg_resize((decode_inInst_payload_pc + unsigned(decode_brjmpImm)),32);
  decode_branchCacheHit <= pkg_toStdLogic(decode_inInst_payload_branchCacheLine_pc = pkg_extract(decode_inInst_payload_pc,31,18));
  decode_staticBranchPrediction <= (pkg_extract(decode_brjmpImm,31) or pkg_toStdLogic(decode_ctrl_br = BR_opt_J));
  decode_shouldTakeBranch <= pkg_toStdLogic(false);
  decode_pcLoad_valid <= ((((((decode_inInst_valid and (not decode_throwIt)) and (not decode_hazard)) and decode_outInst_ready) and (pkg_toStdLogic(decode_ctrl_br /= BR_opt_JR) and pkg_toStdLogic(decode_ctrl_br /= BR_opt_N))) and decode_ctrl_instVal) and decode_shouldTakeBranch);
  decode_pcLoad_payload <= decode_brJumpPc;
  process(decode_inInst_valid,decode_throwIt)
  begin
    decode_inInst_thrown_valid <= decode_inInst_valid;
    if decode_throwIt = '1' then
      decode_inInst_thrown_valid <= pkg_toStdLogic(false);
    end if;
  end process;

  process(decode_inInst_thrown_ready,decode_throwIt)
  begin
    decode_inInst_ready <= decode_inInst_thrown_ready;
    if decode_throwIt = '1' then
      decode_inInst_ready <= pkg_toStdLogic(true);
    end if;
  end process;

  decode_inInst_thrown_payload_pc <= decode_inInst_payload_pc;
  decode_inInst_thrown_payload_instruction <= decode_inInst_payload_instruction;
  decode_inInst_thrown_payload_branchCacheLine_pc <= decode_inInst_payload_branchCacheLine_pc;
  decode_inInst_thrown_payload_branchCacheLine_history <= decode_inInst_payload_branchCacheLine_history;
  zz_13 <= (not decode_halt);
  decode_inInst_thrown_ready <= (decode_outInst_ready and zz_13);
  decode_outInst_valid <= (decode_inInst_thrown_valid and zz_13);
  decode_outInst_payload_pc <= decode_inInst_payload_pc;
  decode_outInst_payload_instruction <= decode_inInst_payload_instruction;
  decode_outInst_payload_ctrl_instVal <= decode_ctrl_instVal;
  decode_outInst_payload_ctrl_br <= decode_ctrl_br;
  decode_outInst_payload_ctrl_jmp <= decode_ctrl_jmp;
  decode_outInst_payload_ctrl_op0 <= decode_ctrl_op0;
  decode_outInst_payload_ctrl_op1 <= decode_ctrl_op1;
  decode_outInst_payload_ctrl_alu <= decode_ctrl_alu;
  decode_outInst_payload_ctrl_wb <= decode_ctrl_wb;
  decode_outInst_payload_ctrl_rfen <= decode_ctrl_rfen;
  decode_outInst_payload_ctrl_execute0AluBypass <= decode_ctrl_execute0AluBypass;
  decode_outInst_payload_ctrl_execute1AluBypass <= decode_ctrl_execute1AluBypass;
  decode_outInst_payload_ctrl_canInternalyStallWriteBack0 <= decode_ctrl_canInternalyStallWriteBack0;
  decode_outInst_payload_ctrl_men <= decode_ctrl_men;
  decode_outInst_payload_ctrl_m <= decode_ctrl_m;
  decode_outInst_payload_ctrl_msk <= decode_ctrl_msk;
  decode_outInst_payload_ctrl_csr <= decode_ctrl_csr;
  decode_outInst_payload_ctrl_mfs <= decode_ctrl_mfs;
  decode_outInst_payload_ctrl_useSrc0 <= decode_ctrl_useSrc0;
  decode_outInst_payload_ctrl_useSrc1 <= decode_ctrl_useSrc1;
  decode_outInst_payload_ctrl_extensionTag <= decode_ctrl_extensionTag;
  decode_outInst_payload_ctrl_fencei <= decode_ctrl_fencei;
  decode_outInst_payload_doSub <= pkg_toStdLogic(decode_outInst_payload_ctrl_alu /= ALU_opt_ADD);
  decode_outInst_payload_src0 <= pkg_mux((not decode_addr0IsZero),decode_src0,pkg_stdLogicVector("00000000000000000000000000000000"));
  decode_outInst_payload_src1 <= pkg_mux((not decode_addr1IsZero),decode_src1,pkg_stdLogicVector("00000000000000000000000000000000"));
  process(decode_outInst_payload_ctrl_op0,decode_inInst_payload_instruction,decode_brjmpImm,decode_outInst_payload_src0)
  begin
    case decode_outInst_payload_ctrl_op0 is
      when OP0_binary_sequential_IMU =>
        zz_14 <= pkg_cat(pkg_extract(decode_inInst_payload_instruction,31,12),std_logic_vector(pkg_unsigned("000000000000")));
      when OP0_binary_sequential_IMZ =>
        zz_14 <= pkg_resize(pkg_extract(decode_inInst_payload_instruction,19,15),32);
      when OP0_binary_sequential_IMJB =>
        zz_14 <= decode_brjmpImm;
      when others =>
        zz_14 <= decode_outInst_payload_src0;
    end case;
  end process;

  decode_outInst_payload_alu_op0 <= zz_14;
  zz_15 <= pkg_extract(pkg_extract(decode_inInst_payload_instruction,31,20),11);
  process(zz_15)
  begin
    zz_16(19) <= zz_15;
    zz_16(18) <= zz_15;
    zz_16(17) <= zz_15;
    zz_16(16) <= zz_15;
    zz_16(15) <= zz_15;
    zz_16(14) <= zz_15;
    zz_16(13) <= zz_15;
    zz_16(12) <= zz_15;
    zz_16(11) <= zz_15;
    zz_16(10) <= zz_15;
    zz_16(9) <= zz_15;
    zz_16(8) <= zz_15;
    zz_16(7) <= zz_15;
    zz_16(6) <= zz_15;
    zz_16(5) <= zz_15;
    zz_16(4) <= zz_15;
    zz_16(3) <= zz_15;
    zz_16(2) <= zz_15;
    zz_16(1) <= zz_15;
    zz_16(0) <= zz_15;
  end process;

  zz_17 <= pkg_extract(pkg_cat(pkg_extract(decode_inInst_payload_instruction,31,25),pkg_extract(decode_inInst_payload_instruction,11,7)),11);
  process(zz_17)
  begin
    zz_18(19) <= zz_17;
    zz_18(18) <= zz_17;
    zz_18(17) <= zz_17;
    zz_18(16) <= zz_17;
    zz_18(15) <= zz_17;
    zz_18(14) <= zz_17;
    zz_18(13) <= zz_17;
    zz_18(12) <= zz_17;
    zz_18(11) <= zz_17;
    zz_18(10) <= zz_17;
    zz_18(9) <= zz_17;
    zz_18(8) <= zz_17;
    zz_18(7) <= zz_17;
    zz_18(6) <= zz_17;
    zz_18(5) <= zz_17;
    zz_18(4) <= zz_17;
    zz_18(3) <= zz_17;
    zz_18(2) <= zz_17;
    zz_18(1) <= zz_17;
    zz_18(0) <= zz_17;
  end process;

  process(decode_outInst_payload_ctrl_op1,zz_16,decode_inInst_payload_instruction,zz_18,decode_inInst_payload_pc,decode_outInst_payload_src1)
  begin
    case decode_outInst_payload_ctrl_op1 is
      when OP1_binary_sequential_IMI =>
        zz_19 <= pkg_cat(zz_16,pkg_extract(decode_inInst_payload_instruction,31,20));
      when OP1_binary_sequential_IMS =>
        zz_19 <= pkg_cat(zz_18,pkg_cat(pkg_extract(decode_inInst_payload_instruction,31,25),pkg_extract(decode_inInst_payload_instruction,11,7)));
      when OP1_binary_sequential_PC_1 =>
        zz_19 <= std_logic_vector(decode_inInst_payload_pc);
      when others =>
        zz_19 <= decode_outInst_payload_src1;
    end case;
  end process;

  decode_outInst_payload_alu_op1 <= zz_19;
  decode_outInst_payload_predictorHasBranch <= decode_pcLoad_valid;
  decode_outInst_payload_branchHistory_valid <= decode_branchCacheHit;
  decode_outInst_payload_branchHistory_payload <= decode_inInst_payload_branchCacheLine_history;
  decode_flush <= pkg_toStdLogic(false);
  decode_outInst_ready <= ((pkg_toStdLogic(false) and (not execute0_inInst_valid)) or execute0_inInst_ready);
  execute0_inInst_valid <= decode_outInst_m2sPipe_rValid;
  execute0_inInst_payload_pc <= decode_outInst_m2sPipe_rData_pc;
  execute0_inInst_payload_instruction <= decode_outInst_m2sPipe_rData_instruction;
  execute0_inInst_payload_ctrl_instVal <= decode_outInst_m2sPipe_rData_ctrl_instVal;
  execute0_inInst_payload_ctrl_br <= decode_outInst_m2sPipe_rData_ctrl_br;
  execute0_inInst_payload_ctrl_jmp <= decode_outInst_m2sPipe_rData_ctrl_jmp;
  execute0_inInst_payload_ctrl_op0 <= decode_outInst_m2sPipe_rData_ctrl_op0;
  execute0_inInst_payload_ctrl_op1 <= decode_outInst_m2sPipe_rData_ctrl_op1;
  execute0_inInst_payload_ctrl_alu <= decode_outInst_m2sPipe_rData_ctrl_alu;
  execute0_inInst_payload_ctrl_wb <= decode_outInst_m2sPipe_rData_ctrl_wb;
  execute0_inInst_payload_ctrl_rfen <= decode_outInst_m2sPipe_rData_ctrl_rfen;
  execute0_inInst_payload_ctrl_execute0AluBypass <= decode_outInst_m2sPipe_rData_ctrl_execute0AluBypass;
  execute0_inInst_payload_ctrl_execute1AluBypass <= decode_outInst_m2sPipe_rData_ctrl_execute1AluBypass;
  execute0_inInst_payload_ctrl_canInternalyStallWriteBack0 <= decode_outInst_m2sPipe_rData_ctrl_canInternalyStallWriteBack0;
  execute0_inInst_payload_ctrl_men <= decode_outInst_m2sPipe_rData_ctrl_men;
  execute0_inInst_payload_ctrl_m <= decode_outInst_m2sPipe_rData_ctrl_m;
  execute0_inInst_payload_ctrl_msk <= decode_outInst_m2sPipe_rData_ctrl_msk;
  execute0_inInst_payload_ctrl_csr <= decode_outInst_m2sPipe_rData_ctrl_csr;
  execute0_inInst_payload_ctrl_mfs <= decode_outInst_m2sPipe_rData_ctrl_mfs;
  execute0_inInst_payload_ctrl_useSrc0 <= decode_outInst_m2sPipe_rData_ctrl_useSrc0;
  execute0_inInst_payload_ctrl_useSrc1 <= decode_outInst_m2sPipe_rData_ctrl_useSrc1;
  execute0_inInst_payload_ctrl_extensionTag <= decode_outInst_m2sPipe_rData_ctrl_extensionTag;
  execute0_inInst_payload_ctrl_fencei <= decode_outInst_m2sPipe_rData_ctrl_fencei;
  execute0_inInst_payload_src0 <= decode_outInst_m2sPipe_rData_src0;
  execute0_inInst_payload_src1 <= decode_outInst_m2sPipe_rData_src1;
  execute0_inInst_payload_alu_op0 <= decode_outInst_m2sPipe_rData_alu_op0;
  execute0_inInst_payload_alu_op1 <= decode_outInst_m2sPipe_rData_alu_op1;
  execute0_inInst_payload_doSub <= decode_outInst_m2sPipe_rData_doSub;
  execute0_inInst_payload_predictorHasBranch <= decode_outInst_m2sPipe_rData_predictorHasBranch;
  execute0_inInst_payload_branchHistory_valid <= decode_outInst_m2sPipe_rData_branchHistory_valid;
  execute0_inInst_payload_branchHistory_payload <= decode_outInst_m2sPipe_rData_branchHistory_payload;
  process(execute0_flush,execute1_flush,writeBack_flush)
  begin
    execute0_throwIt <= pkg_toStdLogic(false);
    if execute0_flush = '1' then
      execute0_throwIt <= pkg_toStdLogic(true);
    end if;
    if execute1_flush = '1' then
      execute0_throwIt <= pkg_toStdLogic(true);
    end if;
    if writeBack_flush = '1' then
      execute0_throwIt <= pkg_toStdLogic(true);
    end if;
  end process;

  process(execute0_inInst_valid,execute0_inInst_payload_ctrl_men,execute0_inInst_payload_ctrl_m,execute0_pendingDataCmd_readCount,execute1_inInst_valid,execute1_inInst_payload_ctrl_canInternalyStallWriteBack0,writeBack_inInst_valid,writeBack_inInst_ready,writeBack_inInst_payload_ctrl_canInternalyStallWriteBack0,zz_68,DivExtension_divider_io_cmd_ready,zz_69,zz_70)
  begin
    execute0_halt <= pkg_toStdLogic(false);
    if (((execute0_inInst_valid and execute0_inInst_payload_ctrl_men) and pkg_toStdLogic(execute0_inInst_payload_ctrl_m = M_binary_sequential_XRD)) and pkg_toStdLogic(execute0_pendingDataCmd_readCount = pkg_unsigned("10"))) = '1' then
      execute0_halt <= pkg_toStdLogic(true);
    end if;
    if ((execute0_inInst_valid and execute0_inInst_payload_ctrl_men) and pkg_toStdLogic(execute0_inInst_payload_ctrl_m = M_binary_sequential_XRD)) = '1' then
      if (execute1_inInst_valid and execute1_inInst_payload_ctrl_canInternalyStallWriteBack0) = '1' then
        execute0_halt <= pkg_toStdLogic(true);
      end if;
      if ((writeBack_inInst_valid and (not writeBack_inInst_ready)) and writeBack_inInst_payload_ctrl_canInternalyStallWriteBack0) = '1' then
        execute0_halt <= pkg_toStdLogic(true);
      end if;
    end if;
    if zz_68 = '1' then
      if (not DivExtension_divider_io_cmd_ready) = '1' then
        execute0_halt <= pkg_toStdLogic(true);
      end if;
    end if;
    if zz_69 = '1' then
      if zz_70 = '1' then
        execute0_halt <= pkg_toStdLogic(true);
      end if;
    end if;
  end process;

  execute0_haltFromDataRequest <= ((execute0_inInst_valid and execute0_inInst_payload_ctrl_men) and (not dCmd_ready));
  execute0_br_signed <= (not pkg_extract(execute0_inInst_payload_ctrl_br,1));
  execute0_br_src0Ext <= pkg_cat(pkg_toStdLogicVector((pkg_extract(execute0_inInst_payload_src0,31) and execute0_br_signed)),execute0_inInst_payload_src0);
  execute0_br_src1Ext <= pkg_cat(pkg_toStdLogicVector((pkg_extract(execute0_inInst_payload_src1,31) and execute0_br_signed)),execute0_inInst_payload_src1);
  execute0_br_ltx <= pkg_extract((unsigned(execute0_br_src0Ext) - unsigned(execute0_br_src1Ext)),32);
  execute0_br_eq <= pkg_toStdLogic(execute0_inInst_payload_src0 = execute0_inInst_payload_src1);
  process(execute0_inInst_payload_ctrl_br,execute0_br_eq,execute0_br_ltx)
  begin
    case execute0_inInst_payload_ctrl_br is
      when BR_opt_NE =>
        execute0_br_pc_sel <= pkg_mux((not execute0_br_eq),PC_binary_sequential_BRA,PC_binary_sequential_INC);
      when BR_opt_EQ =>
        execute0_br_pc_sel <= pkg_mux(execute0_br_eq,PC_binary_sequential_BRA,PC_binary_sequential_INC);
      when BR_opt_GE | BR_opt_GEU =>
        execute0_br_pc_sel <= pkg_mux((not execute0_br_ltx),PC_binary_sequential_BRA,PC_binary_sequential_INC);
      when BR_opt_LT | BR_opt_LTU =>
        execute0_br_pc_sel <= pkg_mux(execute0_br_ltx,PC_binary_sequential_BRA,PC_binary_sequential_INC);
      when BR_opt_J =>
        execute0_br_pc_sel <= PC_binary_sequential_J;
      when BR_opt_JR =>
        execute0_br_pc_sel <= PC_binary_sequential_JR;
      when others =>
        execute0_br_pc_sel <= PC_binary_sequential_INC;
    end case;
  end process;

  process(execute0_inInst_valid,execute0_throwIt)
  begin
    execute0_inInst_thrown_valid <= execute0_inInst_valid;
    if execute0_throwIt = '1' then
      execute0_inInst_thrown_valid <= pkg_toStdLogic(false);
    end if;
  end process;

  process(execute0_inInst_thrown_ready,execute0_throwIt)
  begin
    execute0_inInst_ready <= execute0_inInst_thrown_ready;
    if execute0_throwIt = '1' then
      execute0_inInst_ready <= pkg_toStdLogic(true);
    end if;
  end process;

  execute0_inInst_thrown_payload_pc <= execute0_inInst_payload_pc;
  execute0_inInst_thrown_payload_instruction <= execute0_inInst_payload_instruction;
  execute0_inInst_thrown_payload_ctrl_instVal <= execute0_inInst_payload_ctrl_instVal;
  execute0_inInst_thrown_payload_ctrl_br <= execute0_inInst_payload_ctrl_br;
  execute0_inInst_thrown_payload_ctrl_jmp <= execute0_inInst_payload_ctrl_jmp;
  execute0_inInst_thrown_payload_ctrl_op0 <= execute0_inInst_payload_ctrl_op0;
  execute0_inInst_thrown_payload_ctrl_op1 <= execute0_inInst_payload_ctrl_op1;
  execute0_inInst_thrown_payload_ctrl_alu <= execute0_inInst_payload_ctrl_alu;
  execute0_inInst_thrown_payload_ctrl_wb <= execute0_inInst_payload_ctrl_wb;
  execute0_inInst_thrown_payload_ctrl_rfen <= execute0_inInst_payload_ctrl_rfen;
  execute0_inInst_thrown_payload_ctrl_execute0AluBypass <= execute0_inInst_payload_ctrl_execute0AluBypass;
  execute0_inInst_thrown_payload_ctrl_execute1AluBypass <= execute0_inInst_payload_ctrl_execute1AluBypass;
  execute0_inInst_thrown_payload_ctrl_canInternalyStallWriteBack0 <= execute0_inInst_payload_ctrl_canInternalyStallWriteBack0;
  execute0_inInst_thrown_payload_ctrl_men <= execute0_inInst_payload_ctrl_men;
  execute0_inInst_thrown_payload_ctrl_m <= execute0_inInst_payload_ctrl_m;
  execute0_inInst_thrown_payload_ctrl_msk <= execute0_inInst_payload_ctrl_msk;
  execute0_inInst_thrown_payload_ctrl_csr <= execute0_inInst_payload_ctrl_csr;
  execute0_inInst_thrown_payload_ctrl_mfs <= execute0_inInst_payload_ctrl_mfs;
  execute0_inInst_thrown_payload_ctrl_useSrc0 <= execute0_inInst_payload_ctrl_useSrc0;
  execute0_inInst_thrown_payload_ctrl_useSrc1 <= execute0_inInst_payload_ctrl_useSrc1;
  execute0_inInst_thrown_payload_ctrl_extensionTag <= execute0_inInst_payload_ctrl_extensionTag;
  execute0_inInst_thrown_payload_ctrl_fencei <= execute0_inInst_payload_ctrl_fencei;
  execute0_inInst_thrown_payload_src0 <= execute0_inInst_payload_src0;
  execute0_inInst_thrown_payload_src1 <= execute0_inInst_payload_src1;
  execute0_inInst_thrown_payload_alu_op0 <= execute0_inInst_payload_alu_op0;
  execute0_inInst_thrown_payload_alu_op1 <= execute0_inInst_payload_alu_op1;
  execute0_inInst_thrown_payload_doSub <= execute0_inInst_payload_doSub;
  execute0_inInst_thrown_payload_predictorHasBranch <= execute0_inInst_payload_predictorHasBranch;
  execute0_inInst_thrown_payload_branchHistory_valid <= execute0_inInst_payload_branchHistory_valid;
  execute0_inInst_thrown_payload_branchHistory_payload <= execute0_inInst_payload_branchHistory_payload;
  zz_20 <= (not (execute0_halt or execute0_haltFromDataRequest));
  execute0_inInst_thrown_ready <= (execute0_outInst_ready and zz_20);
  execute0_outInst_valid <= (execute0_inInst_thrown_valid and zz_20);
  execute0_outInst_payload_pc <= execute0_inInst_payload_pc;
  execute0_outInst_payload_instruction <= execute0_inInst_payload_instruction;
  execute0_outInst_payload_predictorHasBranch <= execute0_inInst_payload_predictorHasBranch;
  execute0_outInst_payload_branchHistory_valid <= execute0_inInst_payload_branchHistory_valid;
  execute0_outInst_payload_branchHistory_payload <= execute0_inInst_payload_branchHistory_payload;
  execute0_outInst_payload_ctrl_instVal <= execute0_inInst_payload_ctrl_instVal;
  execute0_outInst_payload_ctrl_br <= execute0_inInst_payload_ctrl_br;
  execute0_outInst_payload_ctrl_jmp <= execute0_inInst_payload_ctrl_jmp;
  execute0_outInst_payload_ctrl_op0 <= execute0_inInst_payload_ctrl_op0;
  execute0_outInst_payload_ctrl_op1 <= execute0_inInst_payload_ctrl_op1;
  execute0_outInst_payload_ctrl_alu <= execute0_inInst_payload_ctrl_alu;
  execute0_outInst_payload_ctrl_wb <= execute0_inInst_payload_ctrl_wb;
  execute0_outInst_payload_ctrl_rfen <= execute0_inInst_payload_ctrl_rfen;
  execute0_outInst_payload_ctrl_execute0AluBypass <= execute0_inInst_payload_ctrl_execute0AluBypass;
  execute0_outInst_payload_ctrl_execute1AluBypass <= execute0_inInst_payload_ctrl_execute1AluBypass;
  execute0_outInst_payload_ctrl_canInternalyStallWriteBack0 <= execute0_inInst_payload_ctrl_canInternalyStallWriteBack0;
  execute0_outInst_payload_ctrl_men <= execute0_inInst_payload_ctrl_men;
  execute0_outInst_payload_ctrl_m <= execute0_inInst_payload_ctrl_m;
  execute0_outInst_payload_ctrl_msk <= execute0_inInst_payload_ctrl_msk;
  execute0_outInst_payload_ctrl_csr <= execute0_inInst_payload_ctrl_csr;
  execute0_outInst_payload_ctrl_mfs <= execute0_inInst_payload_ctrl_mfs;
  execute0_outInst_payload_ctrl_useSrc0 <= execute0_inInst_payload_ctrl_useSrc0;
  execute0_outInst_payload_ctrl_useSrc1 <= execute0_inInst_payload_ctrl_useSrc1;
  execute0_outInst_payload_ctrl_extensionTag <= execute0_inInst_payload_ctrl_extensionTag;
  execute0_outInst_payload_ctrl_fencei <= execute0_inInst_payload_ctrl_fencei;
  execute0_outInst_payload_br_eq <= execute0_br_eq;
  execute0_outInst_payload_br_ltx <= execute0_br_ltx;
  execute0_outInst_payload_pc_sel <= execute0_br_pc_sel;
  execute0_outInst_payload_src1 <= execute0_inInst_payload_src1;
  process(execute0_alu_io_result,zz_69,execute0_inInst_payload_alu_op0)
  begin
    execute0_outInst_payload_result <= execute0_alu_io_result;
    if zz_69 = '1' then
      execute0_outInst_payload_result <= execute0_inInst_payload_alu_op0;
    end if;
  end process;

  execute0_outInst_payload_adder <= execute0_alu_io_adder;
  execute0_outInst_payload_pcPlus4 <= (execute0_inInst_payload_pc + pkg_unsigned("00000000000000000000000000000100"));
  execute0_outInst_payload_needMemRsp <= (execute0_inInst_payload_ctrl_men and pkg_toStdLogic(execute0_inInst_payload_ctrl_m = M_binary_sequential_XRD));
  execute0_outInst_payload_dCmdAddress <= dCmd_payload_address;
  process(execute0_outInst_payload_ctrl_msk,dCmd_payload_address)
  begin
    case execute0_outInst_payload_ctrl_msk is
      when MSK_binary_sequential_H =>
        zz_21 <= pkg_extract(dCmd_payload_address,0);
      when MSK_binary_sequential_W =>
        zz_21 <= (pkg_extract(dCmd_payload_address,0) or pkg_extract(dCmd_payload_address,1));
      when others =>
        zz_21 <= pkg_toStdLogic(false);
    end case;
  end process;

  execute0_outInst_payload_unalignedMemoryAccessException <= (execute0_inInst_payload_ctrl_men and zz_21);
  dCmd_valid <= (((((execute0_inInst_valid and execute0_inInst_payload_ctrl_men) and (not execute0_outInst_payload_unalignedMemoryAccessException)) and (not execute0_halt)) and (not execute0_throwIt)) and execute0_outInst_ready);
  dCmd_payload_wr <= pkg_toStdLogic(execute0_inInst_payload_ctrl_m = M_binary_sequential_XWR);
  dCmd_payload_address <= execute0_outInst_payload_adder;
  dCmd_payload_data <= execute0_inInst_payload_src1;
  process(execute0_inInst_payload_ctrl_msk)
  begin
    case execute0_inInst_payload_ctrl_msk is
      when MSK_binary_sequential_B =>
        zz_22 <= pkg_unsigned("00");
      when MSK_binary_sequential_H =>
        zz_22 <= pkg_unsigned("01");
      when others =>
        zz_22 <= pkg_unsigned("10");
    end case;
  end process;

  dCmd_payload_size <= zz_22;
  execute0_pendingDataCmd_readCountInc <= ((dCmd_valid and dCmd_ready) and (not dCmd_payload_wr));
  execute0_pendingDataCmd_readCountDec <= (dRsp_valid and dRsp_ready);
  process(execute1_pcLoad_valid)
  begin
    execute0_flush <= pkg_toStdLogic(false);
    if execute1_pcLoad_valid = '1' then
      execute0_flush <= pkg_toStdLogic(true);
    end if;
  end process;

  execute0_outInst_ready <= ((pkg_toStdLogic(false) and (not execute1_inInst_valid)) or execute1_inInst_ready);
  execute1_inInst_valid <= execute0_outInst_m2sPipe_rValid;
  execute1_inInst_payload_pc <= execute0_outInst_m2sPipe_rData_pc;
  execute1_inInst_payload_instruction <= execute0_outInst_m2sPipe_rData_instruction;
  execute1_inInst_payload_ctrl_instVal <= execute0_outInst_m2sPipe_rData_ctrl_instVal;
  execute1_inInst_payload_ctrl_br <= execute0_outInst_m2sPipe_rData_ctrl_br;
  execute1_inInst_payload_ctrl_jmp <= execute0_outInst_m2sPipe_rData_ctrl_jmp;
  execute1_inInst_payload_ctrl_op0 <= execute0_outInst_m2sPipe_rData_ctrl_op0;
  execute1_inInst_payload_ctrl_op1 <= execute0_outInst_m2sPipe_rData_ctrl_op1;
  execute1_inInst_payload_ctrl_alu <= execute0_outInst_m2sPipe_rData_ctrl_alu;
  execute1_inInst_payload_ctrl_wb <= execute0_outInst_m2sPipe_rData_ctrl_wb;
  execute1_inInst_payload_ctrl_rfen <= execute0_outInst_m2sPipe_rData_ctrl_rfen;
  execute1_inInst_payload_ctrl_execute0AluBypass <= execute0_outInst_m2sPipe_rData_ctrl_execute0AluBypass;
  execute1_inInst_payload_ctrl_execute1AluBypass <= execute0_outInst_m2sPipe_rData_ctrl_execute1AluBypass;
  execute1_inInst_payload_ctrl_canInternalyStallWriteBack0 <= execute0_outInst_m2sPipe_rData_ctrl_canInternalyStallWriteBack0;
  execute1_inInst_payload_ctrl_men <= execute0_outInst_m2sPipe_rData_ctrl_men;
  execute1_inInst_payload_ctrl_m <= execute0_outInst_m2sPipe_rData_ctrl_m;
  execute1_inInst_payload_ctrl_msk <= execute0_outInst_m2sPipe_rData_ctrl_msk;
  execute1_inInst_payload_ctrl_csr <= execute0_outInst_m2sPipe_rData_ctrl_csr;
  execute1_inInst_payload_ctrl_mfs <= execute0_outInst_m2sPipe_rData_ctrl_mfs;
  execute1_inInst_payload_ctrl_useSrc0 <= execute0_outInst_m2sPipe_rData_ctrl_useSrc0;
  execute1_inInst_payload_ctrl_useSrc1 <= execute0_outInst_m2sPipe_rData_ctrl_useSrc1;
  execute1_inInst_payload_ctrl_extensionTag <= execute0_outInst_m2sPipe_rData_ctrl_extensionTag;
  execute1_inInst_payload_ctrl_fencei <= execute0_outInst_m2sPipe_rData_ctrl_fencei;
  execute1_inInst_payload_br_eq <= execute0_outInst_m2sPipe_rData_br_eq;
  execute1_inInst_payload_br_ltx <= execute0_outInst_m2sPipe_rData_br_ltx;
  execute1_inInst_payload_src1 <= execute0_outInst_m2sPipe_rData_src1;
  execute1_inInst_payload_result <= execute0_outInst_m2sPipe_rData_result;
  process(execute0_outInst_m2sPipe_rData_adder,execute1_inInst_valid,zz_71,zz_72,SimpleInterrupExtension_exitPc)
  begin
    execute1_inInst_payload_adder <= execute0_outInst_m2sPipe_rData_adder;
    if execute1_inInst_valid = '1' then
      if zz_71 = '1' then
        case zz_72 is
          when "00" =>
            execute1_inInst_payload_adder <= SimpleInterrupExtension_exitPc;
          when "01" =>
          when "10" =>
          when others =>
        end case;
      end if;
    end if;
  end process;

  execute1_inInst_payload_predictorHasBranch <= execute0_outInst_m2sPipe_rData_predictorHasBranch;
  execute1_inInst_payload_branchHistory_valid <= execute0_outInst_m2sPipe_rData_branchHistory_valid;
  execute1_inInst_payload_branchHistory_payload <= execute0_outInst_m2sPipe_rData_branchHistory_payload;
  execute1_inInst_payload_pcPlus4 <= execute0_outInst_m2sPipe_rData_pcPlus4;
  process(execute0_outInst_m2sPipe_rData_pc_sel,execute1_inInst_valid,zz_71,zz_72)
  begin
    execute1_inInst_payload_pc_sel <= execute0_outInst_m2sPipe_rData_pc_sel;
    if execute1_inInst_valid = '1' then
      if zz_71 = '1' then
        case zz_72 is
          when "00" =>
            execute1_inInst_payload_pc_sel <= PC_binary_sequential_J;
          when "01" =>
          when "10" =>
          when others =>
        end case;
      end if;
    end if;
  end process;

  execute1_inInst_payload_unalignedMemoryAccessException <= execute0_outInst_m2sPipe_rData_unalignedMemoryAccessException;
  execute1_inInst_payload_needMemRsp <= execute0_outInst_m2sPipe_rData_needMemRsp;
  execute1_inInst_payload_dCmdAddress <= execute0_outInst_m2sPipe_rData_dCmdAddress;
  process(zz_73,DivExtension_rspReady)
  begin
    execute1_halt <= pkg_toStdLogic(false);
    if zz_73 = '1' then
      if (not DivExtension_rspReady) = '1' then
        execute1_halt <= pkg_toStdLogic(true);
      end if;
    end if;
  end process;

  process(execute1_flush,writeBack_flush)
  begin
    execute1_throwIt <= pkg_toStdLogic(false);
    if execute1_flush = '1' then
      execute1_throwIt <= pkg_toStdLogic(true);
    end if;
    if writeBack_flush = '1' then
      execute1_throwIt <= pkg_toStdLogic(true);
    end if;
  end process;

  process(execute1_inInst_payload_pc_sel,execute1_inInst_payload_predictorHasBranch)
  begin
    case execute1_inInst_payload_pc_sel is
      when PC_binary_sequential_INC =>
        zz_23 <= execute1_inInst_payload_predictorHasBranch;
      when others =>
        zz_23 <= (not execute1_inInst_payload_predictorHasBranch);
    end case;
  end process;

  execute1_pcLoad_valid <= (((not execute1_throwIt) and (execute1_inInst_valid and execute1_inInst_ready)) and zz_23);
  execute1_pcLoad_payload <= execute1_inInst_payload_adder;
  execute1_newHistory <= (pkg_resize(execute1_inInst_payload_branchHistory_payload,3) + pkg_resize(pkg_mux(pkg_toStdLogic(execute1_inInst_payload_pc_sel = PC_binary_sequential_INC),pkg_signed("01"),pkg_signed("11")),3));
  execute1_line_pc <= pkg_extract(execute1_inInst_payload_pc,31,18);
  process(execute1_inInst_payload_branchHistory_valid,execute1_newHistory,execute1_inInst_payload_pc_sel)
  begin
    if execute1_inInst_payload_branchHistory_valid = '1' then
      execute1_line_history <= pkg_resize(execute1_newHistory,2);
    else
      execute1_line_history <= pkg_resize(signed(pkg_toStdLogicVector(pkg_toStdLogic(execute1_inInst_payload_pc_sel /= PC_binary_sequential_INC))),2);
    end if;
  end process;

  process(execute1_inInst_valid,execute1_throwIt)
  begin
    execute1_inInst_thrown_valid <= execute1_inInst_valid;
    if execute1_throwIt = '1' then
      execute1_inInst_thrown_valid <= pkg_toStdLogic(false);
    end if;
  end process;

  process(execute1_inInst_thrown_ready,execute1_throwIt)
  begin
    execute1_inInst_ready <= execute1_inInst_thrown_ready;
    if execute1_throwIt = '1' then
      execute1_inInst_ready <= pkg_toStdLogic(true);
    end if;
  end process;

  execute1_inInst_thrown_payload_pc <= execute1_inInst_payload_pc;
  execute1_inInst_thrown_payload_instruction <= execute1_inInst_payload_instruction;
  execute1_inInst_thrown_payload_ctrl_instVal <= execute1_inInst_payload_ctrl_instVal;
  execute1_inInst_thrown_payload_ctrl_br <= execute1_inInst_payload_ctrl_br;
  execute1_inInst_thrown_payload_ctrl_jmp <= execute1_inInst_payload_ctrl_jmp;
  execute1_inInst_thrown_payload_ctrl_op0 <= execute1_inInst_payload_ctrl_op0;
  execute1_inInst_thrown_payload_ctrl_op1 <= execute1_inInst_payload_ctrl_op1;
  execute1_inInst_thrown_payload_ctrl_alu <= execute1_inInst_payload_ctrl_alu;
  execute1_inInst_thrown_payload_ctrl_wb <= execute1_inInst_payload_ctrl_wb;
  execute1_inInst_thrown_payload_ctrl_rfen <= execute1_inInst_payload_ctrl_rfen;
  execute1_inInst_thrown_payload_ctrl_execute0AluBypass <= execute1_inInst_payload_ctrl_execute0AluBypass;
  execute1_inInst_thrown_payload_ctrl_execute1AluBypass <= execute1_inInst_payload_ctrl_execute1AluBypass;
  execute1_inInst_thrown_payload_ctrl_canInternalyStallWriteBack0 <= execute1_inInst_payload_ctrl_canInternalyStallWriteBack0;
  execute1_inInst_thrown_payload_ctrl_men <= execute1_inInst_payload_ctrl_men;
  execute1_inInst_thrown_payload_ctrl_m <= execute1_inInst_payload_ctrl_m;
  execute1_inInst_thrown_payload_ctrl_msk <= execute1_inInst_payload_ctrl_msk;
  execute1_inInst_thrown_payload_ctrl_csr <= execute1_inInst_payload_ctrl_csr;
  execute1_inInst_thrown_payload_ctrl_mfs <= execute1_inInst_payload_ctrl_mfs;
  execute1_inInst_thrown_payload_ctrl_useSrc0 <= execute1_inInst_payload_ctrl_useSrc0;
  execute1_inInst_thrown_payload_ctrl_useSrc1 <= execute1_inInst_payload_ctrl_useSrc1;
  execute1_inInst_thrown_payload_ctrl_extensionTag <= execute1_inInst_payload_ctrl_extensionTag;
  execute1_inInst_thrown_payload_ctrl_fencei <= execute1_inInst_payload_ctrl_fencei;
  execute1_inInst_thrown_payload_br_eq <= execute1_inInst_payload_br_eq;
  execute1_inInst_thrown_payload_br_ltx <= execute1_inInst_payload_br_ltx;
  execute1_inInst_thrown_payload_src1 <= execute1_inInst_payload_src1;
  execute1_inInst_thrown_payload_result <= execute1_inInst_payload_result;
  execute1_inInst_thrown_payload_adder <= execute1_inInst_payload_adder;
  execute1_inInst_thrown_payload_predictorHasBranch <= execute1_inInst_payload_predictorHasBranch;
  execute1_inInst_thrown_payload_branchHistory_valid <= execute1_inInst_payload_branchHistory_valid;
  execute1_inInst_thrown_payload_branchHistory_payload <= execute1_inInst_payload_branchHistory_payload;
  execute1_inInst_thrown_payload_pcPlus4 <= execute1_inInst_payload_pcPlus4;
  execute1_inInst_thrown_payload_pc_sel <= execute1_inInst_payload_pc_sel;
  execute1_inInst_thrown_payload_unalignedMemoryAccessException <= execute1_inInst_payload_unalignedMemoryAccessException;
  execute1_inInst_thrown_payload_needMemRsp <= execute1_inInst_payload_needMemRsp;
  execute1_inInst_thrown_payload_dCmdAddress <= execute1_inInst_payload_dCmdAddress;
  zz_24 <= (not execute1_halt);
  execute1_inInst_thrown_ready <= (execute1_outInst_ready and zz_24);
  execute1_outInst_valid <= (execute1_inInst_thrown_valid and zz_24);
  execute1_outInst_payload_pc <= execute1_inInst_payload_pc;
  process(execute1_inInst_payload_result,zz_73,DivExtension_rsp,execute1_inInst_valid,zz_71,zz_72,SimpleInterrupExtension_irqValue,writeBack_irq_mask)
  begin
    execute1_outInst_payload_result <= execute1_inInst_payload_result;
    if zz_73 = '1' then
      execute1_outInst_payload_result <= DivExtension_rsp;
    end if;
    if execute1_inInst_valid = '1' then
      if zz_71 = '1' then
        case zz_72 is
          when "00" =>
          when "01" =>
            execute1_outInst_payload_result <= pkg_resize(SimpleInterrupExtension_irqValue,32);
          when "10" =>
          when others =>
            execute1_outInst_payload_result <= pkg_resize(writeBack_irq_mask,32);
        end case;
      end if;
    end if;
  end process;

  execute1_outInst_payload_regFileAddress <= unsigned(pkg_extract(execute1_inInst_payload_instruction,11,7));
  execute1_outInst_payload_ctrl_instVal <= execute1_inInst_payload_ctrl_instVal;
  execute1_outInst_payload_ctrl_br <= execute1_inInst_payload_ctrl_br;
  execute1_outInst_payload_ctrl_jmp <= execute1_inInst_payload_ctrl_jmp;
  execute1_outInst_payload_ctrl_op0 <= execute1_inInst_payload_ctrl_op0;
  execute1_outInst_payload_ctrl_op1 <= execute1_inInst_payload_ctrl_op1;
  execute1_outInst_payload_ctrl_alu <= execute1_inInst_payload_ctrl_alu;
  execute1_outInst_payload_ctrl_wb <= execute1_inInst_payload_ctrl_wb;
  execute1_outInst_payload_ctrl_rfen <= execute1_inInst_payload_ctrl_rfen;
  execute1_outInst_payload_ctrl_execute0AluBypass <= execute1_inInst_payload_ctrl_execute0AluBypass;
  execute1_outInst_payload_ctrl_execute1AluBypass <= execute1_inInst_payload_ctrl_execute1AluBypass;
  execute1_outInst_payload_ctrl_canInternalyStallWriteBack0 <= execute1_inInst_payload_ctrl_canInternalyStallWriteBack0;
  execute1_outInst_payload_ctrl_men <= execute1_inInst_payload_ctrl_men;
  execute1_outInst_payload_ctrl_m <= execute1_inInst_payload_ctrl_m;
  execute1_outInst_payload_ctrl_msk <= execute1_inInst_payload_ctrl_msk;
  execute1_outInst_payload_ctrl_csr <= execute1_inInst_payload_ctrl_csr;
  execute1_outInst_payload_ctrl_mfs <= execute1_inInst_payload_ctrl_mfs;
  execute1_outInst_payload_ctrl_useSrc0 <= execute1_inInst_payload_ctrl_useSrc0;
  execute1_outInst_payload_ctrl_useSrc1 <= execute1_inInst_payload_ctrl_useSrc1;
  execute1_outInst_payload_ctrl_extensionTag <= execute1_inInst_payload_ctrl_extensionTag;
  execute1_outInst_payload_ctrl_fencei <= execute1_inInst_payload_ctrl_fencei;
  execute1_outInst_payload_instruction <= execute1_inInst_payload_instruction;
  execute1_outInst_payload_pcPlus4 <= execute1_inInst_payload_pcPlus4;
  execute1_outInst_payload_unalignedMemoryAccessException <= execute1_inInst_payload_unalignedMemoryAccessException;
  execute1_outInst_payload_needMemRsp <= execute1_inInst_payload_needMemRsp;
  execute1_outInst_payload_dCmdAddress <= execute1_inInst_payload_dCmdAddress;
  process(writeBack_pcLoad_valid)
  begin
    execute1_flush <= pkg_toStdLogic(false);
    if writeBack_pcLoad_valid = '1' then
      execute1_flush <= pkg_toStdLogic(true);
    end if;
  end process;

  execute1_outInst_ready <= ((pkg_toStdLogic(false) and (not writeBack_inInst_valid)) or writeBack_inInst_ready);
  writeBack_inInst_valid <= execute1_outInst_m2sPipe_rValid;
  writeBack_inInst_payload_pc <= execute1_outInst_m2sPipe_rData_pc;
  writeBack_inInst_payload_instruction <= execute1_outInst_m2sPipe_rData_instruction;
  writeBack_inInst_payload_ctrl_instVal <= execute1_outInst_m2sPipe_rData_ctrl_instVal;
  writeBack_inInst_payload_ctrl_br <= execute1_outInst_m2sPipe_rData_ctrl_br;
  writeBack_inInst_payload_ctrl_jmp <= execute1_outInst_m2sPipe_rData_ctrl_jmp;
  writeBack_inInst_payload_ctrl_op0 <= execute1_outInst_m2sPipe_rData_ctrl_op0;
  writeBack_inInst_payload_ctrl_op1 <= execute1_outInst_m2sPipe_rData_ctrl_op1;
  writeBack_inInst_payload_ctrl_alu <= execute1_outInst_m2sPipe_rData_ctrl_alu;
  writeBack_inInst_payload_ctrl_wb <= execute1_outInst_m2sPipe_rData_ctrl_wb;
  writeBack_inInst_payload_ctrl_rfen <= execute1_outInst_m2sPipe_rData_ctrl_rfen;
  writeBack_inInst_payload_ctrl_execute0AluBypass <= execute1_outInst_m2sPipe_rData_ctrl_execute0AluBypass;
  writeBack_inInst_payload_ctrl_execute1AluBypass <= execute1_outInst_m2sPipe_rData_ctrl_execute1AluBypass;
  writeBack_inInst_payload_ctrl_canInternalyStallWriteBack0 <= execute1_outInst_m2sPipe_rData_ctrl_canInternalyStallWriteBack0;
  writeBack_inInst_payload_ctrl_men <= execute1_outInst_m2sPipe_rData_ctrl_men;
  writeBack_inInst_payload_ctrl_m <= execute1_outInst_m2sPipe_rData_ctrl_m;
  writeBack_inInst_payload_ctrl_msk <= execute1_outInst_m2sPipe_rData_ctrl_msk;
  writeBack_inInst_payload_ctrl_csr <= execute1_outInst_m2sPipe_rData_ctrl_csr;
  writeBack_inInst_payload_ctrl_mfs <= execute1_outInst_m2sPipe_rData_ctrl_mfs;
  writeBack_inInst_payload_ctrl_useSrc0 <= execute1_outInst_m2sPipe_rData_ctrl_useSrc0;
  writeBack_inInst_payload_ctrl_useSrc1 <= execute1_outInst_m2sPipe_rData_ctrl_useSrc1;
  writeBack_inInst_payload_ctrl_extensionTag <= execute1_outInst_m2sPipe_rData_ctrl_extensionTag;
  writeBack_inInst_payload_ctrl_fencei <= execute1_outInst_m2sPipe_rData_ctrl_fencei;
  process(execute1_outInst_m2sPipe_rData_result,writeBack_inInst_payload_ctrl_extensionTag,zz_82,MulExtension_s3_low,MulExtension_s3_result)
  begin
    writeBack_inInst_payload_result <= execute1_outInst_m2sPipe_rData_result;
    if pkg_toStdLogic(writeBack_inInst_payload_ctrl_extensionTag = pkg_stdLogicVector("01")) = '1' then
      case zz_82 is
        when "00" =>
          writeBack_inInst_payload_result <= std_logic_vector(pkg_extract(MulExtension_s3_low,31,0));
        when others =>
          writeBack_inInst_payload_result <= std_logic_vector(pkg_extract(MulExtension_s3_result,63,32));
      end case;
    end if;
  end process;

  writeBack_inInst_payload_regFileAddress <= execute1_outInst_m2sPipe_rData_regFileAddress;
  writeBack_inInst_payload_pcPlus4 <= execute1_outInst_m2sPipe_rData_pcPlus4;
  writeBack_inInst_payload_unalignedMemoryAccessException <= execute1_outInst_m2sPipe_rData_unalignedMemoryAccessException;
  writeBack_inInst_payload_needMemRsp <= execute1_outInst_m2sPipe_rData_needMemRsp;
  writeBack_inInst_payload_dCmdAddress <= execute1_outInst_m2sPipe_rData_dCmdAddress;
  process(writeBack_inInst_payload_ctrl_rfen,writeBack_flush,zz_66,zz_67)
  begin
    writeBack_throwIt <= (not writeBack_inInst_payload_ctrl_rfen);
    if writeBack_flush = '1' then
      writeBack_throwIt <= pkg_toStdLogic(true);
    end if;
    if zz_66 = '1' then
      if zz_67 = '1' then
        writeBack_throwIt <= pkg_toStdLogic(true);
      end if;
    end if;
  end process;

  process(writeBack_irq_sources,writeBack_irq_mask,writeBack_inInst_valid,writeBack_inInst_payload_needMemRsp,dRsp_valid,writeBack_flushMemoryResponse)
  begin
    writeBack_halt <= pkg_toStdLogic(false);
    if pkg_toStdLogic(((writeBack_irq_sources and pkg_not(writeBack_irq_mask)) and pkg_stdLogicVector("00000010")) /= pkg_stdLogicVector("00000000")) = '1' then
      writeBack_halt <= pkg_toStdLogic(true);
    end if;
    if (writeBack_inInst_valid and writeBack_inInst_payload_needMemRsp) = '1' then
      if (not dRsp_valid) = '1' then
        writeBack_halt <= pkg_toStdLogic(true);
      end if;
    end if;
    if writeBack_flushMemoryResponse = '1' then
      writeBack_halt <= pkg_toStdLogic(true);
    end if;
  end process;

  process(writeBack_inInst_valid,writeBack_inInst_payload_ctrl_instVal,writeBack_inInst_payload_unalignedMemoryAccessException,io_interrupt_1,io_interrupt_0,io_interrupt_3,io_interrupt_2)
  begin
    writeBack_irq_sources <= pkg_stdLogicVector("00000000");
    if writeBack_inInst_valid = '1' then
      if (not writeBack_inInst_payload_ctrl_instVal) = '1' then
        writeBack_irq_sources(0) <= pkg_toStdLogic(true);
      end if;
      if writeBack_inInst_payload_unalignedMemoryAccessException = '1' then
        writeBack_irq_sources(1) <= pkg_toStdLogic(true);
      end if;
    end if;
    writeBack_irq_sources(5) <= io_interrupt_1;
    writeBack_irq_sources(4) <= io_interrupt_0;
    writeBack_irq_sources(7) <= io_interrupt_3;
    writeBack_irq_sources(6) <= io_interrupt_2;
  end process;

  writeBack_irq_masked <= (writeBack_irq_sources and writeBack_irq_mask);
  writeBack_irq_inhibate <= pkg_toStdLogic(false);
  process(zz_66,zz_67,zz_31,zz_74)
  begin
    writeBack_pcLoad_valid <= pkg_toStdLogic(false);
    if zz_66 = '1' then
      if zz_67 = '1' then
        writeBack_pcLoad_valid <= pkg_toStdLogic(true);
      else
        if zz_31 = '1' then
          if zz_74 = '1' then
            writeBack_pcLoad_valid <= pkg_toStdLogic(true);
          end if;
        end if;
      end if;
    end if;
  end process;

  process(zz_66,zz_67,zz_31,zz_74)
  begin
    writeBack_pcLoad_payload <= pkg_unsigned("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
    if zz_66 = '1' then
      if zz_67 = '1' then
        writeBack_pcLoad_payload <= pkg_unsigned("00000000000000000000000000000000");
      else
        if zz_31 = '1' then
          if zz_74 = '1' then
            writeBack_pcLoad_payload <= pkg_unsigned("00000000000000000000000000000000");
          end if;
        end if;
      end if;
    end if;
  end process;

  process(writeBack_flushMemoryResponse)
  begin
    dRsp_ready <= pkg_toStdLogic(true);
    if writeBack_flushMemoryResponse = '1' then
      dRsp_ready <= pkg_toStdLogic(true);
    end if;
  end process;

  zz_25 <= (pkg_extract(dRsp_payload,7) and (not pkg_extract(writeBack_inInst_payload_instruction,14)));
  process(zz_25,dRsp_payload)
  begin
    zz_26(31) <= zz_25;
    zz_26(30) <= zz_25;
    zz_26(29) <= zz_25;
    zz_26(28) <= zz_25;
    zz_26(27) <= zz_25;
    zz_26(26) <= zz_25;
    zz_26(25) <= zz_25;
    zz_26(24) <= zz_25;
    zz_26(23) <= zz_25;
    zz_26(22) <= zz_25;
    zz_26(21) <= zz_25;
    zz_26(20) <= zz_25;
    zz_26(19) <= zz_25;
    zz_26(18) <= zz_25;
    zz_26(17) <= zz_25;
    zz_26(16) <= zz_25;
    zz_26(15) <= zz_25;
    zz_26(14) <= zz_25;
    zz_26(13) <= zz_25;
    zz_26(12) <= zz_25;
    zz_26(11) <= zz_25;
    zz_26(10) <= zz_25;
    zz_26(9) <= zz_25;
    zz_26(8) <= zz_25;
    zz_26(7 downto 0) <= pkg_extract(dRsp_payload,7,0);
  end process;

  zz_27 <= (pkg_extract(dRsp_payload,15) and (not pkg_extract(writeBack_inInst_payload_instruction,14)));
  process(zz_27,dRsp_payload)
  begin
    zz_28(31) <= zz_27;
    zz_28(30) <= zz_27;
    zz_28(29) <= zz_27;
    zz_28(28) <= zz_27;
    zz_28(27) <= zz_27;
    zz_28(26) <= zz_27;
    zz_28(25) <= zz_27;
    zz_28(24) <= zz_27;
    zz_28(23) <= zz_27;
    zz_28(22) <= zz_27;
    zz_28(21) <= zz_27;
    zz_28(20) <= zz_27;
    zz_28(19) <= zz_27;
    zz_28(18) <= zz_27;
    zz_28(17) <= zz_27;
    zz_28(16) <= zz_27;
    zz_28(15 downto 0) <= pkg_extract(dRsp_payload,15,0);
  end process;

  process(writeBack_inInst_payload_ctrl_msk,zz_26,zz_28,dRsp_payload)
  begin
    case writeBack_inInst_payload_ctrl_msk is
      when MSK_binary_sequential_B =>
        writeBack_dataRspFormated <= zz_26;
      when MSK_binary_sequential_H =>
        writeBack_dataRspFormated <= zz_28;
      when others =>
        writeBack_dataRspFormated <= dRsp_payload;
    end case;
  end process;

  process(writeBack_inInst_payload_ctrl_wb,writeBack_inInst_payload_result,writeBack_dataRspFormated,writeBack_inInst_payload_pcPlus4)
  begin
    case writeBack_inInst_payload_ctrl_wb is
      when WB_binary_sequential_ALU_1 =>
        writeBack_regFileData <= writeBack_inInst_payload_result;
      when WB_binary_sequential_MEM =>
        writeBack_regFileData <= writeBack_dataRspFormated;
      when WB_binary_sequential_PC4 =>
        writeBack_regFileData <= std_logic_vector(writeBack_inInst_payload_pcPlus4);
      when others =>
        writeBack_regFileData <= pkg_stdLogicVector("00000000000000000000000000000000");
    end case;
  end process;

  process(writeBack_inInst_valid,writeBack_throwIt)
  begin
    writeBack_inInst_thrown_valid <= writeBack_inInst_valid;
    if writeBack_throwIt = '1' then
      writeBack_inInst_thrown_valid <= pkg_toStdLogic(false);
    end if;
  end process;

  process(writeBack_inInst_thrown_ready,writeBack_throwIt)
  begin
    writeBack_inInst_ready <= writeBack_inInst_thrown_ready;
    if writeBack_throwIt = '1' then
      writeBack_inInst_ready <= pkg_toStdLogic(true);
    end if;
  end process;

  writeBack_inInst_thrown_payload_pc <= writeBack_inInst_payload_pc;
  writeBack_inInst_thrown_payload_instruction <= writeBack_inInst_payload_instruction;
  writeBack_inInst_thrown_payload_ctrl_instVal <= writeBack_inInst_payload_ctrl_instVal;
  writeBack_inInst_thrown_payload_ctrl_br <= writeBack_inInst_payload_ctrl_br;
  writeBack_inInst_thrown_payload_ctrl_jmp <= writeBack_inInst_payload_ctrl_jmp;
  writeBack_inInst_thrown_payload_ctrl_op0 <= writeBack_inInst_payload_ctrl_op0;
  writeBack_inInst_thrown_payload_ctrl_op1 <= writeBack_inInst_payload_ctrl_op1;
  writeBack_inInst_thrown_payload_ctrl_alu <= writeBack_inInst_payload_ctrl_alu;
  writeBack_inInst_thrown_payload_ctrl_wb <= writeBack_inInst_payload_ctrl_wb;
  writeBack_inInst_thrown_payload_ctrl_rfen <= writeBack_inInst_payload_ctrl_rfen;
  writeBack_inInst_thrown_payload_ctrl_execute0AluBypass <= writeBack_inInst_payload_ctrl_execute0AluBypass;
  writeBack_inInst_thrown_payload_ctrl_execute1AluBypass <= writeBack_inInst_payload_ctrl_execute1AluBypass;
  writeBack_inInst_thrown_payload_ctrl_canInternalyStallWriteBack0 <= writeBack_inInst_payload_ctrl_canInternalyStallWriteBack0;
  writeBack_inInst_thrown_payload_ctrl_men <= writeBack_inInst_payload_ctrl_men;
  writeBack_inInst_thrown_payload_ctrl_m <= writeBack_inInst_payload_ctrl_m;
  writeBack_inInst_thrown_payload_ctrl_msk <= writeBack_inInst_payload_ctrl_msk;
  writeBack_inInst_thrown_payload_ctrl_csr <= writeBack_inInst_payload_ctrl_csr;
  writeBack_inInst_thrown_payload_ctrl_mfs <= writeBack_inInst_payload_ctrl_mfs;
  writeBack_inInst_thrown_payload_ctrl_useSrc0 <= writeBack_inInst_payload_ctrl_useSrc0;
  writeBack_inInst_thrown_payload_ctrl_useSrc1 <= writeBack_inInst_payload_ctrl_useSrc1;
  writeBack_inInst_thrown_payload_ctrl_extensionTag <= writeBack_inInst_payload_ctrl_extensionTag;
  writeBack_inInst_thrown_payload_ctrl_fencei <= writeBack_inInst_payload_ctrl_fencei;
  writeBack_inInst_thrown_payload_result <= writeBack_inInst_payload_result;
  writeBack_inInst_thrown_payload_regFileAddress <= writeBack_inInst_payload_regFileAddress;
  writeBack_inInst_thrown_payload_pcPlus4 <= writeBack_inInst_payload_pcPlus4;
  writeBack_inInst_thrown_payload_unalignedMemoryAccessException <= writeBack_inInst_payload_unalignedMemoryAccessException;
  writeBack_inInst_thrown_payload_needMemRsp <= writeBack_inInst_payload_needMemRsp;
  writeBack_inInst_thrown_payload_dCmdAddress <= writeBack_inInst_payload_dCmdAddress;
  zz_29 <= (not writeBack_halt);
  writeBack_inInst_thrown_ready <= (writeBack_outInst_ready and zz_29);
  writeBack_outInst_valid <= (writeBack_inInst_thrown_valid and zz_29);
  writeBack_outInst_payload_addr <= writeBack_inInst_payload_regFileAddress;
  writeBack_outInst_payload_data <= writeBack_regFileData;
  writeBack_regFileWrite_valid <= (writeBack_outInst_valid and writeBack_outInst_ready);
  writeBack_regFileWrite_payload_address <= writeBack_outInst_payload_addr;
  writeBack_regFileWrite_payload_data <= writeBack_regFileData;
  writeBack_flush <= pkg_toStdLogic(false);
  writeBack_outInst_ready <= ((pkg_toStdLogic(false) and (not writeBackBuffer_inInst_valid)) or writeBackBuffer_inInst_ready);
  writeBackBuffer_inInst_valid <= writeBack_outInst_m2sPipe_rValid;
  writeBackBuffer_inInst_payload_addr <= writeBack_outInst_m2sPipe_rData_addr;
  writeBackBuffer_inInst_payload_data <= writeBack_outInst_m2sPipe_rData_data;
  writeBackBuffer_inInst_ready <= pkg_toStdLogic(true);
  process(execute1_pcLoad_valid,writeBack_pcLoad_valid)
  begin
    prefetch_pcLoad_valid <= execute1_pcLoad_valid;
    if writeBack_pcLoad_valid = '1' then
      prefetch_pcLoad_valid <= pkg_toStdLogic(true);
    end if;
  end process;

  process(execute1_pcLoad_payload,writeBack_pcLoad_valid,writeBack_pcLoad_payload)
  begin
    prefetch_pcLoad_payload <= execute1_pcLoad_payload;
    if writeBack_pcLoad_valid = '1' then
      prefetch_pcLoad_payload <= writeBack_pcLoad_payload;
    end if;
  end process;

  process(writeBackBuffer_inInst_valid,hazardTracker_W2R_addr0Match,zz_75,zz_76,hazardTracker_A_addr0Match,zz_77,zz_78,hazardTracker_E1_addr0Match,zz_79,zz_80,hazardTracker_E0_addr0Match,decode_addr0IsZero,decode_ctrl_useSrc0)
  begin
    hazardTracker_src0Hazard <= pkg_toStdLogic(false);
    if writeBackBuffer_inInst_valid = '1' then
      if hazardTracker_W2R_addr0Match = '1' then
        hazardTracker_src0Hazard <= pkg_toStdLogic(true);
      end if;
    end if;
    if zz_75 = '1' then
      if zz_76 = '1' then
        if hazardTracker_A_addr0Match = '1' then
          hazardTracker_src0Hazard <= pkg_toStdLogic(true);
        end if;
      end if;
    end if;
    if zz_77 = '1' then
      if zz_78 = '1' then
        if hazardTracker_E1_addr0Match = '1' then
          hazardTracker_src0Hazard <= pkg_toStdLogic(true);
        end if;
      end if;
    end if;
    if zz_79 = '1' then
      if zz_80 = '1' then
        if hazardTracker_E0_addr0Match = '1' then
          hazardTracker_src0Hazard <= pkg_toStdLogic(true);
        end if;
      end if;
    end if;
    if (decode_addr0IsZero or (not decode_ctrl_useSrc0)) = '1' then
      hazardTracker_src0Hazard <= pkg_toStdLogic(false);
    end if;
  end process;

  process(writeBackBuffer_inInst_valid,hazardTracker_W2R_addr1Match,zz_75,zz_76,hazardTracker_A_addr1Match,zz_77,zz_78,hazardTracker_E1_addr1Match,zz_79,zz_80,hazardTracker_E0_addr1Match,decode_addr1IsZero,decode_ctrl_useSrc1)
  begin
    hazardTracker_src1Hazard <= pkg_toStdLogic(false);
    if writeBackBuffer_inInst_valid = '1' then
      if hazardTracker_W2R_addr1Match = '1' then
        hazardTracker_src1Hazard <= pkg_toStdLogic(true);
      end if;
    end if;
    if zz_75 = '1' then
      if zz_76 = '1' then
        if hazardTracker_A_addr1Match = '1' then
          hazardTracker_src1Hazard <= pkg_toStdLogic(true);
        end if;
      end if;
    end if;
    if zz_77 = '1' then
      if zz_78 = '1' then
        if hazardTracker_E1_addr1Match = '1' then
          hazardTracker_src1Hazard <= pkg_toStdLogic(true);
        end if;
      end if;
    end if;
    if zz_79 = '1' then
      if zz_80 = '1' then
        if hazardTracker_E0_addr1Match = '1' then
          hazardTracker_src1Hazard <= pkg_toStdLogic(true);
        end if;
      end if;
    end if;
    if (decode_addr1IsZero or (not decode_ctrl_useSrc1)) = '1' then
      hazardTracker_src1Hazard <= pkg_toStdLogic(false);
    end if;
  end process;

  decode_hazard <= (hazardTracker_src0Hazard or hazardTracker_src1Hazard);
  hazardTracker_W2R_addr0Match <= pkg_toStdLogic(writeBackBuffer_inInst_payload_addr = decode_addr0);
  hazardTracker_W2R_addr1Match <= pkg_toStdLogic(writeBackBuffer_inInst_payload_addr = decode_addr1);
  hazardTracker_A_addr0Match <= pkg_toStdLogic(writeBack_outInst_payload_addr = decode_addr0);
  hazardTracker_A_addr1Match <= pkg_toStdLogic(writeBack_outInst_payload_addr = decode_addr1);
  hazardTracker_E1_addr0Match <= pkg_toStdLogic(unsigned(pkg_extract(execute1_outInst_payload_instruction,11,7)) = decode_addr0);
  hazardTracker_E1_addr1Match <= pkg_toStdLogic(unsigned(pkg_extract(execute1_outInst_payload_instruction,11,7)) = decode_addr1);
  hazardTracker_E0_addr0Match <= pkg_toStdLogic(unsigned(pkg_extract(execute0_outInst_payload_instruction,11,7)) = decode_addr0);
  hazardTracker_E0_addr1Match <= pkg_toStdLogic(unsigned(pkg_extract(execute0_outInst_payload_instruction,11,7)) = decode_addr1);
  MulExtension_s1_a <= execute0_inInst_payload_alu_op0;
  MulExtension_s1_b <= execute0_inInst_payload_alu_op1;
  process(zz_81)
  begin
    case zz_81 is
      when "01" =>
        MulExtension_s1_aSigned <= pkg_toStdLogic(true);
      when "10" =>
        MulExtension_s1_aSigned <= pkg_toStdLogic(true);
      when others =>
        MulExtension_s1_aSigned <= pkg_toStdLogic(false);
    end case;
  end process;

  process(zz_81)
  begin
    case zz_81 is
      when "01" =>
        MulExtension_s1_bSigned <= pkg_toStdLogic(true);
      when "10" =>
        MulExtension_s1_bSigned <= pkg_toStdLogic(false);
      when others =>
        MulExtension_s1_bSigned <= pkg_toStdLogic(false);
    end case;
  end process;

  MulExtension_s1_aULow <= unsigned(pkg_extract(MulExtension_s1_a,15,0));
  MulExtension_s1_bULow <= unsigned(pkg_extract(MulExtension_s1_b,15,0));
  MulExtension_s1_aSLow <= signed(pkg_cat(pkg_toStdLogicVector(pkg_toStdLogic(false)),pkg_extract(MulExtension_s1_a,15,0)));
  MulExtension_s1_bSLow <= signed(pkg_cat(pkg_toStdLogicVector(pkg_toStdLogic(false)),pkg_extract(MulExtension_s1_b,15,0)));
  MulExtension_s1_aHigh <= signed(pkg_cat(pkg_toStdLogicVector((MulExtension_s1_aSigned and pkg_extract(MulExtension_s1_a,31))),pkg_extract(MulExtension_s1_a,31,16)));
  MulExtension_s1_bHigh <= signed(pkg_cat(pkg_toStdLogicVector((MulExtension_s1_bSigned and pkg_extract(MulExtension_s1_b,31))),pkg_extract(MulExtension_s1_b,31,16)));
  MulExtension_s1_mul_ll <= (MulExtension_s1_aULow * MulExtension_s1_bULow);
  MulExtension_s1_mul_lh <= (MulExtension_s1_aSLow * MulExtension_s1_bHigh);
  MulExtension_s1_mul_hl <= (MulExtension_s1_aHigh * MulExtension_s1_bSLow);
  MulExtension_s1_mul_hh <= (MulExtension_s1_aHigh * MulExtension_s1_bHigh);
  MulExtension_s2_low <= ((pkg_resize((pkg_signed("000000000000000000000000000000000000") + pkg_resize(signed(pkg_cat(pkg_toStdLogicVector(pkg_toStdLogic(false)),std_logic_vector(MulExtension_s2_mul_ll))),36)),50) + pkg_shiftLeft(MulExtension_s2_mul_lh,16)) + pkg_shiftLeft(MulExtension_s2_mul_hl,16));
  MulExtension_s3_result <= (pkg_resize(MulExtension_s3_low,66) + pkg_shiftLeft(MulExtension_s3_mul_hh,32));
  process(zz_68,execute0_outInst_valid)
  begin
    zz_43 <= pkg_toStdLogic(false);
    if zz_68 = '1' then
      zz_43 <= execute0_outInst_valid;
    end if;
  end process;

  zz_44 <= (not pkg_extract(execute0_inInst_payload_instruction,12));
  process(zz_73,execute1_inInst_ready,DivExtension_rspReady)
  begin
    zz_45 <= pkg_toStdLogic(false);
    if zz_73 = '1' then
      zz_45 <= (execute1_inInst_ready and DivExtension_rspReady);
    end if;
  end process;

  barrelShifterLight_s1_amplitude <= unsigned(pkg_extract(execute0_inInst_payload_alu_op1,4,0));
  barrelShifterLight_s1_isShift <= ((pkg_toStdLogic(execute0_inInst_payload_ctrl_alu = ALU_opt_SLL1) or pkg_toStdLogic(execute0_inInst_payload_ctrl_alu = ALU_opt_SRL_1)) or pkg_toStdLogic(execute0_inInst_payload_ctrl_alu = ALU_opt_SRA_1));
  process(writeBack_irq_masked,zz_30)
  begin
    SimpleInterrupExtension_irqValue <= pkg_stdLogicVector("00000000");
    SimpleInterrupExtension_irqValue(5) <= pkg_extract(writeBack_irq_masked,5);
    SimpleInterrupExtension_irqValue(4) <= pkg_extract(writeBack_irq_masked,4);
    SimpleInterrupExtension_irqValue(7) <= pkg_extract(writeBack_irq_masked,7);
    SimpleInterrupExtension_irqValue(1) <= zz_30;
    SimpleInterrupExtension_irqValue(6) <= pkg_extract(writeBack_irq_masked,6);
  end process;

  io_i_cmd_valid <= iCmd_valid;
  iCmd_ready <= io_i_cmd_ready;
  io_i_cmd_payload_pc <= iCmd_payload_pc;
  iRsp_valid <= io_i_rsp_valid;
  io_i_rsp_ready <= iRsp_ready;
  iRsp_payload_instruction <= io_i_rsp_payload_instruction;
  iRsp_payload_pc <= io_i_rsp_payload_pc;
  io_d_cmd_valid <= dCmd_valid;
  dCmd_ready <= io_d_cmd_ready;
  io_d_cmd_payload_wr <= dCmd_payload_wr;
  io_d_cmd_payload_address <= dCmd_payload_address;
  io_d_cmd_payload_data <= dCmd_payload_data;
  io_d_cmd_payload_size <= dCmd_payload_size;
  dRsp_valid <= io_d_rsp_valid;
  io_d_rsp_ready <= dRsp_ready;
  dRsp_payload <= io_d_rsp_payload;
  zz_32 <= execute0_outInst_valid;
  zz_33 <= execute0_outInst_payload_pc;
  zz_34 <= execute0_outInst_payload_instruction;
  zz_35 <= dCmd_valid;
  zz_36 <= dCmd_ready;
  zz_37 <= dCmd_payload_wr;
  zz_38 <= dCmd_payload_address;
  zz_39 <= dCmd_payload_data;
  zz_40 <= dCmd_payload_size;
  zz_41 <= dRsp_valid;
  zz_42 <= writeBack_dataRspFormated;
  process(clk, reset)
  begin
    if reset = '1' then
      prefetch_pc <= pkg_unsigned("00000000000000000000001000000000");
      prefetch_inc <= pkg_toStdLogic(false);
      prefetch_resetDone <= pkg_toStdLogic(false);
      fetch_pendingPrefetch_value <= pkg_unsigned("00");
      fetch_throwRemaining <= pkg_unsigned("00");
      fetch_outInst_m2sPipe_rValid <= pkg_toStdLogic(false);
      decode_outInst_m2sPipe_rValid <= pkg_toStdLogic(false);
      execute0_pendingDataCmd_readCount <= pkg_unsigned("00");
      execute0_outInst_m2sPipe_rValid <= pkg_toStdLogic(false);
      execute1_outInst_m2sPipe_rValid <= pkg_toStdLogic(false);
      writeBack_irq_mask <= pkg_stdLogicVector("00000000");
      writeBack_flushMemoryResponse <= pkg_toStdLogic(false);
      writeBack_outInst_m2sPipe_rValid <= pkg_toStdLogic(false);
      DivExtension_rspReady <= pkg_toStdLogic(false);
      SimpleInterrupExtension_inIrq <= pkg_toStdLogic(false);
    elsif rising_edge(clk) then
      prefetch_resetDone <= pkg_toStdLogic(true);
      if ((iCmd_valid and iCmd_ready) or prefetch_pcLoad_valid) = '1' then
        prefetch_pc <= prefetch_pcNext;
      end if;
      if (iCmd_valid and iCmd_ready) = '1' then
        prefetch_inc <= pkg_toStdLogic(true);
      else
        if prefetch_pcLoad_valid = '1' then
          prefetch_inc <= pkg_toStdLogic(false);
        end if;
      end if;
      fetch_pendingPrefetch_value <= fetch_pendingPrefetch_valueNext;
      if (fetch_throwNextIRsp and (iRsp_valid and iRsp_ready)) = '1' then
        fetch_throwRemaining <= (fetch_throwRemaining - pkg_unsigned("01"));
      end if;
      if fetch_throwIt = '1' then
        fetch_throwRemaining <= (fetch_pendingPrefetch_value - pkg_resize(unsigned(pkg_toStdLogicVector(iRsp_valid)),2));
      end if;
      if fetch_outInst_ready = '1' then
        fetch_outInst_m2sPipe_rValid <= fetch_outInst_valid;
      end if;
      if decode_outInst_ready = '1' then
        decode_outInst_m2sPipe_rValid <= decode_outInst_valid;
      end if;
      if pkg_toStdLogic(execute0_pendingDataCmd_readCountInc /= execute0_pendingDataCmd_readCountDec) = '1' then
        execute0_pendingDataCmd_readCount <= (execute0_pendingDataCmd_readCount + pkg_mux(execute0_pendingDataCmd_readCountInc,pkg_unsigned("01"),pkg_unsigned("11")));
      end if;
      if execute0_outInst_ready = '1' then
        execute0_outInst_m2sPipe_rValid <= execute0_outInst_valid;
      end if;
      if execute1_outInst_ready = '1' then
        execute1_outInst_m2sPipe_rValid <= execute1_outInst_valid;
      end if;
      if pkg_toStdLogic(execute0_pendingDataCmd_readCount = pkg_unsigned("00")) = '1' then
        writeBack_flushMemoryResponse <= pkg_toStdLogic(false);
      end if;
      if writeBack_outInst_ready = '1' then
        writeBack_outInst_m2sPipe_rValid <= writeBack_outInst_valid;
      end if;
      if zz_73 = '1' then
        DivExtension_rspReady <= (DivExtension_divider_io_rsp_valid and (not execute1_inInst_ready));
      end if;
      if execute1_throwIt = '1' then
        DivExtension_rspReady <= pkg_toStdLogic(false);
      end if;
      if zz_66 = '1' then
        if zz_67 = '1' then
          writeBack_flushMemoryResponse <= pkg_toStdLogic(true);
          SimpleInterrupExtension_inIrq <= pkg_toStdLogic(true);
        else
          if zz_31 = '1' then
            if zz_74 = '1' then
              SimpleInterrupExtension_inIrq <= pkg_toStdLogic(true);
            end if;
          end if;
        end if;
      end if;
      if execute1_inInst_valid = '1' then
        if zz_71 = '1' then
          case zz_72 is
            when "00" =>
              if (execute1_outInst_valid and execute1_outInst_ready) = '1' then
                SimpleInterrupExtension_inIrq <= pkg_toStdLogic(false);
              end if;
            when "01" =>
            when "10" =>
              writeBack_irq_mask <= pkg_resize(execute1_inInst_payload_result,8);
            when others =>
          end case;
        end if;
      end if;
    end if;
  end process;

  process(clk)
  begin
    if rising_edge(clk) then
      if fetch_outInst_ready = '1' then
        fetch_outInst_m2sPipe_rData_pc <= fetch_outInst_payload_pc;
        fetch_outInst_m2sPipe_rData_instruction <= fetch_outInst_payload_instruction;
        fetch_outInst_m2sPipe_rData_branchCacheLine_pc <= fetch_outInst_payload_branchCacheLine_pc;
        fetch_outInst_m2sPipe_rData_branchCacheLine_history <= fetch_outInst_payload_branchCacheLine_history;
      end if;
      if decode_outInst_ready = '1' then
        decode_outInst_m2sPipe_rData_pc <= decode_outInst_payload_pc;
        decode_outInst_m2sPipe_rData_instruction <= decode_outInst_payload_instruction;
        decode_outInst_m2sPipe_rData_ctrl_instVal <= decode_outInst_payload_ctrl_instVal;
        decode_outInst_m2sPipe_rData_ctrl_br <= decode_outInst_payload_ctrl_br;
        decode_outInst_m2sPipe_rData_ctrl_jmp <= decode_outInst_payload_ctrl_jmp;
        decode_outInst_m2sPipe_rData_ctrl_op0 <= decode_outInst_payload_ctrl_op0;
        decode_outInst_m2sPipe_rData_ctrl_op1 <= decode_outInst_payload_ctrl_op1;
        decode_outInst_m2sPipe_rData_ctrl_alu <= decode_outInst_payload_ctrl_alu;
        decode_outInst_m2sPipe_rData_ctrl_wb <= decode_outInst_payload_ctrl_wb;
        decode_outInst_m2sPipe_rData_ctrl_rfen <= decode_outInst_payload_ctrl_rfen;
        decode_outInst_m2sPipe_rData_ctrl_execute0AluBypass <= decode_outInst_payload_ctrl_execute0AluBypass;
        decode_outInst_m2sPipe_rData_ctrl_execute1AluBypass <= decode_outInst_payload_ctrl_execute1AluBypass;
        decode_outInst_m2sPipe_rData_ctrl_canInternalyStallWriteBack0 <= decode_outInst_payload_ctrl_canInternalyStallWriteBack0;
        decode_outInst_m2sPipe_rData_ctrl_men <= decode_outInst_payload_ctrl_men;
        decode_outInst_m2sPipe_rData_ctrl_m <= decode_outInst_payload_ctrl_m;
        decode_outInst_m2sPipe_rData_ctrl_msk <= decode_outInst_payload_ctrl_msk;
        decode_outInst_m2sPipe_rData_ctrl_csr <= decode_outInst_payload_ctrl_csr;
        decode_outInst_m2sPipe_rData_ctrl_mfs <= decode_outInst_payload_ctrl_mfs;
        decode_outInst_m2sPipe_rData_ctrl_useSrc0 <= decode_outInst_payload_ctrl_useSrc0;
        decode_outInst_m2sPipe_rData_ctrl_useSrc1 <= decode_outInst_payload_ctrl_useSrc1;
        decode_outInst_m2sPipe_rData_ctrl_extensionTag <= decode_outInst_payload_ctrl_extensionTag;
        decode_outInst_m2sPipe_rData_ctrl_fencei <= decode_outInst_payload_ctrl_fencei;
        decode_outInst_m2sPipe_rData_src0 <= decode_outInst_payload_src0;
        decode_outInst_m2sPipe_rData_src1 <= decode_outInst_payload_src1;
        decode_outInst_m2sPipe_rData_alu_op0 <= decode_outInst_payload_alu_op0;
        decode_outInst_m2sPipe_rData_alu_op1 <= decode_outInst_payload_alu_op1;
        decode_outInst_m2sPipe_rData_doSub <= decode_outInst_payload_doSub;
        decode_outInst_m2sPipe_rData_predictorHasBranch <= decode_outInst_payload_predictorHasBranch;
        decode_outInst_m2sPipe_rData_branchHistory_valid <= decode_outInst_payload_branchHistory_valid;
        decode_outInst_m2sPipe_rData_branchHistory_payload <= decode_outInst_payload_branchHistory_payload;
      end if;
      if execute0_outInst_ready = '1' then
        execute0_outInst_m2sPipe_rData_pc <= execute0_outInst_payload_pc;
        execute0_outInst_m2sPipe_rData_instruction <= execute0_outInst_payload_instruction;
        execute0_outInst_m2sPipe_rData_ctrl_instVal <= execute0_outInst_payload_ctrl_instVal;
        execute0_outInst_m2sPipe_rData_ctrl_br <= execute0_outInst_payload_ctrl_br;
        execute0_outInst_m2sPipe_rData_ctrl_jmp <= execute0_outInst_payload_ctrl_jmp;
        execute0_outInst_m2sPipe_rData_ctrl_op0 <= execute0_outInst_payload_ctrl_op0;
        execute0_outInst_m2sPipe_rData_ctrl_op1 <= execute0_outInst_payload_ctrl_op1;
        execute0_outInst_m2sPipe_rData_ctrl_alu <= execute0_outInst_payload_ctrl_alu;
        execute0_outInst_m2sPipe_rData_ctrl_wb <= execute0_outInst_payload_ctrl_wb;
        execute0_outInst_m2sPipe_rData_ctrl_rfen <= execute0_outInst_payload_ctrl_rfen;
        execute0_outInst_m2sPipe_rData_ctrl_execute0AluBypass <= execute0_outInst_payload_ctrl_execute0AluBypass;
        execute0_outInst_m2sPipe_rData_ctrl_execute1AluBypass <= execute0_outInst_payload_ctrl_execute1AluBypass;
        execute0_outInst_m2sPipe_rData_ctrl_canInternalyStallWriteBack0 <= execute0_outInst_payload_ctrl_canInternalyStallWriteBack0;
        execute0_outInst_m2sPipe_rData_ctrl_men <= execute0_outInst_payload_ctrl_men;
        execute0_outInst_m2sPipe_rData_ctrl_m <= execute0_outInst_payload_ctrl_m;
        execute0_outInst_m2sPipe_rData_ctrl_msk <= execute0_outInst_payload_ctrl_msk;
        execute0_outInst_m2sPipe_rData_ctrl_csr <= execute0_outInst_payload_ctrl_csr;
        execute0_outInst_m2sPipe_rData_ctrl_mfs <= execute0_outInst_payload_ctrl_mfs;
        execute0_outInst_m2sPipe_rData_ctrl_useSrc0 <= execute0_outInst_payload_ctrl_useSrc0;
        execute0_outInst_m2sPipe_rData_ctrl_useSrc1 <= execute0_outInst_payload_ctrl_useSrc1;
        execute0_outInst_m2sPipe_rData_ctrl_extensionTag <= execute0_outInst_payload_ctrl_extensionTag;
        execute0_outInst_m2sPipe_rData_ctrl_fencei <= execute0_outInst_payload_ctrl_fencei;
        execute0_outInst_m2sPipe_rData_br_eq <= execute0_outInst_payload_br_eq;
        execute0_outInst_m2sPipe_rData_br_ltx <= execute0_outInst_payload_br_ltx;
        execute0_outInst_m2sPipe_rData_src1 <= execute0_outInst_payload_src1;
        execute0_outInst_m2sPipe_rData_result <= execute0_outInst_payload_result;
        execute0_outInst_m2sPipe_rData_adder <= execute0_outInst_payload_adder;
        execute0_outInst_m2sPipe_rData_predictorHasBranch <= execute0_outInst_payload_predictorHasBranch;
        execute0_outInst_m2sPipe_rData_branchHistory_valid <= execute0_outInst_payload_branchHistory_valid;
        execute0_outInst_m2sPipe_rData_branchHistory_payload <= execute0_outInst_payload_branchHistory_payload;
        execute0_outInst_m2sPipe_rData_pcPlus4 <= execute0_outInst_payload_pcPlus4;
        execute0_outInst_m2sPipe_rData_pc_sel <= execute0_outInst_payload_pc_sel;
        execute0_outInst_m2sPipe_rData_unalignedMemoryAccessException <= execute0_outInst_payload_unalignedMemoryAccessException;
        execute0_outInst_m2sPipe_rData_needMemRsp <= execute0_outInst_payload_needMemRsp;
        execute0_outInst_m2sPipe_rData_dCmdAddress <= execute0_outInst_payload_dCmdAddress;
      end if;
      if execute1_outInst_ready = '1' then
        execute1_outInst_m2sPipe_rData_pc <= execute1_outInst_payload_pc;
        execute1_outInst_m2sPipe_rData_instruction <= execute1_outInst_payload_instruction;
        execute1_outInst_m2sPipe_rData_ctrl_instVal <= execute1_outInst_payload_ctrl_instVal;
        execute1_outInst_m2sPipe_rData_ctrl_br <= execute1_outInst_payload_ctrl_br;
        execute1_outInst_m2sPipe_rData_ctrl_jmp <= execute1_outInst_payload_ctrl_jmp;
        execute1_outInst_m2sPipe_rData_ctrl_op0 <= execute1_outInst_payload_ctrl_op0;
        execute1_outInst_m2sPipe_rData_ctrl_op1 <= execute1_outInst_payload_ctrl_op1;
        execute1_outInst_m2sPipe_rData_ctrl_alu <= execute1_outInst_payload_ctrl_alu;
        execute1_outInst_m2sPipe_rData_ctrl_wb <= execute1_outInst_payload_ctrl_wb;
        execute1_outInst_m2sPipe_rData_ctrl_rfen <= execute1_outInst_payload_ctrl_rfen;
        execute1_outInst_m2sPipe_rData_ctrl_execute0AluBypass <= execute1_outInst_payload_ctrl_execute0AluBypass;
        execute1_outInst_m2sPipe_rData_ctrl_execute1AluBypass <= execute1_outInst_payload_ctrl_execute1AluBypass;
        execute1_outInst_m2sPipe_rData_ctrl_canInternalyStallWriteBack0 <= execute1_outInst_payload_ctrl_canInternalyStallWriteBack0;
        execute1_outInst_m2sPipe_rData_ctrl_men <= execute1_outInst_payload_ctrl_men;
        execute1_outInst_m2sPipe_rData_ctrl_m <= execute1_outInst_payload_ctrl_m;
        execute1_outInst_m2sPipe_rData_ctrl_msk <= execute1_outInst_payload_ctrl_msk;
        execute1_outInst_m2sPipe_rData_ctrl_csr <= execute1_outInst_payload_ctrl_csr;
        execute1_outInst_m2sPipe_rData_ctrl_mfs <= execute1_outInst_payload_ctrl_mfs;
        execute1_outInst_m2sPipe_rData_ctrl_useSrc0 <= execute1_outInst_payload_ctrl_useSrc0;
        execute1_outInst_m2sPipe_rData_ctrl_useSrc1 <= execute1_outInst_payload_ctrl_useSrc1;
        execute1_outInst_m2sPipe_rData_ctrl_extensionTag <= execute1_outInst_payload_ctrl_extensionTag;
        execute1_outInst_m2sPipe_rData_ctrl_fencei <= execute1_outInst_payload_ctrl_fencei;
        execute1_outInst_m2sPipe_rData_result <= execute1_outInst_payload_result;
        execute1_outInst_m2sPipe_rData_regFileAddress <= execute1_outInst_payload_regFileAddress;
        execute1_outInst_m2sPipe_rData_pcPlus4 <= execute1_outInst_payload_pcPlus4;
        execute1_outInst_m2sPipe_rData_unalignedMemoryAccessException <= execute1_outInst_payload_unalignedMemoryAccessException;
        execute1_outInst_m2sPipe_rData_needMemRsp <= execute1_outInst_payload_needMemRsp;
        execute1_outInst_m2sPipe_rData_dCmdAddress <= execute1_outInst_payload_dCmdAddress;
      end if;
      if writeBack_outInst_ready = '1' then
        writeBack_outInst_m2sPipe_rData_addr <= writeBack_outInst_payload_addr;
        writeBack_outInst_m2sPipe_rData_data <= writeBack_outInst_payload_data;
      end if;
      if execute0_outInst_ready = '1' then
        MulExtension_s2_mul_ll <= MulExtension_s1_mul_ll;
      end if;
      if execute0_outInst_ready = '1' then
        MulExtension_s2_mul_lh <= MulExtension_s1_mul_lh;
      end if;
      if execute0_outInst_ready = '1' then
        MulExtension_s2_mul_hl <= MulExtension_s1_mul_hl;
      end if;
      if execute0_outInst_ready = '1' then
        MulExtension_s2_mul_hh <= MulExtension_s1_mul_hh;
      end if;
      if execute1_outInst_ready = '1' then
        MulExtension_s3_low <= MulExtension_s2_low;
      end if;
      if execute1_outInst_ready = '1' then
        MulExtension_s3_mul_hh <= MulExtension_s2_mul_hh;
      end if;
      DivExtension_rsp <= pkg_mux(pkg_extract(execute1_inInst_payload_instruction,13),DivExtension_divider_io_rsp_payload_remainder,DivExtension_divider_io_rsp_payload_quotient);
      if zz_69 = '1' then
        if zz_70 = '1' then
          decode_outInst_m2sPipe_rData_alu_op1(4 downto 0) <= std_logic_vector((unsigned(pkg_extract(execute0_inInst_payload_alu_op1,4,0)) - pkg_unsigned("00001")));
          case execute0_inInst_payload_ctrl_alu is
            when ALU_opt_SLL1 =>
              decode_outInst_m2sPipe_rData_alu_op0 <= pkg_resize(pkg_shiftLeft(execute0_inInst_payload_alu_op0,1),32);
            when ALU_opt_SRL_1 | ALU_opt_SRA_1 =>
              decode_outInst_m2sPipe_rData_alu_op0 <= std_logic_vector(pkg_shiftRight(signed(pkg_cat(pkg_toStdLogicVector((pkg_toStdLogic(execute0_inInst_payload_ctrl_alu = ALU_opt_SRA_1) and pkg_extract(execute0_inInst_payload_alu_op0,31))),execute0_inInst_payload_alu_op0)),1));
            when others =>
          end case;
        end if;
      end if;
      if (not SimpleInterrupExtension_inIrq) = '1' then
        zz_30 <= pkg_extract(writeBack_irq_masked,1);
      end if;
      if zz_66 = '1' then
        if zz_67 = '1' then
          SimpleInterrupExtension_exitPc <= writeBack_inInst_payload_pc;
        else
          if zz_31 = '1' then
            if zz_74 = '1' then
              SimpleInterrupExtension_exitPc <= decode_inInst_payload_pc;
            end if;
          end if;
        end if;
      end if;
    end if;
  end process;

  process(clk)
  begin
    if rising_edge(clk) then
      zz_31 <= pkg_toStdLogic((writeBack_irq_masked and pkg_not(pkg_stdLogicVector("00000010"))) /= pkg_stdLogicVector("00000000"));
    end if;
  end process;

end arch;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.pkg_scala2hdl.all;
use work.all;
use work.pkg_enum.all;


entity RiscvTesterUncached is
  port(
    io_i_cmd_valid : out std_logic;
    io_i_cmd_ready : in std_logic;
    io_i_cmd_payload_pc : out unsigned(31 downto 0);
    io_i_rsp_valid : in std_logic;
    io_i_rsp_ready : out std_logic;
    io_i_rsp_payload_instruction : in std_logic_vector(31 downto 0);
    io_i_rsp_payload_pc : in unsigned(31 downto 0);
    io_d_cmd_valid : out std_logic;
    io_d_cmd_ready : in std_logic;
    io_d_cmd_payload_wr : out std_logic;
    io_d_cmd_payload_address : out unsigned(31 downto 0);
    io_d_cmd_payload_data : out std_logic_vector(31 downto 0);
    io_d_cmd_payload_size : out unsigned(1 downto 0);
    io_d_rsp_valid : in std_logic;
    io_d_rsp_ready : out std_logic;
    io_d_rsp_payload : in std_logic_vector(31 downto 0);
    io_iCheck_valid : out std_logic;
    io_iCheck_payload_address : out unsigned(31 downto 0);
    io_iCheck_payload_data : out std_logic_vector(31 downto 0);
    io_iCmdDrive : in std_logic;
    io_iRspDrive : in std_logic;
    io_dCmdDrive : in std_logic;
    io_dRspDrive : in std_logic;
    io_doCacheFlush : in std_logic;
    io_cpuCmdLog_valid : out std_logic;
    io_cpuCmdLog_payload_wr : out std_logic;
    io_cpuCmdLog_payload_address : out unsigned(31 downto 0);
    io_cpuCmdLog_payload_data : out std_logic_vector(31 downto 0);
    io_cpuCmdLog_payload_size : out unsigned(1 downto 0);
    io_cpuRspLog_valid : out std_logic;
    io_cpuRspLog_payload : out std_logic_vector(31 downto 0);
    io_interrupt : in std_logic_vector(3 downto 0);
    clk : in std_logic;
    reset : in std_logic
  );
end RiscvTesterUncached;

architecture arch of RiscvTesterUncached is
  signal zz_68 : std_logic;
  signal zz_69 : std_logic;
  signal zz_70 : std_logic;
  signal zz_71 : std_logic;
  signal zz_72 : std_logic;
  signal zz_73 : std_logic;
  signal zz_74 : std_logic;
  signal zz_75 : std_logic;
  signal zz_76 : std_logic;
  signal core_io_i_cmd_valid : std_logic;
  signal core_io_i_cmd_payload_pc : unsigned(31 downto 0);
  signal core_io_i_rsp_ready : std_logic;
  signal core_io_d_cmd_valid : std_logic;
  signal core_io_d_cmd_payload_wr : std_logic;
  signal core_io_d_cmd_payload_address : unsigned(31 downto 0);
  signal core_io_d_cmd_payload_data : std_logic_vector(31 downto 0);
  signal core_io_d_cmd_payload_size : unsigned(1 downto 0);
  signal core_io_d_rsp_ready : std_logic;
  signal core_zz_32 : std_logic;
  signal core_zz_33 : unsigned(31 downto 0);
  signal core_zz_34 : std_logic_vector(31 downto 0);
  signal core_zz_35 : std_logic;
  signal core_zz_36 : std_logic;
  signal core_zz_37 : std_logic;
  signal core_zz_38 : unsigned(31 downto 0);
  signal core_zz_39 : std_logic_vector(31 downto 0);
  signal core_zz_40 : unsigned(1 downto 0);
  signal core_zz_41 : std_logic;
  signal core_zz_42 : std_logic_vector(31 downto 0);
  signal zz_77 : std_logic;
  signal zz_78 : std_logic;
  signal zz_79 : std_logic;
  signal zz_80 : std_logic;
  signal zz_81 : std_logic;
  signal zz_82 : std_logic;
  signal zz_83 : std_logic;
  signal zz_84 : std_logic;
  signal zz_85 : std_logic;
  signal zz_86 : std_logic;
  signal zz_87 : std_logic;
  signal zz_88 : std_logic;

  signal zz_1 : std_logic;
  signal zz_2 : std_logic;
  signal zz_3 : std_logic;
  signal zz_4 : unsigned(31 downto 0);
  signal zz_5 : std_logic_vector(31 downto 0);
  signal zz_6 : unsigned(1 downto 0);
  signal zz_7 : std_logic;
  signal zz_8 : std_logic;
  signal zz_9 : std_logic;
  signal zz_10 : unsigned(31 downto 0);
  signal zz_11 : std_logic_vector(31 downto 0);
  signal zz_12 : unsigned(1 downto 0);
  signal zz_13 : std_logic;
  signal zz_14 : std_logic;
  signal zz_15 : unsigned(31 downto 0);
  signal zz_16 : std_logic_vector(31 downto 0);
  signal zz_17 : unsigned(1 downto 0);
  signal zz_18 : std_logic;
  signal zz_19 : std_logic;
  signal zz_20 : std_logic;
  signal zz_21 : unsigned(31 downto 0);
  signal zz_22 : std_logic_vector(31 downto 0);
  signal zz_23 : unsigned(1 downto 0);
  signal zz_24 : std_logic;
  signal zz_25 : std_logic;
  signal zz_26 : unsigned(31 downto 0);
  signal zz_27 : std_logic_vector(31 downto 0);
  signal zz_28 : unsigned(1 downto 0);
  signal zz_29 : std_logic;
  signal zz_30 : std_logic;
  signal zz_31 : std_logic;
  signal zz_32 : unsigned(31 downto 0);
  signal zz_33 : std_logic_vector(31 downto 0);
  signal zz_34 : unsigned(1 downto 0);
  signal zz_35 : std_logic;
  signal zz_36 : std_logic;
  signal zz_37 : unsigned(31 downto 0);
  signal zz_38 : std_logic_vector(31 downto 0);
  signal zz_39 : unsigned(1 downto 0);
  signal zz_40 : std_logic;
  signal zz_41 : std_logic;
  signal zz_42 : std_logic;
  signal zz_43 : unsigned(31 downto 0);
  signal zz_44 : std_logic_vector(31 downto 0);
  signal zz_45 : unsigned(1 downto 0);
  signal zz_46 : std_logic;
  signal zz_47 : std_logic;
  signal zz_48 : unsigned(31 downto 0);
  signal zz_49 : std_logic_vector(31 downto 0);
  signal zz_50 : unsigned(1 downto 0);
  signal zz_51 : std_logic;
  signal zz_52 : std_logic;
  signal zz_53 : std_logic;
  signal zz_54 : unsigned(31 downto 0);
  signal zz_55 : std_logic_vector(31 downto 0);
  signal zz_56 : unsigned(1 downto 0);
  signal zz_57 : std_logic;
  signal zz_58 : std_logic;
  signal zz_59 : unsigned(31 downto 0);
  signal zz_60 : std_logic_vector(31 downto 0);
  signal zz_61 : unsigned(1 downto 0);
  signal zz_62 : std_logic;
  signal zz_63 : std_logic;
  signal zz_64 : std_logic;
  signal zz_65 : unsigned(31 downto 0);
  signal zz_66 : std_logic_vector(31 downto 0);
  signal zz_67 : unsigned(1 downto 0);
  signal io_d_rsp_m2sPipe_valid : std_logic;
  signal io_d_rsp_m2sPipe_ready : std_logic;
  signal io_d_rsp_m2sPipe_payload : std_logic_vector(31 downto 0);
  signal io_d_rsp_m2sPipe_rValid : std_logic;
  signal io_d_rsp_m2sPipe_rData : std_logic_vector(31 downto 0);
  signal io_d_rsp_m2sPipe_s2mPipe_valid : std_logic;
  signal io_d_rsp_m2sPipe_s2mPipe_ready : std_logic;
  signal io_d_rsp_m2sPipe_s2mPipe_payload : std_logic_vector(31 downto 0);
  signal io_d_rsp_m2sPipe_s2mPipe_rValid : std_logic;
  signal io_d_rsp_m2sPipe_s2mPipe_rData : std_logic_vector(31 downto 0);
  signal io_d_rsp_m2sPipe_s2mPipe_s2mPipe_valid : std_logic;
  signal io_d_rsp_m2sPipe_s2mPipe_s2mPipe_ready : std_logic;
  signal io_d_rsp_m2sPipe_s2mPipe_s2mPipe_payload : std_logic_vector(31 downto 0);
  signal io_d_rsp_m2sPipe_s2mPipe_s2mPipe_rValid : std_logic;
  signal io_d_rsp_m2sPipe_s2mPipe_s2mPipe_rData : std_logic_vector(31 downto 0);
  signal io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_valid : std_logic;
  signal io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_ready : std_logic;
  signal io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_payload : std_logic_vector(31 downto 0);
  signal io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_rValid : std_logic;
  signal io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_rData : std_logic_vector(31 downto 0);
  signal io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_valid : std_logic;
  signal io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_ready : std_logic;
  signal io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_payload : std_logic_vector(31 downto 0);
  signal io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_rValid : std_logic;
  signal io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_rData : std_logic_vector(31 downto 0);
  signal io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_valid : std_logic;
  signal io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_ready : std_logic;
  signal io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_payload : std_logic_vector(31 downto 0);
  signal io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_rValid : std_logic;
  signal io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_rData : std_logic_vector(31 downto 0);
  signal io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_valid : std_logic;
  signal io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_ready : std_logic;
  signal io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_payload : std_logic_vector(31 downto 0);
  signal io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_rValid : std_logic;
  signal io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_rData : std_logic_vector(31 downto 0);
begin
  io_d_rsp_ready <= zz_76;
  zz_77 <= (zz_2 and (not zz_8));
  zz_78 <= (zz_8 and (not zz_19));
  zz_79 <= (zz_19 and (not zz_30));
  zz_80 <= (zz_30 and (not zz_41));
  zz_81 <= (zz_41 and (not zz_52));
  zz_82 <= (zz_52 and (not zz_62));
  zz_83 <= (io_d_rsp_m2sPipe_ready and (not io_d_rsp_m2sPipe_s2mPipe_ready));
  zz_84 <= (io_d_rsp_m2sPipe_s2mPipe_ready and (not io_d_rsp_m2sPipe_s2mPipe_s2mPipe_ready));
  zz_85 <= (io_d_rsp_m2sPipe_s2mPipe_s2mPipe_ready and (not io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_ready));
  zz_86 <= (io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_ready and (not io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_ready));
  zz_87 <= (io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_ready and (not io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_ready));
  zz_88 <= (io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_ready and (not io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_ready));
  core : entity work.RiscvCore
    port map ( 
      io_interrupt_1 => zz_68,
      io_interrupt_0 => zz_69,
      io_interrupt_3 => zz_70,
      io_interrupt_2 => zz_71,
      io_i_cmd_valid => core_io_i_cmd_valid,
      io_i_cmd_ready => zz_72,
      io_i_cmd_payload_pc => core_io_i_cmd_payload_pc,
      io_i_rsp_valid => zz_73,
      io_i_rsp_ready => core_io_i_rsp_ready,
      io_i_rsp_payload_instruction => io_i_rsp_payload_instruction,
      io_i_rsp_payload_pc => io_i_rsp_payload_pc,
      io_d_cmd_valid => core_io_d_cmd_valid,
      io_d_cmd_ready => zz_74,
      io_d_cmd_payload_wr => core_io_d_cmd_payload_wr,
      io_d_cmd_payload_address => core_io_d_cmd_payload_address,
      io_d_cmd_payload_data => core_io_d_cmd_payload_data,
      io_d_cmd_payload_size => core_io_d_cmd_payload_size,
      io_d_rsp_valid => zz_75,
      io_d_rsp_ready => core_io_d_rsp_ready,
      io_d_rsp_payload => io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_payload,
      zz_32 => core_zz_32,
      zz_33 => core_zz_33,
      zz_34 => core_zz_34,
      zz_35 => core_zz_35,
      zz_36 => core_zz_36,
      zz_37 => core_zz_37,
      zz_38 => core_zz_38,
      zz_39 => core_zz_39,
      zz_40 => core_zz_40,
      zz_41 => core_zz_41,
      zz_42 => core_zz_42,
      clk => clk,
      reset => reset 
    );
  zz_68 <= pkg_extract(io_interrupt,1);
  zz_69 <= pkg_extract(io_interrupt,0);
  zz_70 <= pkg_extract(io_interrupt,3);
  zz_71 <= pkg_extract(io_interrupt,2);
  zz_72 <= (io_i_cmd_ready and io_iCmdDrive);
  io_i_cmd_valid <= (core_io_i_cmd_valid and io_iCmdDrive);
  io_i_cmd_payload_pc <= core_io_i_cmd_payload_pc;
  zz_73 <= (io_i_rsp_valid and io_iRspDrive);
  io_i_rsp_ready <= (core_io_i_rsp_ready and io_iRspDrive);
  zz_1 <= (core_io_d_cmd_valid and io_dCmdDrive);
  zz_74 <= (zz_2 and io_dCmdDrive);
  zz_3 <= core_io_d_cmd_payload_wr;
  zz_4 <= core_io_d_cmd_payload_address;
  zz_5 <= core_io_d_cmd_payload_data;
  zz_6 <= core_io_d_cmd_payload_size;
  zz_7 <= (zz_1 or zz_13);
  zz_2 <= (not zz_13);
  zz_9 <= pkg_mux(zz_13,zz_14,zz_3);
  zz_10 <= pkg_mux(zz_13,zz_15,zz_4);
  zz_11 <= pkg_mux(zz_13,zz_16,zz_5);
  zz_12 <= pkg_mux(zz_13,zz_17,zz_6);
  zz_18 <= (zz_7 or zz_24);
  zz_8 <= (not zz_24);
  zz_20 <= pkg_mux(zz_24,zz_25,zz_9);
  zz_21 <= pkg_mux(zz_24,zz_26,zz_10);
  zz_22 <= pkg_mux(zz_24,zz_27,zz_11);
  zz_23 <= pkg_mux(zz_24,zz_28,zz_12);
  zz_29 <= (zz_18 or zz_35);
  zz_19 <= (not zz_35);
  zz_31 <= pkg_mux(zz_35,zz_36,zz_20);
  zz_32 <= pkg_mux(zz_35,zz_37,zz_21);
  zz_33 <= pkg_mux(zz_35,zz_38,zz_22);
  zz_34 <= pkg_mux(zz_35,zz_39,zz_23);
  zz_40 <= (zz_29 or zz_46);
  zz_30 <= (not zz_46);
  zz_42 <= pkg_mux(zz_46,zz_47,zz_31);
  zz_43 <= pkg_mux(zz_46,zz_48,zz_32);
  zz_44 <= pkg_mux(zz_46,zz_49,zz_33);
  zz_45 <= pkg_mux(zz_46,zz_50,zz_34);
  zz_51 <= (zz_40 or zz_57);
  zz_41 <= (not zz_57);
  zz_53 <= pkg_mux(zz_57,zz_58,zz_42);
  zz_54 <= pkg_mux(zz_57,zz_59,zz_43);
  zz_55 <= pkg_mux(zz_57,zz_60,zz_44);
  zz_56 <= pkg_mux(zz_57,zz_61,zz_45);
  zz_52 <= (not zz_63);
  io_d_cmd_valid <= (zz_51 or zz_63);
  zz_62 <= io_d_cmd_ready;
  io_d_cmd_payload_wr <= pkg_mux(zz_63,zz_64,zz_53);
  io_d_cmd_payload_address <= pkg_mux(zz_63,zz_65,zz_54);
  io_d_cmd_payload_data <= pkg_mux(zz_63,zz_66,zz_55);
  io_d_cmd_payload_size <= pkg_mux(zz_63,zz_67,zz_56);
  zz_76 <= ((pkg_toStdLogic(true) and (not io_d_rsp_m2sPipe_valid)) or io_d_rsp_m2sPipe_ready);
  io_d_rsp_m2sPipe_valid <= io_d_rsp_m2sPipe_rValid;
  io_d_rsp_m2sPipe_payload <= io_d_rsp_m2sPipe_rData;
  io_d_rsp_m2sPipe_s2mPipe_valid <= (io_d_rsp_m2sPipe_valid or io_d_rsp_m2sPipe_s2mPipe_rValid);
  io_d_rsp_m2sPipe_ready <= (not io_d_rsp_m2sPipe_s2mPipe_rValid);
  io_d_rsp_m2sPipe_s2mPipe_payload <= pkg_mux(io_d_rsp_m2sPipe_s2mPipe_rValid,io_d_rsp_m2sPipe_s2mPipe_rData,io_d_rsp_m2sPipe_payload);
  io_d_rsp_m2sPipe_s2mPipe_s2mPipe_valid <= (io_d_rsp_m2sPipe_s2mPipe_valid or io_d_rsp_m2sPipe_s2mPipe_s2mPipe_rValid);
  io_d_rsp_m2sPipe_s2mPipe_ready <= (not io_d_rsp_m2sPipe_s2mPipe_s2mPipe_rValid);
  io_d_rsp_m2sPipe_s2mPipe_s2mPipe_payload <= pkg_mux(io_d_rsp_m2sPipe_s2mPipe_s2mPipe_rValid,io_d_rsp_m2sPipe_s2mPipe_s2mPipe_rData,io_d_rsp_m2sPipe_s2mPipe_payload);
  io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_valid <= (io_d_rsp_m2sPipe_s2mPipe_s2mPipe_valid or io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_rValid);
  io_d_rsp_m2sPipe_s2mPipe_s2mPipe_ready <= (not io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_rValid);
  io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_payload <= pkg_mux(io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_rValid,io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_rData,io_d_rsp_m2sPipe_s2mPipe_s2mPipe_payload);
  io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_valid <= (io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_valid or io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_rValid);
  io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_ready <= (not io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_rValid);
  io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_payload <= pkg_mux(io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_rValid,io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_rData,io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_payload);
  io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_valid <= (io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_valid or io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_rValid);
  io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_ready <= (not io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_rValid);
  io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_payload <= pkg_mux(io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_rValid,io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_rData,io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_payload);
  io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_valid <= (io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_valid or io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_rValid);
  io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_ready <= (not io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_rValid);
  io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_payload <= pkg_mux(io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_rValid,io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_rData,io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_payload);
  io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_ready <= (core_io_d_rsp_ready and io_dRspDrive);
  zz_75 <= (io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_valid and io_dRspDrive);
  io_iCheck_valid <= core_zz_32;
  io_iCheck_payload_address <= core_zz_33;
  io_iCheck_payload_data <= core_zz_34;
  io_cpuCmdLog_valid <= (core_zz_35 and core_zz_36);
  io_cpuCmdLog_payload_wr <= core_zz_37;
  io_cpuCmdLog_payload_address <= core_zz_38;
  io_cpuCmdLog_payload_data <= core_zz_39;
  io_cpuCmdLog_payload_size <= core_zz_40;
  io_cpuRspLog_valid <= core_zz_41;
  io_cpuRspLog_payload <= core_zz_42;
  process(clk, reset)
  begin
    if reset = '1' then
      zz_13 <= pkg_toStdLogic(false);
      zz_24 <= pkg_toStdLogic(false);
      zz_35 <= pkg_toStdLogic(false);
      zz_46 <= pkg_toStdLogic(false);
      zz_57 <= pkg_toStdLogic(false);
      zz_63 <= pkg_toStdLogic(false);
      io_d_rsp_m2sPipe_rValid <= pkg_toStdLogic(false);
      io_d_rsp_m2sPipe_s2mPipe_rValid <= pkg_toStdLogic(false);
      io_d_rsp_m2sPipe_s2mPipe_s2mPipe_rValid <= pkg_toStdLogic(false);
      io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_rValid <= pkg_toStdLogic(false);
      io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_rValid <= pkg_toStdLogic(false);
      io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_rValid <= pkg_toStdLogic(false);
      io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_rValid <= pkg_toStdLogic(false);
    elsif rising_edge(clk) then
      if zz_8 = '1' then
        zz_13 <= pkg_toStdLogic(false);
      end if;
      if zz_77 = '1' then
        zz_13 <= zz_1;
      end if;
      if zz_19 = '1' then
        zz_24 <= pkg_toStdLogic(false);
      end if;
      if zz_78 = '1' then
        zz_24 <= zz_7;
      end if;
      if zz_30 = '1' then
        zz_35 <= pkg_toStdLogic(false);
      end if;
      if zz_79 = '1' then
        zz_35 <= zz_18;
      end if;
      if zz_41 = '1' then
        zz_46 <= pkg_toStdLogic(false);
      end if;
      if zz_80 = '1' then
        zz_46 <= zz_29;
      end if;
      if zz_52 = '1' then
        zz_57 <= pkg_toStdLogic(false);
      end if;
      if zz_81 = '1' then
        zz_57 <= zz_40;
      end if;
      if zz_62 = '1' then
        zz_63 <= pkg_toStdLogic(false);
      end if;
      if zz_82 = '1' then
        zz_63 <= zz_51;
      end if;
      if zz_76 = '1' then
        io_d_rsp_m2sPipe_rValid <= io_d_rsp_valid;
      end if;
      if io_d_rsp_m2sPipe_s2mPipe_ready = '1' then
        io_d_rsp_m2sPipe_s2mPipe_rValid <= pkg_toStdLogic(false);
      end if;
      if zz_83 = '1' then
        io_d_rsp_m2sPipe_s2mPipe_rValid <= io_d_rsp_m2sPipe_valid;
      end if;
      if io_d_rsp_m2sPipe_s2mPipe_s2mPipe_ready = '1' then
        io_d_rsp_m2sPipe_s2mPipe_s2mPipe_rValid <= pkg_toStdLogic(false);
      end if;
      if zz_84 = '1' then
        io_d_rsp_m2sPipe_s2mPipe_s2mPipe_rValid <= io_d_rsp_m2sPipe_s2mPipe_valid;
      end if;
      if io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_ready = '1' then
        io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_rValid <= pkg_toStdLogic(false);
      end if;
      if zz_85 = '1' then
        io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_rValid <= io_d_rsp_m2sPipe_s2mPipe_s2mPipe_valid;
      end if;
      if io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_ready = '1' then
        io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_rValid <= pkg_toStdLogic(false);
      end if;
      if zz_86 = '1' then
        io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_rValid <= io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_valid;
      end if;
      if io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_ready = '1' then
        io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_rValid <= pkg_toStdLogic(false);
      end if;
      if zz_87 = '1' then
        io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_rValid <= io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_valid;
      end if;
      if io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_ready = '1' then
        io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_rValid <= pkg_toStdLogic(false);
      end if;
      if zz_88 = '1' then
        io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_rValid <= io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_valid;
      end if;
    end if;
  end process;

  process(clk)
  begin
    if rising_edge(clk) then
      if zz_77 = '1' then
        zz_14 <= zz_3;
        zz_15 <= zz_4;
        zz_16 <= zz_5;
        zz_17 <= zz_6;
      end if;
      if zz_78 = '1' then
        zz_25 <= zz_9;
        zz_26 <= zz_10;
        zz_27 <= zz_11;
        zz_28 <= zz_12;
      end if;
      if zz_79 = '1' then
        zz_36 <= zz_20;
        zz_37 <= zz_21;
        zz_38 <= zz_22;
        zz_39 <= zz_23;
      end if;
      if zz_80 = '1' then
        zz_47 <= zz_31;
        zz_48 <= zz_32;
        zz_49 <= zz_33;
        zz_50 <= zz_34;
      end if;
      if zz_81 = '1' then
        zz_58 <= zz_42;
        zz_59 <= zz_43;
        zz_60 <= zz_44;
        zz_61 <= zz_45;
      end if;
      if zz_82 = '1' then
        zz_64 <= zz_53;
        zz_65 <= zz_54;
        zz_66 <= zz_55;
        zz_67 <= zz_56;
      end if;
      if zz_76 = '1' then
        io_d_rsp_m2sPipe_rData <= io_d_rsp_payload;
      end if;
      if zz_83 = '1' then
        io_d_rsp_m2sPipe_s2mPipe_rData <= io_d_rsp_m2sPipe_payload;
      end if;
      if zz_84 = '1' then
        io_d_rsp_m2sPipe_s2mPipe_s2mPipe_rData <= io_d_rsp_m2sPipe_s2mPipe_payload;
      end if;
      if zz_85 = '1' then
        io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_rData <= io_d_rsp_m2sPipe_s2mPipe_s2mPipe_payload;
      end if;
      if zz_86 = '1' then
        io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_rData <= io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_payload;
      end if;
      if zz_87 = '1' then
        io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_rData <= io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_payload;
      end if;
      if zz_88 = '1' then
        io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_rData <= io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_payload;
      end if;
    end if;
  end process;

end arch;

