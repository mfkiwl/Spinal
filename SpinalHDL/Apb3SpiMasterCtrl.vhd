-- Generator : SpinalHDL v1.4.3    git head : adf552d8f500e7419fff395b7049228e4bc5de26
-- Component : Apb3SpiMasterCtrl
-- Git hash  : adf552d8f500e7419fff395b7049228e4bc5de26

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.all;

package pkg_enum is
  type SpiMasterCtrlCmdMode is (DATA,SS);

  function pkg_mux (sel : std_logic; one : SpiMasterCtrlCmdMode; zero : SpiMasterCtrlCmdMode) return SpiMasterCtrlCmdMode;
  subtype SpiMasterCtrlCmdMode_binary_sequential_type is std_logic_vector(0 downto 0);
  constant SpiMasterCtrlCmdMode_binary_sequential_DATA : SpiMasterCtrlCmdMode_binary_sequential_type := "0";
  constant SpiMasterCtrlCmdMode_binary_sequential_SS : SpiMasterCtrlCmdMode_binary_sequential_type := "1";

end pkg_enum;

package body pkg_enum is
  function pkg_mux (sel : std_logic; one : SpiMasterCtrlCmdMode; zero : SpiMasterCtrlCmdMode) return SpiMasterCtrlCmdMode is
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


entity SpiMasterCtrl is
  port(
    io_config_kind_cpol : in std_logic;
    io_config_kind_cpha : in std_logic;
    io_config_sclkToogle : in unsigned(11 downto 0);
    io_config_ss_activeHigh : in std_logic_vector(3 downto 0);
    io_config_ss_setup : in unsigned(11 downto 0);
    io_config_ss_hold : in unsigned(11 downto 0);
    io_config_ss_disable : in unsigned(11 downto 0);
    io_cmd_valid : in std_logic;
    io_cmd_ready : out std_logic;
    io_cmd_payload_mode : in SpiMasterCtrlCmdMode_binary_sequential_type;
    io_cmd_payload_args : in std_logic_vector(8 downto 0);
    io_rsp_valid : out std_logic;
    io_rsp_payload : out std_logic_vector(7 downto 0);
    io_spi_ss : out std_logic_vector(3 downto 0);
    io_spi_sclk : out std_logic;
    io_spi_mosi : out std_logic;
    io_spi_miso : in std_logic;
    clk : in std_logic;
    reset : in std_logic
  );
end SpiMasterCtrl;

architecture arch of SpiMasterCtrl is
  signal zz_4 : std_logic;
  signal zz_5 : std_logic;
  signal zz_6 : std_logic;
  signal zz_7 : std_logic;
  signal zz_8 : std_logic;

  signal timer_counter : unsigned(11 downto 0);
  signal timer_reset : std_logic;
  signal timer_ss_setupHit : std_logic;
  signal timer_ss_holdHit : std_logic;
  signal timer_ss_disableHit : std_logic;
  signal timer_sclkToogleHit : std_logic;
  signal fsm_counter_willIncrement : std_logic;
  signal fsm_counter_willClear : std_logic;
  signal fsm_counter_valueNext : unsigned(3 downto 0);
  signal fsm_counter_value : unsigned(3 downto 0);
  signal fsm_counter_willOverflowIfInc : std_logic;
  signal fsm_counter_willOverflow : std_logic;
  signal fsm_buffer : std_logic_vector(7 downto 0);
  signal fsm_ss : std_logic_vector(3 downto 0);
  signal zz_1 : std_logic;
  signal zz_2 : std_logic;
  signal zz_3 : std_logic;
begin
  io_cmd_ready <= zz_4;
  zz_5 <= pkg_toStdLogic(io_cmd_payload_mode = SpiMasterCtrlCmdMode_binary_sequential_DATA);
  zz_6 <= pkg_extract(pkg_extract(io_cmd_payload_args,0,0),0);
  zz_7 <= (not pkg_extract(fsm_counter_value,0));
  zz_8 <= ((not io_cmd_valid) or zz_4);
  process(io_cmd_valid,zz_5,timer_sclkToogleHit,zz_6,zz_7,timer_ss_holdHit,zz_8)
  begin
    timer_reset <= pkg_toStdLogic(false);
    if io_cmd_valid = '1' then
      if zz_5 = '1' then
        if timer_sclkToogleHit = '1' then
          timer_reset <= pkg_toStdLogic(true);
        end if;
      else
        if zz_6 = '0' then
          if zz_7 = '1' then
            if timer_ss_holdHit = '1' then
              timer_reset <= pkg_toStdLogic(true);
            end if;
          end if;
        end if;
      end if;
    end if;
    if zz_8 = '1' then
      timer_reset <= pkg_toStdLogic(true);
    end if;
  end process;

  timer_ss_setupHit <= pkg_toStdLogic(timer_counter = io_config_ss_setup);
  timer_ss_holdHit <= pkg_toStdLogic(timer_counter = io_config_ss_hold);
  timer_ss_disableHit <= pkg_toStdLogic(timer_counter = io_config_ss_disable);
  timer_sclkToogleHit <= pkg_toStdLogic(timer_counter = io_config_sclkToogle);
  process(io_cmd_valid,zz_5,timer_sclkToogleHit,zz_6,zz_7,timer_ss_holdHit)
  begin
    fsm_counter_willIncrement <= pkg_toStdLogic(false);
    if io_cmd_valid = '1' then
      if zz_5 = '1' then
        if timer_sclkToogleHit = '1' then
          fsm_counter_willIncrement <= pkg_toStdLogic(true);
        end if;
      else
        if zz_6 = '0' then
          if zz_7 = '1' then
            if timer_ss_holdHit = '1' then
              fsm_counter_willIncrement <= pkg_toStdLogic(true);
            end if;
          end if;
        end if;
      end if;
    end if;
  end process;

  fsm_counter_willClear <= pkg_toStdLogic(false);
  fsm_counter_willOverflowIfInc <= pkg_toStdLogic(fsm_counter_value = pkg_unsigned("1111"));
  fsm_counter_willOverflow <= (fsm_counter_willOverflowIfInc and fsm_counter_willIncrement);
  process(fsm_counter_value,fsm_counter_willIncrement,fsm_counter_willClear)
  begin
    fsm_counter_valueNext <= (fsm_counter_value + pkg_resize(unsigned(pkg_toStdLogicVector(fsm_counter_willIncrement)),4));
    if fsm_counter_willClear = '1' then
      fsm_counter_valueNext <= pkg_unsigned("0000");
    end if;
  end process;

  process(io_cmd_valid,zz_5,timer_sclkToogleHit,fsm_counter_willOverflowIfInc,zz_6,timer_ss_setupHit,zz_7,timer_ss_disableHit)
  begin
    zz_4 <= pkg_toStdLogic(false);
    if io_cmd_valid = '1' then
      if zz_5 = '1' then
        if timer_sclkToogleHit = '1' then
          zz_4 <= fsm_counter_willOverflowIfInc;
        end if;
      else
        if zz_6 = '1' then
          if timer_ss_setupHit = '1' then
            zz_4 <= pkg_toStdLogic(true);
          end if;
        else
          if zz_7 = '0' then
            if timer_ss_disableHit = '1' then
              zz_4 <= pkg_toStdLogic(true);
            end if;
          end if;
        end if;
      end if;
    end if;
  end process;

  io_rsp_valid <= zz_1;
  io_rsp_payload <= fsm_buffer;
  io_spi_ss <= (fsm_ss xor io_config_ss_activeHigh);
  io_spi_sclk <= zz_2;
  io_spi_mosi <= zz_3;
  process(clk)
  begin
    if rising_edge(clk) then
      timer_counter <= (timer_counter + pkg_unsigned("000000000001"));
      if timer_reset = '1' then
        timer_counter <= pkg_unsigned("000000000000");
      end if;
      if io_cmd_valid = '1' then
        if zz_5 = '1' then
          if timer_sclkToogleHit = '1' then
            if pkg_extract(fsm_counter_value,0) = '1' then
              fsm_buffer <= pkg_resize(pkg_cat(fsm_buffer,pkg_toStdLogicVector(io_spi_miso)),8);
            end if;
          end if;
        end if;
      end if;
      zz_2 <= (((io_cmd_valid and pkg_toStdLogic(io_cmd_payload_mode = SpiMasterCtrlCmdMode_binary_sequential_DATA)) and (pkg_extract(fsm_counter_value,0) xor io_config_kind_cpha)) xor io_config_kind_cpol);
      zz_3 <= pkg_extract(pkg_extract(io_cmd_payload_args,7,0),to_integer((pkg_unsigned("111") - pkg_shiftRight(fsm_counter_value,1))));
    end if;
  end process;

  process(clk, reset)
  begin
    if reset = '1' then
      fsm_counter_value <= pkg_unsigned("0000");
      fsm_ss <= pkg_stdLogicVector("1111");
      zz_1 <= pkg_toStdLogic(false);
    elsif rising_edge(clk) then
      fsm_counter_value <= fsm_counter_valueNext;
      if io_cmd_valid = '1' then
        if zz_5 = '0' then
          if zz_6 = '1' then
            fsm_ss(to_integer(unsigned(pkg_extract(io_cmd_payload_args,2,1)))) <= pkg_toStdLogic(false);
          else
            if zz_7 = '0' then
              fsm_ss(to_integer(unsigned(pkg_extract(io_cmd_payload_args,2,1)))) <= pkg_toStdLogic(true);
            end if;
          end if;
        end if;
      end if;
      zz_1 <= (((io_cmd_valid and zz_4) and pkg_toStdLogic(io_cmd_payload_mode = SpiMasterCtrlCmdMode_binary_sequential_DATA)) and pkg_extract(pkg_extract(io_cmd_payload_args,8,8),0));
      if zz_8 = '1' then
        fsm_counter_value <= pkg_unsigned("0000");
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


entity StreamFifo is
  port(
    io_push_valid : in std_logic;
    io_push_ready : out std_logic;
    io_push_payload_mode : in SpiMasterCtrlCmdMode_binary_sequential_type;
    io_push_payload_args : in std_logic_vector(8 downto 0);
    io_pop_valid : out std_logic;
    io_pop_ready : in std_logic;
    io_pop_payload_mode : out SpiMasterCtrlCmdMode_binary_sequential_type;
    io_pop_payload_args : out std_logic_vector(8 downto 0);
    io_flush : in std_logic;
    io_occupancy : out unsigned(5 downto 0);
    io_availability : out unsigned(5 downto 0);
    clk : in std_logic;
    reset : in std_logic
  );
end StreamFifo;

architecture arch of StreamFifo is
  signal zz_6 : std_logic_vector(9 downto 0);
  signal zz_7 : std_logic;
  signal zz_8 : std_logic;
  signal zz_9 : std_logic;
  signal zz_10 : std_logic_vector(9 downto 0);

  signal zz_1 : std_logic;
  signal logic_pushPtr_willIncrement : std_logic;
  signal logic_pushPtr_willClear : std_logic;
  signal logic_pushPtr_valueNext : unsigned(4 downto 0);
  signal logic_pushPtr_value : unsigned(4 downto 0);
  signal logic_pushPtr_willOverflowIfInc : std_logic;
  signal logic_pushPtr_willOverflow : std_logic;
  signal logic_popPtr_willIncrement : std_logic;
  signal logic_popPtr_willClear : std_logic;
  signal logic_popPtr_valueNext : unsigned(4 downto 0);
  signal logic_popPtr_value : unsigned(4 downto 0);
  signal logic_popPtr_willOverflowIfInc : std_logic;
  signal logic_popPtr_willOverflow : std_logic;
  signal logic_ptrMatch : std_logic;
  signal logic_risingOccupancy : std_logic;
  signal logic_pushing : std_logic;
  signal logic_popping : std_logic;
  signal logic_empty : std_logic;
  signal logic_full : std_logic;
  signal zz_2 : std_logic;
  signal zz_3 : SpiMasterCtrlCmdMode_binary_sequential_type;
  signal zz_4 : std_logic_vector(9 downto 0);
  signal zz_5 : SpiMasterCtrlCmdMode_binary_sequential_type;
  signal logic_ptrDif : unsigned(4 downto 0);
  type logic_ram_type is array (0 to 31) of std_logic_vector(9 downto 0);
  signal logic_ram : logic_ram_type;
begin
  io_push_ready <= zz_7;
  io_pop_valid <= zz_8;
  zz_9 <= pkg_toStdLogic(true);
  zz_10 <= pkg_cat(io_push_payload_args,io_push_payload_mode);
  process(clk)
  begin
    if rising_edge(clk) then
      if zz_9 = '1' then
        zz_6 <= logic_ram(to_integer(logic_popPtr_valueNext));
      end if;
    end if;
  end process;

  process(clk)
  begin
    if rising_edge(clk) then
      if zz_1 = '1' then
        logic_ram(to_integer(logic_pushPtr_value)) <= zz_10;
      end if;
    end if;
  end process;

  process(logic_pushing)
  begin
    zz_1 <= pkg_toStdLogic(false);
    if logic_pushing = '1' then
      zz_1 <= pkg_toStdLogic(true);
    end if;
  end process;

  process(logic_pushing)
  begin
    logic_pushPtr_willIncrement <= pkg_toStdLogic(false);
    if logic_pushing = '1' then
      logic_pushPtr_willIncrement <= pkg_toStdLogic(true);
    end if;
  end process;

  process(io_flush)
  begin
    logic_pushPtr_willClear <= pkg_toStdLogic(false);
    if io_flush = '1' then
      logic_pushPtr_willClear <= pkg_toStdLogic(true);
    end if;
  end process;

  logic_pushPtr_willOverflowIfInc <= pkg_toStdLogic(logic_pushPtr_value = pkg_unsigned("11111"));
  logic_pushPtr_willOverflow <= (logic_pushPtr_willOverflowIfInc and logic_pushPtr_willIncrement);
  process(logic_pushPtr_value,logic_pushPtr_willIncrement,logic_pushPtr_willClear)
  begin
    logic_pushPtr_valueNext <= (logic_pushPtr_value + pkg_resize(unsigned(pkg_toStdLogicVector(logic_pushPtr_willIncrement)),5));
    if logic_pushPtr_willClear = '1' then
      logic_pushPtr_valueNext <= pkg_unsigned("00000");
    end if;
  end process;

  process(logic_popping)
  begin
    logic_popPtr_willIncrement <= pkg_toStdLogic(false);
    if logic_popping = '1' then
      logic_popPtr_willIncrement <= pkg_toStdLogic(true);
    end if;
  end process;

  process(io_flush)
  begin
    logic_popPtr_willClear <= pkg_toStdLogic(false);
    if io_flush = '1' then
      logic_popPtr_willClear <= pkg_toStdLogic(true);
    end if;
  end process;

  logic_popPtr_willOverflowIfInc <= pkg_toStdLogic(logic_popPtr_value = pkg_unsigned("11111"));
  logic_popPtr_willOverflow <= (logic_popPtr_willOverflowIfInc and logic_popPtr_willIncrement);
  process(logic_popPtr_value,logic_popPtr_willIncrement,logic_popPtr_willClear)
  begin
    logic_popPtr_valueNext <= (logic_popPtr_value + pkg_resize(unsigned(pkg_toStdLogicVector(logic_popPtr_willIncrement)),5));
    if logic_popPtr_willClear = '1' then
      logic_popPtr_valueNext <= pkg_unsigned("00000");
    end if;
  end process;

  logic_ptrMatch <= pkg_toStdLogic(logic_pushPtr_value = logic_popPtr_value);
  logic_pushing <= (io_push_valid and zz_7);
  logic_popping <= (zz_8 and io_pop_ready);
  logic_empty <= (logic_ptrMatch and (not logic_risingOccupancy));
  logic_full <= (logic_ptrMatch and logic_risingOccupancy);
  zz_7 <= (not logic_full);
  zz_8 <= ((not logic_empty) and (not (zz_2 and (not logic_full))));
  zz_4 <= zz_6;
  zz_5 <= pkg_extract(zz_4,0,0);
  zz_3 <= zz_5;
  io_pop_payload_mode <= zz_3;
  io_pop_payload_args <= pkg_extract(zz_4,9,1);
  logic_ptrDif <= (logic_pushPtr_value - logic_popPtr_value);
  io_occupancy <= unsigned(pkg_cat(pkg_toStdLogicVector((logic_risingOccupancy and logic_ptrMatch)),std_logic_vector(logic_ptrDif)));
  io_availability <= unsigned(pkg_cat(pkg_toStdLogicVector(((not logic_risingOccupancy) and logic_ptrMatch)),std_logic_vector((logic_popPtr_value - logic_pushPtr_value))));
  process(clk, reset)
  begin
    if reset = '1' then
      logic_pushPtr_value <= pkg_unsigned("00000");
      logic_popPtr_value <= pkg_unsigned("00000");
      logic_risingOccupancy <= pkg_toStdLogic(false);
      zz_2 <= pkg_toStdLogic(false);
    elsif rising_edge(clk) then
      logic_pushPtr_value <= logic_pushPtr_valueNext;
      logic_popPtr_value <= logic_popPtr_valueNext;
      zz_2 <= pkg_toStdLogic(logic_popPtr_valueNext = logic_pushPtr_value);
      if pkg_toStdLogic(logic_pushing /= logic_popping) = '1' then
        logic_risingOccupancy <= logic_pushing;
      end if;
      if io_flush = '1' then
        logic_risingOccupancy <= pkg_toStdLogic(false);
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


entity StreamFifo_1 is
  port(
    io_push_valid : in std_logic;
    io_push_ready : out std_logic;
    io_push_payload : in std_logic_vector(7 downto 0);
    io_pop_valid : out std_logic;
    io_pop_ready : in std_logic;
    io_pop_payload : out std_logic_vector(7 downto 0);
    io_flush : in std_logic;
    io_occupancy : out unsigned(5 downto 0);
    io_availability : out unsigned(5 downto 0);
    clk : in std_logic;
    reset : in std_logic
  );
end StreamFifo_1;

architecture arch of StreamFifo_1 is
  signal zz_3 : std_logic_vector(7 downto 0);
  signal zz_4 : std_logic;
  signal zz_5 : std_logic;
  signal zz_6 : std_logic;

  signal zz_1 : std_logic;
  signal logic_pushPtr_willIncrement : std_logic;
  signal logic_pushPtr_willClear : std_logic;
  signal logic_pushPtr_valueNext : unsigned(4 downto 0);
  signal logic_pushPtr_value : unsigned(4 downto 0);
  signal logic_pushPtr_willOverflowIfInc : std_logic;
  signal logic_pushPtr_willOverflow : std_logic;
  signal logic_popPtr_willIncrement : std_logic;
  signal logic_popPtr_willClear : std_logic;
  signal logic_popPtr_valueNext : unsigned(4 downto 0);
  signal logic_popPtr_value : unsigned(4 downto 0);
  signal logic_popPtr_willOverflowIfInc : std_logic;
  signal logic_popPtr_willOverflow : std_logic;
  signal logic_ptrMatch : std_logic;
  signal logic_risingOccupancy : std_logic;
  signal logic_pushing : std_logic;
  signal logic_popping : std_logic;
  signal logic_empty : std_logic;
  signal logic_full : std_logic;
  signal zz_2 : std_logic;
  signal logic_ptrDif : unsigned(4 downto 0);
  type logic_ram_type is array (0 to 31) of std_logic_vector(7 downto 0);
  signal logic_ram : logic_ram_type;
begin
  io_push_ready <= zz_4;
  io_pop_valid <= zz_5;
  zz_6 <= pkg_toStdLogic(true);
  process(clk)
  begin
    if rising_edge(clk) then
      if zz_6 = '1' then
        zz_3 <= logic_ram(to_integer(logic_popPtr_valueNext));
      end if;
    end if;
  end process;

  process(clk)
  begin
    if rising_edge(clk) then
      if zz_1 = '1' then
        logic_ram(to_integer(logic_pushPtr_value)) <= io_push_payload;
      end if;
    end if;
  end process;

  process(logic_pushing)
  begin
    zz_1 <= pkg_toStdLogic(false);
    if logic_pushing = '1' then
      zz_1 <= pkg_toStdLogic(true);
    end if;
  end process;

  process(logic_pushing)
  begin
    logic_pushPtr_willIncrement <= pkg_toStdLogic(false);
    if logic_pushing = '1' then
      logic_pushPtr_willIncrement <= pkg_toStdLogic(true);
    end if;
  end process;

  process(io_flush)
  begin
    logic_pushPtr_willClear <= pkg_toStdLogic(false);
    if io_flush = '1' then
      logic_pushPtr_willClear <= pkg_toStdLogic(true);
    end if;
  end process;

  logic_pushPtr_willOverflowIfInc <= pkg_toStdLogic(logic_pushPtr_value = pkg_unsigned("11111"));
  logic_pushPtr_willOverflow <= (logic_pushPtr_willOverflowIfInc and logic_pushPtr_willIncrement);
  process(logic_pushPtr_value,logic_pushPtr_willIncrement,logic_pushPtr_willClear)
  begin
    logic_pushPtr_valueNext <= (logic_pushPtr_value + pkg_resize(unsigned(pkg_toStdLogicVector(logic_pushPtr_willIncrement)),5));
    if logic_pushPtr_willClear = '1' then
      logic_pushPtr_valueNext <= pkg_unsigned("00000");
    end if;
  end process;

  process(logic_popping)
  begin
    logic_popPtr_willIncrement <= pkg_toStdLogic(false);
    if logic_popping = '1' then
      logic_popPtr_willIncrement <= pkg_toStdLogic(true);
    end if;
  end process;

  process(io_flush)
  begin
    logic_popPtr_willClear <= pkg_toStdLogic(false);
    if io_flush = '1' then
      logic_popPtr_willClear <= pkg_toStdLogic(true);
    end if;
  end process;

  logic_popPtr_willOverflowIfInc <= pkg_toStdLogic(logic_popPtr_value = pkg_unsigned("11111"));
  logic_popPtr_willOverflow <= (logic_popPtr_willOverflowIfInc and logic_popPtr_willIncrement);
  process(logic_popPtr_value,logic_popPtr_willIncrement,logic_popPtr_willClear)
  begin
    logic_popPtr_valueNext <= (logic_popPtr_value + pkg_resize(unsigned(pkg_toStdLogicVector(logic_popPtr_willIncrement)),5));
    if logic_popPtr_willClear = '1' then
      logic_popPtr_valueNext <= pkg_unsigned("00000");
    end if;
  end process;

  logic_ptrMatch <= pkg_toStdLogic(logic_pushPtr_value = logic_popPtr_value);
  logic_pushing <= (io_push_valid and zz_4);
  logic_popping <= (zz_5 and io_pop_ready);
  logic_empty <= (logic_ptrMatch and (not logic_risingOccupancy));
  logic_full <= (logic_ptrMatch and logic_risingOccupancy);
  zz_4 <= (not logic_full);
  zz_5 <= ((not logic_empty) and (not (zz_2 and (not logic_full))));
  io_pop_payload <= zz_3;
  logic_ptrDif <= (logic_pushPtr_value - logic_popPtr_value);
  io_occupancy <= unsigned(pkg_cat(pkg_toStdLogicVector((logic_risingOccupancy and logic_ptrMatch)),std_logic_vector(logic_ptrDif)));
  io_availability <= unsigned(pkg_cat(pkg_toStdLogicVector(((not logic_risingOccupancy) and logic_ptrMatch)),std_logic_vector((logic_popPtr_value - logic_pushPtr_value))));
  process(clk, reset)
  begin
    if reset = '1' then
      logic_pushPtr_value <= pkg_unsigned("00000");
      logic_popPtr_value <= pkg_unsigned("00000");
      logic_risingOccupancy <= pkg_toStdLogic(false);
      zz_2 <= pkg_toStdLogic(false);
    elsif rising_edge(clk) then
      logic_pushPtr_value <= logic_pushPtr_valueNext;
      logic_popPtr_value <= logic_popPtr_valueNext;
      zz_2 <= pkg_toStdLogic(logic_popPtr_valueNext = logic_pushPtr_value);
      if pkg_toStdLogic(logic_pushing /= logic_popping) = '1' then
        logic_risingOccupancy <= logic_pushing;
      end if;
      if io_flush = '1' then
        logic_risingOccupancy <= pkg_toStdLogic(false);
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


entity Apb3SpiMasterCtrl is
  port(
    io_apb_PADDR : in unsigned(7 downto 0);
    io_apb_PSEL : in std_logic_vector(0 downto 0);
    io_apb_PENABLE : in std_logic;
    io_apb_PREADY : out std_logic;
    io_apb_PWRITE : in std_logic;
    io_apb_PWDATA : in std_logic_vector(31 downto 0);
    io_apb_PRDATA : out std_logic_vector(31 downto 0);
    io_spi_ss : out std_logic_vector(3 downto 0);
    io_spi_sclk : out std_logic;
    io_spi_mosi : out std_logic;
    io_spi_miso : in std_logic;
    io_interrupt : out std_logic;
    clk : in std_logic;
    reset : in std_logic
  );
end Apb3SpiMasterCtrl;

architecture arch of Apb3SpiMasterCtrl is
  signal zz_11 : std_logic;
  signal zz_12 : std_logic;
  signal zz_13 : std_logic;
  signal zz_14 : std_logic;
  signal spiCtrl_io_cmd_ready : std_logic;
  signal spiCtrl_io_rsp_valid : std_logic;
  signal spiCtrl_io_rsp_payload : std_logic_vector(7 downto 0);
  signal spiCtrl_io_spi_sclk : std_logic;
  signal spiCtrl_io_spi_mosi : std_logic;
  signal spiCtrl_io_spi_ss : std_logic_vector(3 downto 0);
  signal bridge_cmdLogic_streamUnbuffered_queueWithAvailability_io_push_ready : std_logic;
  signal bridge_cmdLogic_streamUnbuffered_queueWithAvailability_io_pop_valid : std_logic;
  signal bridge_cmdLogic_streamUnbuffered_queueWithAvailability_io_pop_payload_mode : SpiMasterCtrlCmdMode_binary_sequential_type;
  signal bridge_cmdLogic_streamUnbuffered_queueWithAvailability_io_pop_payload_args : std_logic_vector(8 downto 0);
  signal bridge_cmdLogic_streamUnbuffered_queueWithAvailability_io_occupancy : unsigned(5 downto 0);
  signal bridge_cmdLogic_streamUnbuffered_queueWithAvailability_io_availability : unsigned(5 downto 0);
  signal spiCtrl_io_rsp_queueWithOccupancy_io_push_ready : std_logic;
  signal spiCtrl_io_rsp_queueWithOccupancy_io_pop_valid : std_logic;
  signal spiCtrl_io_rsp_queueWithOccupancy_io_pop_payload : std_logic_vector(7 downto 0);
  signal spiCtrl_io_rsp_queueWithOccupancy_io_occupancy : unsigned(5 downto 0);
  signal spiCtrl_io_rsp_queueWithOccupancy_io_availability : unsigned(5 downto 0);

  signal busCtrl_askWrite : std_logic;
  signal busCtrl_askRead : std_logic;
  signal busCtrl_doWrite : std_logic;
  signal busCtrl_doRead : std_logic;
  signal bridge_cmdLogic_streamUnbuffered_valid : std_logic;
  signal bridge_cmdLogic_streamUnbuffered_ready : std_logic;
  signal bridge_cmdLogic_streamUnbuffered_payload_mode : SpiMasterCtrlCmdMode_binary_sequential_type;
  signal bridge_cmdLogic_streamUnbuffered_payload_args : std_logic_vector(8 downto 0);
  signal zz_1 : std_logic;
  signal bridge_cmdLogic_dataCmd_data : std_logic_vector(7 downto 0);
  signal bridge_cmdLogic_dataCmd_read : std_logic;
  signal bridge_interruptCtrl_cmdIntEnable : std_logic;
  signal bridge_interruptCtrl_rspIntEnable : std_logic;
  signal bridge_interruptCtrl_cmdInt : std_logic;
  signal bridge_interruptCtrl_rspInt : std_logic;
  signal bridge_interruptCtrl_interrupt : std_logic;
  signal zz_2 : std_logic;
  signal zz_3 : std_logic;
  signal zz_4 : unsigned(11 downto 0);
  signal zz_5 : std_logic_vector(3 downto 0);
  signal zz_6 : unsigned(11 downto 0);
  signal zz_7 : unsigned(11 downto 0);
  signal zz_8 : unsigned(11 downto 0);
  signal zz_9 : SpiMasterCtrlCmdMode_binary_sequential_type;
  signal zz_10 : std_logic_vector(1 downto 0);
begin
  io_apb_PREADY <= zz_14;
  spiCtrl : entity work.SpiMasterCtrl
    port map ( 
      io_config_kind_cpol => zz_2,
      io_config_kind_cpha => zz_3,
      io_config_sclkToogle => zz_4,
      io_config_ss_activeHigh => zz_5,
      io_config_ss_setup => zz_6,
      io_config_ss_hold => zz_7,
      io_config_ss_disable => zz_8,
      io_cmd_valid => bridge_cmdLogic_streamUnbuffered_queueWithAvailability_io_pop_valid,
      io_cmd_ready => spiCtrl_io_cmd_ready,
      io_cmd_payload_mode => bridge_cmdLogic_streamUnbuffered_queueWithAvailability_io_pop_payload_mode,
      io_cmd_payload_args => bridge_cmdLogic_streamUnbuffered_queueWithAvailability_io_pop_payload_args,
      io_rsp_valid => spiCtrl_io_rsp_valid,
      io_rsp_payload => spiCtrl_io_rsp_payload,
      io_spi_ss => spiCtrl_io_spi_ss,
      io_spi_sclk => spiCtrl_io_spi_sclk,
      io_spi_mosi => spiCtrl_io_spi_mosi,
      io_spi_miso => io_spi_miso,
      clk => clk,
      reset => reset 
    );
  bridge_cmdLogic_streamUnbuffered_queueWithAvailability : entity work.StreamFifo
    port map ( 
      io_push_valid => bridge_cmdLogic_streamUnbuffered_valid,
      io_push_ready => bridge_cmdLogic_streamUnbuffered_queueWithAvailability_io_push_ready,
      io_push_payload_mode => bridge_cmdLogic_streamUnbuffered_payload_mode,
      io_push_payload_args => bridge_cmdLogic_streamUnbuffered_payload_args,
      io_pop_valid => bridge_cmdLogic_streamUnbuffered_queueWithAvailability_io_pop_valid,
      io_pop_ready => spiCtrl_io_cmd_ready,
      io_pop_payload_mode => bridge_cmdLogic_streamUnbuffered_queueWithAvailability_io_pop_payload_mode,
      io_pop_payload_args => bridge_cmdLogic_streamUnbuffered_queueWithAvailability_io_pop_payload_args,
      io_flush => zz_11,
      io_occupancy => bridge_cmdLogic_streamUnbuffered_queueWithAvailability_io_occupancy,
      io_availability => bridge_cmdLogic_streamUnbuffered_queueWithAvailability_io_availability,
      clk => clk,
      reset => reset 
    );
  spiCtrl_io_rsp_queueWithOccupancy : entity work.StreamFifo_1
    port map ( 
      io_push_valid => spiCtrl_io_rsp_valid,
      io_push_ready => spiCtrl_io_rsp_queueWithOccupancy_io_push_ready,
      io_push_payload => spiCtrl_io_rsp_payload,
      io_pop_valid => spiCtrl_io_rsp_queueWithOccupancy_io_pop_valid,
      io_pop_ready => zz_12,
      io_pop_payload => spiCtrl_io_rsp_queueWithOccupancy_io_pop_payload,
      io_flush => zz_13,
      io_occupancy => spiCtrl_io_rsp_queueWithOccupancy_io_occupancy,
      io_availability => spiCtrl_io_rsp_queueWithOccupancy_io_availability,
      clk => clk,
      reset => reset 
    );
  io_spi_ss <= spiCtrl_io_spi_ss;
  io_spi_sclk <= spiCtrl_io_spi_sclk;
  io_spi_mosi <= spiCtrl_io_spi_mosi;
  zz_14 <= pkg_toStdLogic(true);
  process(io_apb_PADDR,spiCtrl_io_rsp_queueWithOccupancy_io_pop_valid,spiCtrl_io_rsp_queueWithOccupancy_io_pop_payload,spiCtrl_io_rsp_queueWithOccupancy_io_occupancy,bridge_cmdLogic_streamUnbuffered_queueWithAvailability_io_availability,bridge_interruptCtrl_cmdIntEnable,bridge_interruptCtrl_rspIntEnable,bridge_interruptCtrl_cmdInt,bridge_interruptCtrl_rspInt)
  begin
    io_apb_PRDATA <= pkg_stdLogicVector("00000000000000000000000000000000");
    case io_apb_PADDR is
      when "00000000" =>
        io_apb_PRDATA(31 downto 31) <= pkg_toStdLogicVector((spiCtrl_io_rsp_queueWithOccupancy_io_pop_valid xor pkg_toStdLogic(false)));
        io_apb_PRDATA(7 downto 0) <= spiCtrl_io_rsp_queueWithOccupancy_io_pop_payload;
        io_apb_PRDATA(21 downto 16) <= std_logic_vector(spiCtrl_io_rsp_queueWithOccupancy_io_occupancy);
      when "00000100" =>
        io_apb_PRDATA(21 downto 16) <= std_logic_vector(bridge_cmdLogic_streamUnbuffered_queueWithAvailability_io_availability);
        io_apb_PRDATA(0 downto 0) <= pkg_toStdLogicVector(bridge_interruptCtrl_cmdIntEnable);
        io_apb_PRDATA(1 downto 1) <= pkg_toStdLogicVector(bridge_interruptCtrl_rspIntEnable);
        io_apb_PRDATA(8 downto 8) <= pkg_toStdLogicVector(bridge_interruptCtrl_cmdInt);
        io_apb_PRDATA(9 downto 9) <= pkg_toStdLogicVector(bridge_interruptCtrl_rspInt);
      when others =>
    end case;
  end process;

  busCtrl_askWrite <= ((pkg_extract(io_apb_PSEL,0) and io_apb_PENABLE) and io_apb_PWRITE);
  busCtrl_askRead <= ((pkg_extract(io_apb_PSEL,0) and io_apb_PENABLE) and (not io_apb_PWRITE));
  busCtrl_doWrite <= (((pkg_extract(io_apb_PSEL,0) and io_apb_PENABLE) and zz_14) and io_apb_PWRITE);
  busCtrl_doRead <= (((pkg_extract(io_apb_PSEL,0) and io_apb_PENABLE) and zz_14) and (not io_apb_PWRITE));
  process(io_apb_PADDR,busCtrl_doWrite)
  begin
    zz_1 <= pkg_toStdLogic(false);
    case io_apb_PADDR is
      when "00000000" =>
        if busCtrl_doWrite = '1' then
          zz_1 <= pkg_toStdLogic(true);
        end if;
      when others =>
    end case;
  end process;

  bridge_cmdLogic_streamUnbuffered_valid <= zz_1;
  process(bridge_cmdLogic_streamUnbuffered_payload_mode,bridge_cmdLogic_dataCmd_read,bridge_cmdLogic_dataCmd_data,io_apb_PWDATA)
  begin
    case bridge_cmdLogic_streamUnbuffered_payload_mode is
      when SpiMasterCtrlCmdMode_binary_sequential_DATA =>
        bridge_cmdLogic_streamUnbuffered_payload_args <= pkg_cat(pkg_toStdLogicVector(bridge_cmdLogic_dataCmd_read),bridge_cmdLogic_dataCmd_data);
      when others =>
        bridge_cmdLogic_streamUnbuffered_payload_args <= pkg_resize(pkg_cat(std_logic_vector(unsigned(pkg_extract(io_apb_PWDATA,1,0))),pkg_toStdLogicVector(pkg_extract(pkg_extract(io_apb_PWDATA,24,24),0))),9);
    end case;
  end process;

  bridge_cmdLogic_streamUnbuffered_ready <= bridge_cmdLogic_streamUnbuffered_queueWithAvailability_io_push_ready;
  process(io_apb_PADDR,busCtrl_doRead)
  begin
    zz_12 <= pkg_toStdLogic(false);
    case io_apb_PADDR is
      when "00000000" =>
        if busCtrl_doRead = '1' then
          zz_12 <= pkg_toStdLogic(true);
        end if;
      when others =>
    end case;
  end process;

  bridge_interruptCtrl_cmdInt <= (bridge_interruptCtrl_cmdIntEnable and (not bridge_cmdLogic_streamUnbuffered_queueWithAvailability_io_pop_valid));
  bridge_interruptCtrl_rspInt <= (bridge_interruptCtrl_rspIntEnable and spiCtrl_io_rsp_queueWithOccupancy_io_pop_valid);
  bridge_interruptCtrl_interrupt <= (bridge_interruptCtrl_rspInt or bridge_interruptCtrl_cmdInt);
  io_interrupt <= bridge_interruptCtrl_interrupt;
  bridge_cmdLogic_dataCmd_data <= pkg_extract(io_apb_PWDATA,7,0);
  bridge_cmdLogic_dataCmd_read <= pkg_extract(pkg_extract(io_apb_PWDATA,24,24),0);
  zz_9 <= pkg_extract(io_apb_PWDATA,28,28);
  bridge_cmdLogic_streamUnbuffered_payload_mode <= zz_9;
  zz_10 <= pkg_extract(io_apb_PWDATA,1,0);
  zz_11 <= pkg_toStdLogic(false);
  zz_13 <= pkg_toStdLogic(false);
  process(clk, reset)
  begin
    if reset = '1' then
      bridge_interruptCtrl_cmdIntEnable <= pkg_toStdLogic(false);
      bridge_interruptCtrl_rspIntEnable <= pkg_toStdLogic(false);
      zz_5 <= pkg_stdLogicVector("0000");
    elsif rising_edge(clk) then
      case io_apb_PADDR is
        when "00000100" =>
          if busCtrl_doWrite = '1' then
            bridge_interruptCtrl_cmdIntEnable <= pkg_extract(pkg_extract(io_apb_PWDATA,0,0),0);
            bridge_interruptCtrl_rspIntEnable <= pkg_extract(pkg_extract(io_apb_PWDATA,1,1),0);
          end if;
        when "00001000" =>
          if busCtrl_doWrite = '1' then
            zz_5 <= pkg_extract(io_apb_PWDATA,7,4);
          end if;
        when others =>
      end case;
    end if;
  end process;

  process(clk)
  begin
    if rising_edge(clk) then
      case io_apb_PADDR is
        when "00001000" =>
          if busCtrl_doWrite = '1' then
            zz_2 <= pkg_extract(pkg_extract(zz_10,0,0),0);
            zz_3 <= pkg_extract(pkg_extract(zz_10,1,1),0);
          end if;
        when "00001100" =>
          if busCtrl_doWrite = '1' then
            zz_4 <= unsigned(pkg_extract(io_apb_PWDATA,11,0));
          end if;
        when "00010000" =>
          if busCtrl_doWrite = '1' then
            zz_6 <= unsigned(pkg_extract(io_apb_PWDATA,11,0));
          end if;
        when "00010100" =>
          if busCtrl_doWrite = '1' then
            zz_7 <= unsigned(pkg_extract(io_apb_PWDATA,11,0));
          end if;
        when "00011000" =>
          if busCtrl_doWrite = '1' then
            zz_8 <= unsigned(pkg_extract(io_apb_PWDATA,11,0));
          end if;
        when others =>
      end case;
    end if;
  end process;

end arch;

