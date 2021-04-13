-- Generator : SpinalHDL v1.4.3    git head : adf552d8f500e7419fff395b7049228e4bc5de26
-- Component : InternalClockTester
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


entity BufferCC is
  port(
    io_dataIn : in std_logic;
    io_dataOut : out std_logic;
    internalClock : in std_logic
  );
end BufferCC;

architecture arch of BufferCC is
  attribute async_reg : string;

  signal buffers_0 : std_logic;
  attribute async_reg of buffers_0 : signal is "true";
  signal buffers_1 : std_logic;
  attribute async_reg of buffers_1 : signal is "true";
begin
  io_dataOut <= buffers_1;
  process(internalClock)
  begin
    if rising_edge(internalClock) then
      buffers_0 <= io_dataIn;
      buffers_1 <= buffers_0;
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


entity ClockGeneratorSub is
  port(
    clk : in std_logic;
    reset : in std_logic;
    internalClock_1 : out std_logic;
    internalReset_1 : out std_logic
  );
end ClockGeneratorSub;

architecture arch of ClockGeneratorSub is
  signal srcReset_buffercc_io_dataOut : std_logic;

  signal zz_1 : std_logic;
  signal zz_2 : unsigned(3 downto 0);
  signal zz_3 : unsigned(3 downto 0);
  signal internalClock : std_logic;
  signal initCounter : unsigned(2 downto 0);
  signal srcReset : std_logic;
  signal internalReset : std_logic;
  signal resetBuffer_internalReset : std_logic;
begin
  srcReset_buffercc : entity work.BufferCC
    port map ( 
      io_dataIn => srcReset,
      io_dataOut => srcReset_buffercc_io_dataOut,
      internalClock => internalClock 
    );
  process(zz_3,zz_1)
  begin
    zz_2 <= (zz_3 + pkg_resize(unsigned(pkg_toStdLogicVector(zz_1)),4));
    if pkg_toStdLogic(false) = '1' then
      zz_2 <= pkg_unsigned("0000");
    end if;
  end process;

  zz_1 <= pkg_toStdLogic(true);
  internalClock <= pkg_extract(zz_3,0);
  srcReset <= pkg_toStdLogic(initCounter /= pkg_unsigned("000"));
  resetBuffer_internalReset <= srcReset_buffercc_io_dataOut;
  internalReset <= resetBuffer_internalReset;
  internalClock_1 <= internalClock;
  internalReset_1 <= internalReset;
  process(clk, reset)
  begin
    if reset = '1' then
      zz_3 <= pkg_unsigned("0000");
      initCounter <= pkg_unsigned("111");
    elsif rising_edge(clk) then
      zz_3 <= zz_2;
      if srcReset = '1' then
        initCounter <= (initCounter - pkg_unsigned("001"));
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


entity CounterComponentSub is
  port(
    io_counter : out unsigned(7 downto 0);
    internalClock : in std_logic;
    internalReset : in std_logic
  );
end CounterComponentSub;

architecture arch of CounterComponentSub is

  signal counter_willIncrement : std_logic;
  signal counter_willClear : std_logic;
  signal counter_valueNext : unsigned(7 downto 0);
  signal counter_value : unsigned(7 downto 0);
  signal counter_willOverflowIfInc : std_logic;
  signal counter_willOverflow : std_logic;
  function zz_counter_willIncrement return std_logic is
    variable counter_willIncrement : std_logic;
  begin
    counter_willIncrement := pkg_toStdLogic(false);
    counter_willIncrement := pkg_toStdLogic(true);
    return counter_willIncrement;
  end function;
begin
  counter_willIncrement <= zz_counter_willIncrement;
  counter_willClear <= pkg_toStdLogic(false);
  counter_willOverflowIfInc <= pkg_toStdLogic(counter_value = pkg_unsigned("11111111"));
  counter_willOverflow <= (counter_willOverflowIfInc and counter_willIncrement);
  process(counter_value,counter_willIncrement,counter_willClear)
  begin
    counter_valueNext <= (counter_value + pkg_resize(unsigned(pkg_toStdLogicVector(counter_willIncrement)),8));
    if counter_willClear = '1' then
      counter_valueNext <= pkg_unsigned("00000000");
    end if;
  end process;

  io_counter <= counter_value;
  process(internalClock, internalReset)
  begin
    if internalReset = '1' then
      counter_value <= pkg_unsigned("00000000");
    elsif rising_edge(internalClock) then
      counter_value <= counter_valueNext;
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


entity ClockGenerator is
  port(
    clk : in std_logic;
    reset : in std_logic;
    internalClock : out std_logic;
    internalReset : out std_logic
  );
end ClockGenerator;

architecture arch of ClockGenerator is
  signal sub_internalClock_1 : std_logic;
  signal sub_internalReset_1 : std_logic;

begin
  sub : entity work.ClockGeneratorSub
    port map ( 
      clk => clk,
      reset => reset,
      internalClock_1 => sub_internalClock_1,
      internalReset_1 => sub_internalReset_1 
    );
  internalClock <= sub_internalClock_1;
  internalReset <= sub_internalReset_1;
end arch;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.pkg_scala2hdl.all;
use work.all;
use work.pkg_enum.all;


entity CounterComponent is
  port(
    io_counter : out unsigned(7 downto 0);
    internalClock : in std_logic;
    internalReset : in std_logic
  );
end CounterComponent;

architecture arch of CounterComponent is
  signal sub_io_counter : unsigned(7 downto 0);

begin
  sub : entity work.CounterComponentSub
    port map ( 
      io_counter => sub_io_counter,
      internalClock => internalClock,
      internalReset => internalReset 
    );
  io_counter <= sub_io_counter;
end arch;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.pkg_scala2hdl.all;
use work.all;
use work.pkg_enum.all;


entity InternalClockTester is
  port(
    io_internalClkCounter : out unsigned(7 downto 0);
    clk : in std_logic;
    reset : in std_logic
  );
end InternalClockTester;

architecture arch of InternalClockTester is
  signal clockGenerator_1_internalClock : std_logic;
  signal clockGenerator_1_internalReset : std_logic;
  signal internClockDomain_counterComponent_io_counter : unsigned(7 downto 0);

begin
  clockGenerator_1 : entity work.ClockGenerator
    port map ( 
      clk => clk,
      reset => reset,
      internalClock => clockGenerator_1_internalClock,
      internalReset => clockGenerator_1_internalReset 
    );
  internClockDomain_counterComponent : entity work.CounterComponent
    port map ( 
      io_counter => internClockDomain_counterComponent_io_counter,
      internalClock => clockGenerator_1_internalClock,
      internalReset => clockGenerator_1_internalReset 
    );
  io_internalClkCounter <= internClockDomain_counterComponent_io_counter;
end arch;

