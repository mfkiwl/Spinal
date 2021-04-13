-- Generator : SpinalHDL v1.4.3    git head : adf552d8f500e7419fff395b7049228e4bc5de26
-- Component : StreamFifo
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


entity StreamFifo is
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
    io_availability : out unsigned(1 downto 0);
    clk : in std_logic;
    reset : in std_logic
  );
end StreamFifo;

architecture arch of StreamFifo is
  signal zz_5 : std_logic_vector(24 downto 0);
  signal zz_6 : std_logic;
  signal zz_7 : std_logic;
  signal zz_8 : std_logic;
  signal zz_9 : std_logic_vector(24 downto 0);

  signal zz_1 : std_logic;
  signal logic_pushPtr_willIncrement : std_logic;
  signal logic_pushPtr_willClear : std_logic;
  signal logic_pushPtr_valueNext : unsigned(0 downto 0);
  signal logic_pushPtr_value : unsigned(0 downto 0);
  signal logic_pushPtr_willOverflowIfInc : std_logic;
  signal logic_pushPtr_willOverflow : std_logic;
  signal logic_popPtr_willIncrement : std_logic;
  signal logic_popPtr_willClear : std_logic;
  signal logic_popPtr_valueNext : unsigned(0 downto 0);
  signal logic_popPtr_value : unsigned(0 downto 0);
  signal logic_popPtr_willOverflowIfInc : std_logic;
  signal logic_popPtr_willOverflow : std_logic;
  signal logic_ptrMatch : std_logic;
  signal logic_risingOccupancy : std_logic;
  signal logic_pushing : std_logic;
  signal logic_popping : std_logic;
  signal logic_empty : std_logic;
  signal logic_full : std_logic;
  signal zz_2 : std_logic;
  signal zz_3 : std_logic_vector(24 downto 0);
  signal zz_4 : std_logic_vector(15 downto 0);
  signal logic_ptrDif : unsigned(0 downto 0);
  type logic_ram_type is array (0 to 1) of std_logic_vector(24 downto 0);
  signal logic_ram : logic_ram_type;
begin
  io_push_ready <= zz_6;
  io_pop_valid <= zz_7;
  zz_8 <= pkg_toStdLogic(true);
  zz_9 <= pkg_cat(pkg_cat(std_logic_vector(io_push_payload_color_b),pkg_cat(std_logic_vector(io_push_payload_color_g),std_logic_vector(io_push_payload_color_r))),pkg_cat(io_push_payload_data,pkg_toStdLogicVector(io_push_payload_flag)));
  process(clk)
  begin
    if rising_edge(clk) then
      if zz_8 = '1' then
        zz_5 <= logic_ram(to_integer(logic_popPtr_valueNext));
      end if;
    end if;
  end process;

  process(clk)
  begin
    if rising_edge(clk) then
      if zz_1 = '1' then
        logic_ram(to_integer(logic_pushPtr_value)) <= zz_9;
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

  logic_pushPtr_willOverflowIfInc <= pkg_toStdLogic(logic_pushPtr_value = pkg_unsigned("1"));
  logic_pushPtr_willOverflow <= (logic_pushPtr_willOverflowIfInc and logic_pushPtr_willIncrement);
  process(logic_pushPtr_value,logic_pushPtr_willIncrement,logic_pushPtr_willClear)
  begin
    logic_pushPtr_valueNext <= (logic_pushPtr_value + unsigned(pkg_toStdLogicVector(logic_pushPtr_willIncrement)));
    if logic_pushPtr_willClear = '1' then
      logic_pushPtr_valueNext <= pkg_unsigned("0");
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

  logic_popPtr_willOverflowIfInc <= pkg_toStdLogic(logic_popPtr_value = pkg_unsigned("1"));
  logic_popPtr_willOverflow <= (logic_popPtr_willOverflowIfInc and logic_popPtr_willIncrement);
  process(logic_popPtr_value,logic_popPtr_willIncrement,logic_popPtr_willClear)
  begin
    logic_popPtr_valueNext <= (logic_popPtr_value + unsigned(pkg_toStdLogicVector(logic_popPtr_willIncrement)));
    if logic_popPtr_willClear = '1' then
      logic_popPtr_valueNext <= pkg_unsigned("0");
    end if;
  end process;

  logic_ptrMatch <= pkg_toStdLogic(logic_pushPtr_value = logic_popPtr_value);
  logic_pushing <= (io_push_valid and zz_6);
  logic_popping <= (zz_7 and io_pop_ready);
  logic_empty <= (logic_ptrMatch and (not logic_risingOccupancy));
  logic_full <= (logic_ptrMatch and logic_risingOccupancy);
  zz_6 <= (not logic_full);
  zz_7 <= ((not logic_empty) and (not (zz_2 and (not logic_full))));
  zz_3 <= zz_5;
  zz_4 <= pkg_extract(zz_3,24,9);
  io_pop_payload_flag <= pkg_extract(pkg_extract(zz_3,0,0),0);
  io_pop_payload_data <= pkg_extract(zz_3,8,1);
  io_pop_payload_color_r <= unsigned(pkg_extract(zz_4,4,0));
  io_pop_payload_color_g <= unsigned(pkg_extract(zz_4,10,5));
  io_pop_payload_color_b <= unsigned(pkg_extract(zz_4,15,11));
  logic_ptrDif <= (logic_pushPtr_value - logic_popPtr_value);
  io_occupancy <= unsigned(pkg_cat(pkg_toStdLogicVector((logic_risingOccupancy and logic_ptrMatch)),std_logic_vector(logic_ptrDif)));
  io_availability <= unsigned(pkg_cat(pkg_toStdLogicVector(((not logic_risingOccupancy) and logic_ptrMatch)),std_logic_vector((logic_popPtr_value - logic_pushPtr_value))));
  process(clk, reset)
  begin
    if reset = '1' then
      logic_pushPtr_value <= pkg_unsigned("0");
      logic_popPtr_value <= pkg_unsigned("0");
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

