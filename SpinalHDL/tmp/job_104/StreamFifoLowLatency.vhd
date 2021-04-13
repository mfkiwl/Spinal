-- Generator : SpinalHDL v1.4.3    git head : adf552d8f500e7419fff395b7049228e4bc5de26
-- Component : StreamFifoLowLatency
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


entity StreamFifoLowLatency is
  port(
    io_push_valid : in std_logic;
    io_push_ready : out std_logic;
    io_push_payload_flag : in std_logic;
    io_push_payload_data : in std_logic_vector(7 downto 0);
    io_push_payload_color_r : in unsigned(4 downto 0);
    io_push_payload_color_g : in unsigned(5 downto 0);
    io_push_payload_color_b : in unsigned(4 downto 0);
    io_pop_valid : out std_logic;
    io_pop_ready : in std_logic;
    io_pop_payload_flag : out std_logic;
    io_pop_payload_data : out std_logic_vector(7 downto 0);
    io_pop_payload_color_r : out unsigned(4 downto 0);
    io_pop_payload_color_g : out unsigned(5 downto 0);
    io_pop_payload_color_b : out unsigned(4 downto 0);
    io_flush : in std_logic;
    io_occupancy : out unsigned(1 downto 0);
    clk : in std_logic;
    reset : in std_logic
  );
end StreamFifoLowLatency;

architecture arch of StreamFifoLowLatency is
  signal zz_4 : std_logic_vector(24 downto 0);
  signal zz_5 : std_logic;
  signal zz_6 : std_logic;
  signal zz_7 : std_logic;
  signal zz_8 : std_logic_vector(24 downto 0);
  attribute ram_style : string;

  signal zz_1 : std_logic;
  signal pushPtr_willIncrement : std_logic;
  signal pushPtr_willClear : std_logic;
  signal pushPtr_valueNext : unsigned(0 downto 0);
  signal pushPtr_value : unsigned(0 downto 0);
  signal pushPtr_willOverflowIfInc : std_logic;
  signal pushPtr_willOverflow : std_logic;
  signal popPtr_willIncrement : std_logic;
  signal popPtr_willClear : std_logic;
  signal popPtr_valueNext : unsigned(0 downto 0);
  signal popPtr_value : unsigned(0 downto 0);
  signal popPtr_willOverflowIfInc : std_logic;
  signal popPtr_willOverflow : std_logic;
  signal ptrMatch : std_logic;
  signal risingOccupancy : std_logic;
  signal empty : std_logic;
  signal full : std_logic;
  signal pushing : std_logic;
  signal popping : std_logic;
  signal zz_2 : std_logic_vector(24 downto 0);
  signal zz_3 : std_logic_vector(15 downto 0);
  signal ptrDif : unsigned(0 downto 0);
  type ram_type is array (0 to 1) of std_logic_vector(24 downto 0);
  signal ram : ram_type;
  attribute ram_style of ram : signal is "distributed";
begin
  io_push_ready <= zz_5;
  io_pop_valid <= zz_6;
  zz_7 <= (not empty);
  zz_8 <= pkg_cat(pkg_cat(std_logic_vector(io_push_payload_color_b),pkg_cat(std_logic_vector(io_push_payload_color_g),std_logic_vector(io_push_payload_color_r))),pkg_cat(io_push_payload_data,pkg_toStdLogicVector(io_push_payload_flag)));
  zz_4 <= ram(to_integer(popPtr_value));
  process(clk)
  begin
    if rising_edge(clk) then
      if zz_1 = '1' then
        ram(to_integer(pushPtr_value)) <= zz_8;
      end if;
    end if;
  end process;

  process(pushing)
  begin
    zz_1 <= pkg_toStdLogic(false);
    if pushing = '1' then
      zz_1 <= pkg_toStdLogic(true);
    end if;
  end process;

  process(pushing)
  begin
    pushPtr_willIncrement <= pkg_toStdLogic(false);
    if pushing = '1' then
      pushPtr_willIncrement <= pkg_toStdLogic(true);
    end if;
  end process;

  process(io_flush)
  begin
    pushPtr_willClear <= pkg_toStdLogic(false);
    if io_flush = '1' then
      pushPtr_willClear <= pkg_toStdLogic(true);
    end if;
  end process;

  pushPtr_willOverflowIfInc <= pkg_toStdLogic(pushPtr_value = pkg_unsigned("1"));
  pushPtr_willOverflow <= (pushPtr_willOverflowIfInc and pushPtr_willIncrement);
  process(pushPtr_value,pushPtr_willIncrement,pushPtr_willClear)
  begin
    pushPtr_valueNext <= (pushPtr_value + unsigned(pkg_toStdLogicVector(pushPtr_willIncrement)));
    if pushPtr_willClear = '1' then
      pushPtr_valueNext <= pkg_unsigned("0");
    end if;
  end process;

  process(popping)
  begin
    popPtr_willIncrement <= pkg_toStdLogic(false);
    if popping = '1' then
      popPtr_willIncrement <= pkg_toStdLogic(true);
    end if;
  end process;

  process(io_flush)
  begin
    popPtr_willClear <= pkg_toStdLogic(false);
    if io_flush = '1' then
      popPtr_willClear <= pkg_toStdLogic(true);
    end if;
  end process;

  popPtr_willOverflowIfInc <= pkg_toStdLogic(popPtr_value = pkg_unsigned("1"));
  popPtr_willOverflow <= (popPtr_willOverflowIfInc and popPtr_willIncrement);
  process(popPtr_value,popPtr_willIncrement,popPtr_willClear)
  begin
    popPtr_valueNext <= (popPtr_value + unsigned(pkg_toStdLogicVector(popPtr_willIncrement)));
    if popPtr_willClear = '1' then
      popPtr_valueNext <= pkg_unsigned("0");
    end if;
  end process;

  ptrMatch <= pkg_toStdLogic(pushPtr_value = popPtr_value);
  empty <= (ptrMatch and (not risingOccupancy));
  full <= (ptrMatch and risingOccupancy);
  pushing <= (io_push_valid and zz_5);
  popping <= (zz_6 and io_pop_ready);
  zz_5 <= (not full);
  process(zz_7,io_push_valid)
  begin
    if zz_7 = '1' then
      zz_6 <= pkg_toStdLogic(true);
    else
      zz_6 <= io_push_valid;
    end if;
  end process;

  zz_2 <= zz_4;
  zz_3 <= pkg_extract(zz_2,24,9);
  process(zz_7,zz_2,io_push_payload_flag)
  begin
    if zz_7 = '1' then
      io_pop_payload_flag <= pkg_extract(pkg_extract(zz_2,0,0),0);
    else
      io_pop_payload_flag <= io_push_payload_flag;
    end if;
  end process;

  process(zz_7,zz_2,io_push_payload_data)
  begin
    if zz_7 = '1' then
      io_pop_payload_data <= pkg_extract(zz_2,8,1);
    else
      io_pop_payload_data <= io_push_payload_data;
    end if;
  end process;

  process(zz_7,zz_3,io_push_payload_color_r)
  begin
    if zz_7 = '1' then
      io_pop_payload_color_r <= unsigned(pkg_extract(zz_3,4,0));
    else
      io_pop_payload_color_r <= io_push_payload_color_r;
    end if;
  end process;

  process(zz_7,zz_3,io_push_payload_color_g)
  begin
    if zz_7 = '1' then
      io_pop_payload_color_g <= unsigned(pkg_extract(zz_3,10,5));
    else
      io_pop_payload_color_g <= io_push_payload_color_g;
    end if;
  end process;

  process(zz_7,zz_3,io_push_payload_color_b)
  begin
    if zz_7 = '1' then
      io_pop_payload_color_b <= unsigned(pkg_extract(zz_3,15,11));
    else
      io_pop_payload_color_b <= io_push_payload_color_b;
    end if;
  end process;

  ptrDif <= (pushPtr_value - popPtr_value);
  io_occupancy <= unsigned(pkg_cat(pkg_toStdLogicVector((risingOccupancy and ptrMatch)),std_logic_vector(ptrDif)));
  process(clk, reset)
  begin
    if reset = '1' then
      pushPtr_value <= pkg_unsigned("0");
      popPtr_value <= pkg_unsigned("0");
      risingOccupancy <= pkg_toStdLogic(false);
    elsif rising_edge(clk) then
      pushPtr_value <= pushPtr_valueNext;
      popPtr_value <= popPtr_valueNext;
      if pkg_toStdLogic(pushing /= popping) = '1' then
        risingOccupancy <= pushing;
      end if;
      if io_flush = '1' then
        risingOccupancy <= pkg_toStdLogic(false);
      end if;
    end if;
  end process;

end arch;

