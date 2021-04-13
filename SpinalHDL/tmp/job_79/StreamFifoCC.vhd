-- Generator : SpinalHDL v1.4.3    git head : adf552d8f500e7419fff395b7049228e4bc5de26
-- Component : StreamFifoCC
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
    io_dataIn : in std_logic_vector(5 downto 0);
    io_dataOut : out std_logic_vector(5 downto 0);
    clkA_clk : in std_logic
  );
end BufferCC;

architecture arch of BufferCC is
  attribute async_reg : string;

  signal buffers_0 : std_logic_vector(5 downto 0) := pkg_stdLogicVector("000000");
  attribute async_reg of buffers_0 : signal is "true";
  signal buffers_1 : std_logic_vector(5 downto 0) := pkg_stdLogicVector("000000");
  attribute async_reg of buffers_1 : signal is "true";
begin
  io_dataOut <= buffers_1;
  process(clkA_clk)
  begin
    if rising_edge(clkA_clk) then
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


entity BufferCC_1 is
  port(
    io_dataIn : in std_logic_vector(5 downto 0);
    io_dataOut : out std_logic_vector(5 downto 0);
    clkB_clk : in std_logic
  );
end BufferCC_1;

architecture arch of BufferCC_1 is
  attribute async_reg : string;

  signal buffers_0 : std_logic_vector(5 downto 0) := pkg_stdLogicVector("000000");
  attribute async_reg of buffers_0 : signal is "true";
  signal buffers_1 : std_logic_vector(5 downto 0) := pkg_stdLogicVector("000000");
  attribute async_reg of buffers_1 : signal is "true";
begin
  io_dataOut <= buffers_1;
  process(clkB_clk)
  begin
    if rising_edge(clkB_clk) then
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


entity StreamFifoCC is
  port(
    io_push_valid : in std_logic;
    io_push_ready : out std_logic;
    io_push_payload : in std_logic_vector(31 downto 0);
    io_pop_valid : out std_logic;
    io_pop_ready : in std_logic;
    io_pop_payload : out std_logic_vector(31 downto 0);
    io_pushOccupancy : out unsigned(5 downto 0);
    io_popOccupancy : out unsigned(5 downto 0);
    clkA_clk : in std_logic;
    clkB_clk : in std_logic
  );
end StreamFifoCC;

architecture arch of StreamFifoCC is
  signal zz_13 : std_logic_vector(31 downto 0);
  signal zz_14 : std_logic;
  signal zz_15 : std_logic;
  signal popToPushGray_buffercc_io_dataOut : std_logic_vector(5 downto 0);
  signal pushToPopGray_buffercc_io_dataOut : std_logic_vector(5 downto 0);
  signal zz_16 : std_logic;
  signal zz_17 : unsigned(4 downto 0);
  signal zz_18 : unsigned(4 downto 0);
  signal zz_19 : std_logic;

  signal zz_1 : std_logic;
  signal popToPushGray : std_logic_vector(5 downto 0);
  signal pushToPopGray : std_logic_vector(5 downto 0);
  signal pushCC_pushPtr : unsigned(5 downto 0) := pkg_unsigned("000000");
  signal pushCC_pushPtrPlus : unsigned(5 downto 0);
  signal pushCC_pushPtrGray : std_logic_vector(5 downto 0) := pkg_stdLogicVector("000000");
  signal pushCC_popPtrGray : std_logic_vector(5 downto 0);
  signal pushCC_full : std_logic;
  signal zz_2 : std_logic;
  signal zz_3 : std_logic;
  signal zz_4 : std_logic;
  signal zz_5 : std_logic;
  signal zz_6 : std_logic;
  signal popCC_popPtr : unsigned(5 downto 0) := pkg_unsigned("000000");
  signal popCC_popPtrPlus : unsigned(5 downto 0);
  signal popCC_popPtrGray : std_logic_vector(5 downto 0) := pkg_stdLogicVector("000000");
  signal popCC_pushPtrGray : std_logic_vector(5 downto 0);
  signal popCC_empty : std_logic;
  signal zz_7 : unsigned(5 downto 0);
  signal zz_8 : std_logic;
  signal zz_9 : std_logic;
  signal zz_10 : std_logic;
  signal zz_11 : std_logic;
  signal zz_12 : std_logic;
  type ram_type is array (0 to 31) of std_logic_vector(31 downto 0);
  signal ram : ram_type;
begin
  io_push_ready <= zz_14;
  io_pop_valid <= zz_15;
  zz_16 <= (io_push_valid and zz_14);
  zz_17 <= pkg_resize(pushCC_pushPtr,5);
  zz_18 <= pkg_resize(zz_7,5);
  zz_19 <= pkg_toStdLogic(true);
  process(clkA_clk)
  begin
    if rising_edge(clkA_clk) then
      if zz_1 = '1' then
        ram(to_integer(zz_17)) <= io_push_payload;
      end if;
    end if;
  end process;

  process(clkB_clk)
  begin
    if rising_edge(clkB_clk) then
      if zz_19 = '1' then
        zz_13 <= ram(to_integer(zz_18));
      end if;
    end if;
  end process;

  popToPushGray_buffercc : entity work.BufferCC
    port map ( 
      io_dataIn => popToPushGray,
      io_dataOut => popToPushGray_buffercc_io_dataOut,
      clkA_clk => clkA_clk 
    );
  pushToPopGray_buffercc : entity work.BufferCC_1
    port map ( 
      io_dataIn => pushToPopGray,
      io_dataOut => pushToPopGray_buffercc_io_dataOut,
      clkB_clk => clkB_clk 
    );
  process(zz_16)
  begin
    zz_1 <= pkg_toStdLogic(false);
    if zz_16 = '1' then
      zz_1 <= pkg_toStdLogic(true);
    end if;
  end process;

  pushCC_pushPtrPlus <= (pushCC_pushPtr + pkg_unsigned("000001"));
  pushCC_popPtrGray <= popToPushGray_buffercc_io_dataOut;
  pushCC_full <= (pkg_toStdLogic(pkg_extract(pushCC_pushPtrGray,5,4) = pkg_not(pkg_extract(pushCC_popPtrGray,5,4))) and pkg_toStdLogic(pkg_extract(pushCC_pushPtrGray,3,0) = pkg_extract(pushCC_popPtrGray,3,0)));
  zz_14 <= (not pushCC_full);
  zz_2 <= (pkg_extract(pushCC_popPtrGray,1) xor zz_3);
  zz_3 <= (pkg_extract(pushCC_popPtrGray,2) xor zz_4);
  zz_4 <= (pkg_extract(pushCC_popPtrGray,3) xor zz_5);
  zz_5 <= (pkg_extract(pushCC_popPtrGray,4) xor zz_6);
  zz_6 <= pkg_extract(pushCC_popPtrGray,5);
  io_pushOccupancy <= (pushCC_pushPtr - unsigned(pkg_cat(pkg_toStdLogicVector(zz_6),pkg_cat(pkg_toStdLogicVector(zz_5),pkg_cat(pkg_toStdLogicVector(zz_4),pkg_cat(pkg_toStdLogicVector(zz_3),pkg_cat(pkg_toStdLogicVector(zz_2),pkg_toStdLogicVector((pkg_extract(pushCC_popPtrGray,0) xor zz_2)))))))));
  popCC_popPtrPlus <= (popCC_popPtr + pkg_unsigned("000001"));
  popCC_pushPtrGray <= pushToPopGray_buffercc_io_dataOut;
  popCC_empty <= pkg_toStdLogic(popCC_popPtrGray = popCC_pushPtrGray);
  zz_15 <= (not popCC_empty);
  zz_7 <= pkg_mux((zz_15 and io_pop_ready),popCC_popPtrPlus,popCC_popPtr);
  io_pop_payload <= zz_13;
  zz_8 <= (pkg_extract(popCC_pushPtrGray,1) xor zz_9);
  zz_9 <= (pkg_extract(popCC_pushPtrGray,2) xor zz_10);
  zz_10 <= (pkg_extract(popCC_pushPtrGray,3) xor zz_11);
  zz_11 <= (pkg_extract(popCC_pushPtrGray,4) xor zz_12);
  zz_12 <= pkg_extract(popCC_pushPtrGray,5);
  io_popOccupancy <= (unsigned(pkg_cat(pkg_toStdLogicVector(zz_12),pkg_cat(pkg_toStdLogicVector(zz_11),pkg_cat(pkg_toStdLogicVector(zz_10),pkg_cat(pkg_toStdLogicVector(zz_9),pkg_cat(pkg_toStdLogicVector(zz_8),pkg_toStdLogicVector((pkg_extract(popCC_pushPtrGray,0) xor zz_8)))))))) - popCC_popPtr);
  pushToPopGray <= pushCC_pushPtrGray;
  popToPushGray <= popCC_popPtrGray;
  process(clkA_clk)
  begin
    if rising_edge(clkA_clk) then
      if (io_push_valid and zz_14) = '1' then
        pushCC_pushPtrGray <= std_logic_vector((pkg_shiftRight(pushCC_pushPtrPlus,pkg_unsigned("1")) xor pushCC_pushPtrPlus));
      end if;
      if zz_16 = '1' then
        pushCC_pushPtr <= pushCC_pushPtrPlus;
      end if;
    end if;
  end process;

  process(clkB_clk)
  begin
    if rising_edge(clkB_clk) then
      if (zz_15 and io_pop_ready) = '1' then
        popCC_popPtrGray <= std_logic_vector((pkg_shiftRight(popCC_popPtrPlus,pkg_unsigned("1")) xor popCC_popPtrPlus));
      end if;
      if (zz_15 and io_pop_ready) = '1' then
        popCC_popPtr <= popCC_popPtrPlus;
      end if;
    end if;
  end process;

end arch;

