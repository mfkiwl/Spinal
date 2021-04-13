-- Generator : SpinalHDL v1.4.3    git head : adf552d8f500e7419fff395b7049228e4bc5de26
-- Component : BmbToApb3Bridge
-- Git hash  : adf552d8f500e7419fff395b7049228e4bc5de26

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.all;

package pkg_enum is

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


entity BmbToApb3Bridge is
  port(
    io_input_cmd_valid : in std_logic;
    io_input_cmd_ready : out std_logic;
    io_input_cmd_payload_last : in std_logic;
    io_input_cmd_payload_fragment_source : in unsigned(3 downto 0);
    io_input_cmd_payload_fragment_opcode : in std_logic_vector(0 downto 0);
    io_input_cmd_payload_fragment_address : in unsigned(15 downto 0);
    io_input_cmd_payload_fragment_length : in unsigned(1 downto 0);
    io_input_cmd_payload_fragment_data : in std_logic_vector(31 downto 0);
    io_input_cmd_payload_fragment_mask : in std_logic_vector(3 downto 0);
    io_input_cmd_payload_fragment_context : in std_logic_vector(3 downto 0);
    io_input_rsp_valid : out std_logic;
    io_input_rsp_ready : in std_logic;
    io_input_rsp_payload_last : out std_logic;
    io_input_rsp_payload_fragment_source : out unsigned(3 downto 0);
    io_input_rsp_payload_fragment_opcode : out std_logic_vector(0 downto 0);
    io_input_rsp_payload_fragment_data : out std_logic_vector(31 downto 0);
    io_input_rsp_payload_fragment_context : out std_logic_vector(3 downto 0);
    io_output_PADDR : out unsigned(15 downto 0);
    io_output_PSEL : out std_logic_vector(0 downto 0);
    io_output_PENABLE : out std_logic;
    io_output_PREADY : in std_logic;
    io_output_PWRITE : out std_logic;
    io_output_PWDATA : out std_logic_vector(31 downto 0);
    io_output_PRDATA : in std_logic_vector(31 downto 0);
    io_output_PSLVERROR : in std_logic;
    clk : in std_logic;
    reset : in std_logic
  );
end BmbToApb3Bridge;

architecture arch of BmbToApb3Bridge is
  signal zz_2 : std_logic;
  signal zz_3 : std_logic;

  signal bmbBuffer_cmd_valid : std_logic;
  signal bmbBuffer_cmd_ready : std_logic;
  signal bmbBuffer_cmd_payload_last : std_logic;
  signal bmbBuffer_cmd_payload_fragment_source : unsigned(3 downto 0);
  signal bmbBuffer_cmd_payload_fragment_opcode : std_logic_vector(0 downto 0);
  signal bmbBuffer_cmd_payload_fragment_address : unsigned(15 downto 0);
  signal bmbBuffer_cmd_payload_fragment_length : unsigned(1 downto 0);
  signal bmbBuffer_cmd_payload_fragment_data : std_logic_vector(31 downto 0);
  signal bmbBuffer_cmd_payload_fragment_mask : std_logic_vector(3 downto 0);
  signal bmbBuffer_cmd_payload_fragment_context : std_logic_vector(3 downto 0);
  signal bmbBuffer_rsp_valid : std_logic;
  signal bmbBuffer_rsp_ready : std_logic;
  signal bmbBuffer_rsp_payload_last : std_logic;
  signal bmbBuffer_rsp_payload_fragment_source : unsigned(3 downto 0);
  signal bmbBuffer_rsp_payload_fragment_opcode : std_logic_vector(0 downto 0);
  signal bmbBuffer_rsp_payload_fragment_data : std_logic_vector(31 downto 0);
  signal bmbBuffer_rsp_payload_fragment_context : std_logic_vector(3 downto 0);
  signal zz_1 : std_logic;
  signal bmbBuffer_rsp_m2sPipe_valid : std_logic;
  signal bmbBuffer_rsp_m2sPipe_ready : std_logic;
  signal bmbBuffer_rsp_m2sPipe_payload_last : std_logic;
  signal bmbBuffer_rsp_m2sPipe_payload_fragment_source : unsigned(3 downto 0);
  signal bmbBuffer_rsp_m2sPipe_payload_fragment_opcode : std_logic_vector(0 downto 0);
  signal bmbBuffer_rsp_m2sPipe_payload_fragment_data : std_logic_vector(31 downto 0);
  signal bmbBuffer_rsp_m2sPipe_payload_fragment_context : std_logic_vector(3 downto 0);
  signal bmbBuffer_rsp_m2sPipe_rValid : std_logic;
  signal bmbBuffer_rsp_m2sPipe_rData_last : std_logic;
  signal bmbBuffer_rsp_m2sPipe_rData_fragment_source : unsigned(3 downto 0);
  signal bmbBuffer_rsp_m2sPipe_rData_fragment_opcode : std_logic_vector(0 downto 0);
  signal bmbBuffer_rsp_m2sPipe_rData_fragment_data : std_logic_vector(31 downto 0);
  signal bmbBuffer_rsp_m2sPipe_rData_fragment_context : std_logic_vector(3 downto 0);
  signal state : std_logic;
begin
  io_input_rsp_valid <= zz_2;
  zz_3 <= (not state);
  zz_1 <= (not (zz_2 and (not io_input_rsp_ready)));
  io_input_cmd_ready <= (bmbBuffer_cmd_ready and zz_1);
  bmbBuffer_cmd_valid <= (io_input_cmd_valid and zz_1);
  bmbBuffer_cmd_payload_last <= io_input_cmd_payload_last;
  bmbBuffer_cmd_payload_fragment_source <= io_input_cmd_payload_fragment_source;
  bmbBuffer_cmd_payload_fragment_opcode <= io_input_cmd_payload_fragment_opcode;
  bmbBuffer_cmd_payload_fragment_address <= io_input_cmd_payload_fragment_address;
  bmbBuffer_cmd_payload_fragment_length <= io_input_cmd_payload_fragment_length;
  bmbBuffer_cmd_payload_fragment_data <= io_input_cmd_payload_fragment_data;
  bmbBuffer_cmd_payload_fragment_mask <= io_input_cmd_payload_fragment_mask;
  bmbBuffer_cmd_payload_fragment_context <= io_input_cmd_payload_fragment_context;
  bmbBuffer_rsp_ready <= ((pkg_toStdLogic(true) and (not bmbBuffer_rsp_m2sPipe_valid)) or bmbBuffer_rsp_m2sPipe_ready);
  bmbBuffer_rsp_m2sPipe_valid <= bmbBuffer_rsp_m2sPipe_rValid;
  bmbBuffer_rsp_m2sPipe_payload_last <= bmbBuffer_rsp_m2sPipe_rData_last;
  bmbBuffer_rsp_m2sPipe_payload_fragment_source <= bmbBuffer_rsp_m2sPipe_rData_fragment_source;
  bmbBuffer_rsp_m2sPipe_payload_fragment_opcode <= bmbBuffer_rsp_m2sPipe_rData_fragment_opcode;
  bmbBuffer_rsp_m2sPipe_payload_fragment_data <= bmbBuffer_rsp_m2sPipe_rData_fragment_data;
  bmbBuffer_rsp_m2sPipe_payload_fragment_context <= bmbBuffer_rsp_m2sPipe_rData_fragment_context;
  zz_2 <= bmbBuffer_rsp_m2sPipe_valid;
  bmbBuffer_rsp_m2sPipe_ready <= io_input_rsp_ready;
  io_input_rsp_payload_last <= bmbBuffer_rsp_m2sPipe_payload_last;
  io_input_rsp_payload_fragment_source <= bmbBuffer_rsp_m2sPipe_payload_fragment_source;
  io_input_rsp_payload_fragment_opcode <= bmbBuffer_rsp_m2sPipe_payload_fragment_opcode;
  io_input_rsp_payload_fragment_data <= bmbBuffer_rsp_m2sPipe_payload_fragment_data;
  io_input_rsp_payload_fragment_context <= bmbBuffer_rsp_m2sPipe_payload_fragment_context;
  process(zz_3,io_output_PREADY)
  begin
    bmbBuffer_cmd_ready <= pkg_toStdLogic(false);
    if zz_3 = '0' then
      if io_output_PREADY = '1' then
        bmbBuffer_cmd_ready <= pkg_toStdLogic(true);
      end if;
    end if;
  end process;

  io_output_PSEL(0) <= bmbBuffer_cmd_valid;
  io_output_PENABLE <= state;
  io_output_PWRITE <= pkg_toStdLogic(bmbBuffer_cmd_payload_fragment_opcode = pkg_stdLogicVector("1"));
  io_output_PADDR <= bmbBuffer_cmd_payload_fragment_address;
  io_output_PWDATA <= bmbBuffer_cmd_payload_fragment_data;
  process(zz_3,io_output_PREADY)
  begin
    bmbBuffer_rsp_valid <= pkg_toStdLogic(false);
    if zz_3 = '0' then
      if io_output_PREADY = '1' then
        bmbBuffer_rsp_valid <= pkg_toStdLogic(true);
      end if;
    end if;
  end process;

  bmbBuffer_rsp_payload_fragment_data <= io_output_PRDATA;
  bmbBuffer_rsp_payload_fragment_source <= io_input_cmd_payload_fragment_source;
  bmbBuffer_rsp_payload_fragment_context <= io_input_cmd_payload_fragment_context;
  bmbBuffer_rsp_payload_last <= pkg_toStdLogic(true);
  process(io_output_PSLVERROR)
  begin
    bmbBuffer_rsp_payload_fragment_opcode <= pkg_stdLogicVector("0");
    if io_output_PSLVERROR = '1' then
      bmbBuffer_rsp_payload_fragment_opcode <= pkg_stdLogicVector("1");
    end if;
  end process;

  process(clk, reset)
  begin
    if reset = '1' then
      bmbBuffer_rsp_m2sPipe_rValid <= pkg_toStdLogic(false);
      state <= pkg_toStdLogic(false);
    elsif rising_edge(clk) then
      if bmbBuffer_rsp_ready = '1' then
        bmbBuffer_rsp_m2sPipe_rValid <= bmbBuffer_rsp_valid;
      end if;
      if zz_3 = '1' then
        state <= bmbBuffer_cmd_valid;
      else
        if io_output_PREADY = '1' then
          state <= pkg_toStdLogic(false);
        end if;
      end if;
    end if;
  end process;

  process(clk)
  begin
    if rising_edge(clk) then
      if bmbBuffer_rsp_ready = '1' then
        bmbBuffer_rsp_m2sPipe_rData_last <= bmbBuffer_rsp_payload_last;
        bmbBuffer_rsp_m2sPipe_rData_fragment_source <= bmbBuffer_rsp_payload_fragment_source;
        bmbBuffer_rsp_m2sPipe_rData_fragment_opcode <= bmbBuffer_rsp_payload_fragment_opcode;
        bmbBuffer_rsp_m2sPipe_rData_fragment_data <= bmbBuffer_rsp_payload_fragment_data;
        bmbBuffer_rsp_m2sPipe_rData_fragment_context <= bmbBuffer_rsp_payload_fragment_context;
      end if;
    end if;
  end process;

end arch;

