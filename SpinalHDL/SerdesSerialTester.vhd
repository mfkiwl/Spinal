-- Generator : SpinalHDL v1.4.3    git head : adf552d8f500e7419fff395b7049228e4bc5de26
-- Component : SerdesSerialTester
-- Git hash  : adf552d8f500e7419fff395b7049228e4bc5de26

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.all;

package pkg_enum is
  type SerialCheckerRxState is (eIdle,eData,eCheck0,eCheck1);
  type SerialLinkRxState is (eType,eOtherPtr0,eOtherPtr1,eMessagePtr0,eMessagePtr1,eData);
  type SerialLinkTxState is (eNewFrame,eMyPtr0,eMyPtr1,eMessagePtr0,eMessagePtr1,eData);
  type SerialCheckerTxState is (eStart,eData,eEnd,eCheck0,eCheck1);

  function pkg_mux (sel : std_logic; one : SerialCheckerRxState; zero : SerialCheckerRxState) return SerialCheckerRxState;
  function pkg_toStdLogicVector_defaultEncoding (value : SerialCheckerRxState) return std_logic_vector;
  function pkg_toSerialCheckerRxState_defaultEncoding (value : std_logic_vector(1 downto 0)) return SerialCheckerRxState;
  function pkg_mux (sel : std_logic; one : SerialLinkRxState; zero : SerialLinkRxState) return SerialLinkRxState;
  function pkg_toStdLogicVector_defaultEncoding (value : SerialLinkRxState) return std_logic_vector;
  function pkg_toSerialLinkRxState_defaultEncoding (value : std_logic_vector(2 downto 0)) return SerialLinkRxState;
  function pkg_mux (sel : std_logic; one : SerialLinkTxState; zero : SerialLinkTxState) return SerialLinkTxState;
  function pkg_toStdLogicVector_defaultEncoding (value : SerialLinkTxState) return std_logic_vector;
  function pkg_toSerialLinkTxState_defaultEncoding (value : std_logic_vector(2 downto 0)) return SerialLinkTxState;
  function pkg_mux (sel : std_logic; one : SerialCheckerTxState; zero : SerialCheckerTxState) return SerialCheckerTxState;
  function pkg_toStdLogicVector_defaultEncoding (value : SerialCheckerTxState) return std_logic_vector;
  function pkg_toSerialCheckerTxState_defaultEncoding (value : std_logic_vector(2 downto 0)) return SerialCheckerTxState;
end pkg_enum;

package body pkg_enum is
  function pkg_mux (sel : std_logic; one : SerialCheckerRxState; zero : SerialCheckerRxState) return SerialCheckerRxState is
  begin
    if sel = '1' then
      return one;
    else
      return zero;
    end if;
  end pkg_mux;

  function pkg_toSerialCheckerRxState_defaultEncoding (value : std_logic_vector(1 downto 0)) return SerialCheckerRxState is
  begin
    case value is
      when "00" => return eIdle;
      when "01" => return eData;
      when "10" => return eCheck0;
      when "11" => return eCheck1;
      when others => return eIdle;
    end case;
  end;
  function pkg_toStdLogicVector_defaultEncoding (value : SerialCheckerRxState) return std_logic_vector is
  begin
    case value is
      when eIdle => return "00";
      when eData => return "01";
      when eCheck0 => return "10";
      when eCheck1 => return "11";
      when others => return "00";
    end case;
  end;
  function pkg_mux (sel : std_logic; one : SerialLinkRxState; zero : SerialLinkRxState) return SerialLinkRxState is
  begin
    if sel = '1' then
      return one;
    else
      return zero;
    end if;
  end pkg_mux;

  function pkg_toSerialLinkRxState_defaultEncoding (value : std_logic_vector(2 downto 0)) return SerialLinkRxState is
  begin
    case value is
      when "000" => return eType;
      when "001" => return eOtherPtr0;
      when "010" => return eOtherPtr1;
      when "011" => return eMessagePtr0;
      when "100" => return eMessagePtr1;
      when "101" => return eData;
      when others => return eType;
    end case;
  end;
  function pkg_toStdLogicVector_defaultEncoding (value : SerialLinkRxState) return std_logic_vector is
  begin
    case value is
      when eType => return "000";
      when eOtherPtr0 => return "001";
      when eOtherPtr1 => return "010";
      when eMessagePtr0 => return "011";
      when eMessagePtr1 => return "100";
      when eData => return "101";
      when others => return "000";
    end case;
  end;
  function pkg_mux (sel : std_logic; one : SerialLinkTxState; zero : SerialLinkTxState) return SerialLinkTxState is
  begin
    if sel = '1' then
      return one;
    else
      return zero;
    end if;
  end pkg_mux;

  function pkg_toSerialLinkTxState_defaultEncoding (value : std_logic_vector(2 downto 0)) return SerialLinkTxState is
  begin
    case value is
      when "000" => return eNewFrame;
      when "001" => return eMyPtr0;
      when "010" => return eMyPtr1;
      when "011" => return eMessagePtr0;
      when "100" => return eMessagePtr1;
      when "101" => return eData;
      when others => return eNewFrame;
    end case;
  end;
  function pkg_toStdLogicVector_defaultEncoding (value : SerialLinkTxState) return std_logic_vector is
  begin
    case value is
      when eNewFrame => return "000";
      when eMyPtr0 => return "001";
      when eMyPtr1 => return "010";
      when eMessagePtr0 => return "011";
      when eMessagePtr1 => return "100";
      when eData => return "101";
      when others => return "000";
    end case;
  end;
  function pkg_mux (sel : std_logic; one : SerialCheckerTxState; zero : SerialCheckerTxState) return SerialCheckerTxState is
  begin
    if sel = '1' then
      return one;
    else
      return zero;
    end if;
  end pkg_mux;

  function pkg_toSerialCheckerTxState_defaultEncoding (value : std_logic_vector(2 downto 0)) return SerialCheckerTxState is
  begin
    case value is
      when "000" => return eStart;
      when "001" => return eData;
      when "010" => return eEnd;
      when "011" => return eCheck0;
      when "100" => return eCheck1;
      when others => return eStart;
    end case;
  end;
  function pkg_toStdLogicVector_defaultEncoding (value : SerialCheckerTxState) return std_logic_vector is
  begin
    case value is
      when eStart => return "000";
      when eData => return "001";
      when eEnd => return "010";
      when eCheck0 => return "011";
      when eCheck1 => return "100";
      when others => return "000";
    end case;
  end;
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


entity SerialCheckerPhysicalfromSerial is
  port(
    io_input_valid : in std_logic;
    io_input_payload : in std_logic_vector(7 downto 0);
    io_output_valid : out std_logic;
    io_output_payload_bits : out std_logic_vector(7 downto 0);
    io_output_payload_isStart : out std_logic;
    io_output_payload_isEnd : out std_logic;
    clk : in std_logic;
    reset : in std_logic
  );
end SerialCheckerPhysicalfromSerial;

architecture arch of SerialCheckerPhysicalfromSerial is
  signal zz_1 : std_logic;

  signal inMagic : std_logic;
begin
  zz_1 <= pkg_toStdLogic(io_input_payload = pkg_stdLogicVector("10100101"));
  process(io_input_valid,inMagic,io_input_payload,zz_1)
  begin
    io_output_valid <= pkg_toStdLogic(false);
    if io_input_valid = '1' then
      if inMagic = '1' then
        case io_input_payload is
          when "11011000" =>
            io_output_valid <= pkg_toStdLogic(true);
          when "10011010" =>
            io_output_valid <= pkg_toStdLogic(true);
          when "10100101" =>
            io_output_valid <= pkg_toStdLogic(true);
          when others =>
        end case;
      else
        if zz_1 = '0' then
          io_output_valid <= pkg_toStdLogic(true);
        end if;
      end if;
    end if;
  end process;

  io_output_payload_bits <= io_input_payload;
  process(io_input_valid,inMagic,io_input_payload)
  begin
    io_output_payload_isStart <= pkg_toStdLogic(false);
    if io_input_valid = '1' then
      if inMagic = '1' then
        case io_input_payload is
          when "11011000" =>
            io_output_payload_isStart <= pkg_toStdLogic(true);
          when others =>
        end case;
      end if;
    end if;
  end process;

  process(io_input_valid,inMagic,io_input_payload)
  begin
    io_output_payload_isEnd <= pkg_toStdLogic(false);
    if io_input_valid = '1' then
      if inMagic = '1' then
        case io_input_payload is
          when "10011010" =>
            io_output_payload_isEnd <= pkg_toStdLogic(true);
          when others =>
        end case;
      end if;
    end if;
  end process;

  process(clk, reset)
  begin
    if reset = '1' then
      inMagic <= pkg_toStdLogic(false);
    elsif rising_edge(clk) then
      if io_input_valid = '1' then
        if inMagic = '1' then
          inMagic <= pkg_toStdLogic(false);
        else
          if zz_1 = '1' then
            inMagic <= pkg_toStdLogic(true);
          end if;
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


entity SerialCheckerRx is
  port(
    io_input_valid : in std_logic;
    io_input_payload_bits : in std_logic_vector(7 downto 0);
    io_input_payload_isStart : in std_logic;
    io_input_payload_isEnd : in std_logic;
    io_output_valid : out std_logic;
    io_output_ready : in std_logic;
    io_output_payload_last : out std_logic;
    io_output_payload_fragment : out std_logic_vector(7 downto 0);
    clk : in std_logic;
    reset : in std_logic
  );
end SerialCheckerRx;

architecture arch of SerialCheckerRx is
  signal zz_7 : std_logic_vector(8 downto 0);
  signal zz_8 : std_logic;
  signal zz_9 : unsigned(6 downto 0);
  signal zz_10 : std_logic_vector(8 downto 0);

  signal zz_1 : std_logic;
  signal buffer_writePtr_willIncrement : std_logic;
  signal buffer_writePtr_willClear : std_logic;
  signal buffer_writePtr_valueNext : unsigned(7 downto 0);
  signal buffer_writePtr_value : unsigned(7 downto 0);
  signal buffer_writePtr_willOverflowIfInc : std_logic;
  signal buffer_writePtr_willOverflow : std_logic;
  signal buffer_validPtr : unsigned(6 downto 0);
  signal buffer_checksum : unsigned(15 downto 0);
  signal buffer_pushFlag : std_logic;
  signal buffer_flushFlag : std_logic;
  signal buffer_lastWriteData : std_logic_vector(7 downto 0);
  signal buffer_readPtr_willIncrement : std_logic;
  signal buffer_readPtr_willClear : std_logic;
  signal buffer_readPtr_valueNext : unsigned(7 downto 0);
  signal buffer_readPtr_value : unsigned(7 downto 0);
  signal buffer_readPtr_willOverflowIfInc : std_logic;
  signal buffer_readPtr_willOverflow : std_logic;
  signal buffer_readCmd_valid : std_logic;
  signal buffer_readCmd_ready : std_logic;
  signal buffer_readCmd_payload : unsigned(6 downto 0);
  signal zz_2 : std_logic;
  signal zz_3 : std_logic;
  signal zz_4 : std_logic_vector(8 downto 0);
  signal zz_5 : std_logic;
  signal stateMachine_state : SerialCheckerRxState;
  signal stateMachine_overflow : std_logic;
  signal zz_6 : std_logic;
  type buffer_ram_type is array (0 to 127) of std_logic_vector(8 downto 0);
  signal buffer_ram : buffer_ram_type;
begin
  zz_8 <= ((not io_input_payload_isStart) and (not io_input_payload_isEnd));
  zz_9 <= pkg_resize((buffer_writePtr_value - pkg_resize(unsigned(pkg_toStdLogicVector(buffer_flushFlag)),8)),7);
  zz_10 <= pkg_mux(buffer_pushFlag,pkg_resize(io_input_payload_bits,9),pkg_cat(pkg_toStdLogicVector(pkg_toStdLogic(true)),buffer_lastWriteData));
  process(clk)
  begin
    if rising_edge(clk) then
      if zz_1 = '1' then
        buffer_ram(to_integer(zz_9)) <= zz_10;
      end if;
    end if;
  end process;

  process(clk)
  begin
    if rising_edge(clk) then
      if buffer_readCmd_ready = '1' then
        zz_7 <= buffer_ram(to_integer(buffer_readCmd_payload));
      end if;
    end if;
  end process;

  process(buffer_pushFlag,buffer_flushFlag)
  begin
    zz_1 <= pkg_toStdLogic(false);
    if (buffer_pushFlag or buffer_flushFlag) = '1' then
      zz_1 <= pkg_toStdLogic(true);
    end if;
  end process;

  process(buffer_pushFlag)
  begin
    buffer_writePtr_willIncrement <= pkg_toStdLogic(false);
    if buffer_pushFlag = '1' then
      buffer_writePtr_willIncrement <= pkg_toStdLogic(true);
    end if;
  end process;

  buffer_writePtr_willClear <= pkg_toStdLogic(false);
  buffer_writePtr_willOverflowIfInc <= pkg_toStdLogic(buffer_writePtr_value = pkg_unsigned("11111111"));
  buffer_writePtr_willOverflow <= (buffer_writePtr_willOverflowIfInc and buffer_writePtr_willIncrement);
  process(buffer_writePtr_value,buffer_writePtr_willIncrement,buffer_writePtr_willClear,io_input_valid,io_input_payload_isStart,buffer_validPtr)
  begin
    buffer_writePtr_valueNext <= (buffer_writePtr_value + pkg_resize(unsigned(pkg_toStdLogicVector(buffer_writePtr_willIncrement)),8));
    if buffer_writePtr_willClear = '1' then
      buffer_writePtr_valueNext <= pkg_unsigned("00000000");
    end if;
    if io_input_valid = '1' then
      if io_input_payload_isStart = '1' then
        buffer_writePtr_valueNext <= pkg_resize(buffer_validPtr,8);
      end if;
    end if;
  end process;

  process(io_input_valid,zz_8,stateMachine_state,zz_6)
  begin
    buffer_pushFlag <= pkg_toStdLogic(false);
    if io_input_valid = '1' then
      if zz_8 = '1' then
        case stateMachine_state is
          when pkg_enum.eData =>
            if zz_6 = '1' then
              buffer_pushFlag <= pkg_toStdLogic(true);
            end if;
          when others =>
        end case;
      end if;
    end if;
  end process;

  process(io_input_valid,zz_8,stateMachine_state,stateMachine_overflow,io_input_payload_bits,buffer_checksum)
  begin
    buffer_flushFlag <= pkg_toStdLogic(false);
    if io_input_valid = '1' then
      if zz_8 = '1' then
        case stateMachine_state is
          when pkg_enum.eCheck1 =>
            if ((not stateMachine_overflow) and pkg_toStdLogic(io_input_payload_bits = std_logic_vector(pkg_extract(buffer_checksum,15,8)))) = '1' then
              buffer_flushFlag <= pkg_toStdLogic(true);
            end if;
          when others =>
        end case;
      end if;
    end if;
  end process;

  process(buffer_readCmd_valid,buffer_readCmd_ready)
  begin
    buffer_readPtr_willIncrement <= pkg_toStdLogic(false);
    buffer_readPtr_willIncrement <= (buffer_readCmd_valid and buffer_readCmd_ready);
  end process;

  buffer_readPtr_willClear <= pkg_toStdLogic(false);
  buffer_readPtr_willOverflowIfInc <= pkg_toStdLogic(buffer_readPtr_value = pkg_unsigned("11111111"));
  buffer_readPtr_willOverflow <= (buffer_readPtr_willOverflowIfInc and buffer_readPtr_willIncrement);
  process(buffer_readPtr_value,buffer_readPtr_willIncrement,buffer_readPtr_willClear)
  begin
    buffer_readPtr_valueNext <= (buffer_readPtr_value + pkg_resize(unsigned(pkg_toStdLogicVector(buffer_readPtr_willIncrement)),8));
    if buffer_readPtr_willClear = '1' then
      buffer_readPtr_valueNext <= pkg_unsigned("00000000");
    end if;
  end process;

  buffer_readCmd_valid <= pkg_toStdLogic(pkg_resize(buffer_validPtr,8) /= buffer_readPtr_value);
  buffer_readCmd_payload <= pkg_resize(buffer_readPtr_value,7);
  buffer_readCmd_ready <= ((not zz_2) or zz_3);
  zz_2 <= zz_5;
  zz_4 <= zz_7;
  io_output_valid <= zz_2;
  zz_3 <= io_output_ready;
  io_output_payload_last <= pkg_extract(zz_4,8);
  io_output_payload_fragment <= pkg_resize(zz_4,8);
  zz_6 <= (not pkg_toStdLogic(buffer_writePtr_value = (buffer_readPtr_value xor pkg_unsigned("10000000"))));
  process(clk, reset)
  begin
    if reset = '1' then
      buffer_writePtr_value <= pkg_unsigned("00000000");
      buffer_validPtr <= pkg_unsigned("0000000");
      buffer_readPtr_value <= pkg_unsigned("00000000");
      zz_5 <= pkg_toStdLogic(false);
      stateMachine_state <= pkg_enum.eIdle;
    elsif rising_edge(clk) then
      buffer_writePtr_value <= buffer_writePtr_valueNext;
      if buffer_flushFlag = '1' then
        buffer_validPtr <= pkg_resize(buffer_writePtr_value,7);
      end if;
      buffer_readPtr_value <= buffer_readPtr_valueNext;
      if zz_3 = '1' then
        zz_5 <= pkg_toStdLogic(false);
      end if;
      if buffer_readCmd_ready = '1' then
        zz_5 <= buffer_readCmd_valid;
      end if;
      if io_input_valid = '1' then
        if zz_8 = '1' then
          case stateMachine_state is
            when pkg_enum.eCheck0 =>
              if pkg_toStdLogic(io_input_payload_bits = std_logic_vector(pkg_extract(buffer_checksum,7,0))) = '1' then
                stateMachine_state <= pkg_enum.eCheck1;
              else
                stateMachine_state <= pkg_enum.eIdle;
              end if;
            when pkg_enum.eCheck1 =>
              stateMachine_state <= pkg_enum.eIdle;
            when others =>
          end case;
        end if;
        if io_input_payload_isStart = '1' then
          stateMachine_state <= pkg_enum.eData;
        end if;
        if io_input_payload_isEnd = '1' then
          stateMachine_state <= pkg_enum.eCheck0;
        end if;
      end if;
    end if;
  end process;

  process(clk)
  begin
    if rising_edge(clk) then
      if buffer_pushFlag = '1' then
        buffer_lastWriteData <= pkg_extract(io_input_payload_bits,7,0);
      end if;
      if buffer_pushFlag = '1' then
        buffer_checksum <= (buffer_checksum + pkg_resize(unsigned(io_input_payload_bits),16));
      end if;
      if io_input_valid = '1' then
        if zz_8 = '1' then
          case stateMachine_state is
            when pkg_enum.eData =>
              stateMachine_overflow <= (stateMachine_overflow or (not zz_6));
            when others =>
          end case;
        end if;
        if io_input_payload_isStart = '1' then
          stateMachine_overflow <= pkg_toStdLogic(false);
          buffer_checksum <= pkg_unsigned("0000000000000000");
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


entity SerialLinkRx is
  port(
    io_input_valid : in std_logic;
    io_input_ready : out std_logic;
    io_input_payload_last : in std_logic;
    io_input_payload_fragment : in std_logic_vector(7 downto 0);
    io_output_valid : out std_logic;
    io_output_ready : in std_logic;
    io_output_payload : out std_logic_vector(7 downto 0);
    io_rxToTx_close : out std_logic;
    io_rxToTx_open : out std_logic;
    io_rxToTx_miss : out std_logic;
    io_rxToTx_rxPtr : out unsigned(15 downto 0);
    io_rxToTx_otherRxPtr_valid : out std_logic;
    io_rxToTx_otherRxPtr_payload : out unsigned(15 downto 0);
    clk : in std_logic;
    reset : in std_logic
  );
end SerialLinkRx;

architecture arch of SerialLinkRx is
  signal zz_1 : std_logic;
  signal zz_2 : std_logic;
  signal zz_3 : std_logic;
  signal zz_4 : std_logic;

  signal softReset : std_logic;
  signal state : SerialLinkRxState;
  signal rxPtr : unsigned(15 downto 0);
  signal keepData : std_logic;
  signal dataOld : std_logic_vector(7 downto 0);
begin
  io_output_valid <= zz_1;
  io_input_ready <= zz_2;
  zz_3 <= pkg_toStdLogic(pkg_extract(rxPtr,7,0) /= unsigned(io_input_payload_fragment));
  zz_4 <= pkg_toStdLogic(pkg_extract(rxPtr,15,8) /= unsigned(io_input_payload_fragment));
  process(io_input_valid,state,io_input_payload_fragment)
  begin
    io_rxToTx_close <= pkg_toStdLogic(false);
    if io_input_valid = '1' then
      case state is
        when pkg_enum.eType =>
          case io_input_payload_fragment is
            when "00000010" =>
              io_rxToTx_close <= pkg_toStdLogic(true);
            when others =>
          end case;
        when pkg_enum.eOtherPtr0 =>
        when pkg_enum.eOtherPtr1 =>
        when pkg_enum.eMessagePtr0 =>
        when pkg_enum.eMessagePtr1 =>
        when others =>
      end case;
    end if;
  end process;

  process(io_input_valid,state,io_input_payload_fragment)
  begin
    io_rxToTx_open <= pkg_toStdLogic(false);
    if io_input_valid = '1' then
      case state is
        when pkg_enum.eType =>
          case io_input_payload_fragment is
            when "00000011" =>
              io_rxToTx_open <= pkg_toStdLogic(true);
            when others =>
          end case;
        when pkg_enum.eOtherPtr0 =>
        when pkg_enum.eOtherPtr1 =>
        when pkg_enum.eMessagePtr0 =>
        when pkg_enum.eMessagePtr1 =>
        when others =>
      end case;
    end if;
  end process;

  process(io_input_valid,state,zz_3,zz_4,keepData)
  begin
    io_rxToTx_miss <= pkg_toStdLogic(false);
    if io_input_valid = '1' then
      case state is
        when pkg_enum.eType =>
        when pkg_enum.eOtherPtr0 =>
        when pkg_enum.eOtherPtr1 =>
        when pkg_enum.eMessagePtr0 =>
          if zz_3 = '1' then
            io_rxToTx_miss <= pkg_toStdLogic(true);
          end if;
        when pkg_enum.eMessagePtr1 =>
          if zz_4 = '1' then
            io_rxToTx_miss <= keepData;
          end if;
        when others =>
      end case;
    end if;
  end process;

  process(io_input_valid,state,io_input_payload_fragment)
  begin
    io_rxToTx_otherRxPtr_valid <= pkg_toStdLogic(false);
    if io_input_valid = '1' then
      case state is
        when pkg_enum.eType =>
          case io_input_payload_fragment is
            when "00000011" =>
              io_rxToTx_otherRxPtr_valid <= pkg_toStdLogic(true);
            when others =>
          end case;
        when pkg_enum.eOtherPtr0 =>
        when pkg_enum.eOtherPtr1 =>
          io_rxToTx_otherRxPtr_valid <= pkg_toStdLogic(true);
        when pkg_enum.eMessagePtr0 =>
        when pkg_enum.eMessagePtr1 =>
        when others =>
      end case;
    end if;
  end process;

  process(io_input_valid,state,io_input_payload_fragment,dataOld)
  begin
    io_rxToTx_otherRxPtr_payload <= pkg_unsigned("0000000000000000");
    if io_input_valid = '1' then
      case state is
        when pkg_enum.eType =>
          case io_input_payload_fragment is
            when "00000011" =>
              io_rxToTx_otherRxPtr_payload <= pkg_unsigned("0000000000000000");
            when others =>
          end case;
        when pkg_enum.eOtherPtr0 =>
        when pkg_enum.eOtherPtr1 =>
          io_rxToTx_otherRxPtr_payload <= unsigned(pkg_cat(io_input_payload_fragment,dataOld));
        when pkg_enum.eMessagePtr0 =>
        when pkg_enum.eMessagePtr1 =>
        when others =>
      end case;
    end if;
  end process;

  process(io_input_valid,state,keepData)
  begin
    zz_1 <= pkg_toStdLogic(false);
    if io_input_valid = '1' then
      case state is
        when pkg_enum.eType =>
        when pkg_enum.eOtherPtr0 =>
        when pkg_enum.eOtherPtr1 =>
        when pkg_enum.eMessagePtr0 =>
        when pkg_enum.eMessagePtr1 =>
        when others =>
          zz_1 <= (io_input_valid and keepData);
      end case;
    end if;
  end process;

  io_output_payload <= io_input_payload_fragment;
  process(io_input_valid,state,io_output_ready)
  begin
    zz_2 <= pkg_toStdLogic(false);
    if io_input_valid = '1' then
      case state is
        when pkg_enum.eType =>
          zz_2 <= pkg_toStdLogic(true);
        when pkg_enum.eOtherPtr0 =>
          zz_2 <= pkg_toStdLogic(true);
        when pkg_enum.eOtherPtr1 =>
          zz_2 <= pkg_toStdLogic(true);
        when pkg_enum.eMessagePtr0 =>
          zz_2 <= pkg_toStdLogic(true);
        when pkg_enum.eMessagePtr1 =>
          zz_2 <= pkg_toStdLogic(true);
        when others =>
          zz_2 <= io_output_ready;
      end case;
    end if;
  end process;

  io_rxToTx_rxPtr <= rxPtr;
  process(clk, reset)
  begin
    if reset = '1' then
      softReset <= pkg_toStdLogic(true);
      state <= pkg_enum.eType;
      keepData <= pkg_toStdLogic(false);
    elsif rising_edge(clk) then
      if io_input_valid = '1' then
        case state is
          when pkg_enum.eType =>
            case io_input_payload_fragment is
              when "00000010" =>
                softReset <= pkg_toStdLogic(true);
              when "00000011" =>
                softReset <= pkg_toStdLogic(false);
              when "00000001" =>
                state <= pkg_enum.eOtherPtr0;
                keepData <= pkg_toStdLogic(true);
              when others =>
            end case;
          when pkg_enum.eOtherPtr0 =>
            state <= pkg_enum.eOtherPtr1;
          when pkg_enum.eOtherPtr1 =>
            state <= pkg_enum.eMessagePtr0;
          when pkg_enum.eMessagePtr0 =>
            if zz_3 = '1' then
              keepData <= pkg_toStdLogic(false);
            end if;
            state <= pkg_enum.eMessagePtr1;
          when pkg_enum.eMessagePtr1 =>
            if zz_4 = '1' then
              keepData <= pkg_toStdLogic(false);
            end if;
            state <= pkg_enum.eData;
          when others =>
        end case;
      end if;
      if ((io_input_valid and io_input_payload_last) and zz_2) = '1' then
        state <= pkg_enum.eType;
      end if;
    end if;
  end process;

  process(clk)
  begin
    if rising_edge(clk) then
      if io_input_valid = '1' then
        dataOld <= io_input_payload_fragment;
      end if;
      if io_input_valid = '1' then
        case state is
          when pkg_enum.eType =>
            case io_input_payload_fragment is
              when "00000011" =>
                rxPtr <= pkg_unsigned("0000000000000000");
              when others =>
            end case;
          when pkg_enum.eOtherPtr0 =>
          when pkg_enum.eOtherPtr1 =>
          when pkg_enum.eMessagePtr0 =>
          when pkg_enum.eMessagePtr1 =>
          when others =>
        end case;
      end if;
      if (zz_1 and io_output_ready) = '1' then
        rxPtr <= (rxPtr + pkg_unsigned("0000000000000001"));
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


entity SerialLinkTx is
  port(
    io_input_valid : in std_logic;
    io_input_ready : out std_logic;
    io_input_payload : in std_logic_vector(7 downto 0);
    io_output_valid : out std_logic;
    io_output_ready : in std_logic;
    io_output_payload_last : out std_logic;
    io_output_payload_fragment : out std_logic_vector(7 downto 0);
    io_rxToTx_close : in std_logic;
    io_rxToTx_open : in std_logic;
    io_rxToTx_miss : in std_logic;
    io_rxToTx_rxPtr : in unsigned(15 downto 0);
    io_rxToTx_otherRxPtr_valid : in std_logic;
    io_rxToTx_otherRxPtr_payload : in unsigned(15 downto 0);
    clk : in std_logic;
    reset : in std_logic
  );
end SerialLinkTx;

architecture arch of SerialLinkTx is
  signal zz_3 : std_logic_vector(7 downto 0);
  signal zz_4 : std_logic;
  signal zz_5 : std_logic;
  signal zz_6 : std_logic;
  signal zz_7 : std_logic;
  signal zz_8 : std_logic;
  signal zz_9 : std_logic;
  signal zz_10 : std_logic;
  signal zz_11 : std_logic;
  signal zz_12 : unsigned(6 downto 0);
  signal zz_13 : unsigned(6 downto 0);

  signal zz_1 : std_logic;
  signal resendTimeout_state : std_logic;
  signal resendTimeout_stateRise : std_logic;
  signal resendTimeout_counter_willIncrement : std_logic;
  signal resendTimeout_counter_willClear : std_logic;
  signal resendTimeout_counter_valueNext : unsigned(9 downto 0);
  signal resendTimeout_counter_value : unsigned(9 downto 0);
  signal resendTimeout_counter_willOverflowIfInc : std_logic;
  signal resendTimeout_counter_willOverflow : std_logic;
  signal aliveTimeout_state : std_logic;
  signal aliveTimeout_stateRise : std_logic;
  signal aliveTimeout_counter_willIncrement : std_logic;
  signal aliveTimeout_counter_willClear : std_logic;
  signal aliveTimeout_counter_valueNext : unsigned(9 downto 0);
  signal aliveTimeout_counter_value : unsigned(9 downto 0);
  signal aliveTimeout_counter_willOverflowIfInc : std_logic;
  signal aliveTimeout_counter_willOverflow : std_logic;
  signal buffer_writePtr_willIncrement : std_logic;
  signal buffer_writePtr_willClear : std_logic;
  signal buffer_writePtr_valueNext : unsigned(16 downto 0);
  signal buffer_writePtr_value : unsigned(16 downto 0);
  signal buffer_writePtr_willOverflowIfInc : std_logic;
  signal buffer_writePtr_willOverflow : std_logic;
  signal buffer_readPtr_willIncrement : std_logic;
  signal buffer_readPtr_willClear : std_logic;
  signal buffer_readPtr_valueNext : unsigned(16 downto 0);
  signal buffer_readPtr_value : unsigned(16 downto 0);
  signal buffer_readPtr_willOverflowIfInc : std_logic;
  signal buffer_readPtr_willOverflow : std_logic;
  signal buffer_syncPtr : unsigned(16 downto 0);
  signal buffer_empty : std_logic;
  signal buffer_full : std_logic;
  signal buffer_readFlag : std_logic;
  signal zz_2 : unsigned(16 downto 0);
  signal buffer_readPort : std_logic_vector(7 downto 0);
  signal sendClosingNotification : std_logic;
  signal sendOpeningNotification : std_logic;
  signal statemachine_state : SerialLinkTxState;
  signal statemachine_dataBuffer : std_logic_vector(7 downto 0);
  signal statemachine_txDataLeft : unsigned(5 downto 0);
  signal statemachine_txDataLeftIsZero : std_logic;
  signal statemachine_isLastData : std_logic;
  signal statemachine_isOpen : std_logic;
  type buffer_ram_type is array (0 to 127) of std_logic_vector(7 downto 0);
  signal buffer_ram : buffer_ram_type;
begin
  io_input_ready <= zz_4;
  zz_5 <= (io_input_valid and zz_4);
  zz_6 <= pkg_toStdLogic(buffer_syncPtr = buffer_writePtr_value);
  zz_7 <= pkg_toStdLogic(buffer_syncPtr /= pkg_resize(io_rxToTx_otherRxPtr_payload,17));
  zz_8 <= (((not statemachine_txDataLeftIsZero) and (not buffer_empty)) and (not statemachine_isLastData));
  zz_9 <= (not statemachine_isOpen);
  zz_10 <= (buffer_empty or statemachine_txDataLeftIsZero);
  zz_11 <= (statemachine_isOpen and ((not buffer_empty) or aliveTimeout_state));
  zz_12 <= pkg_resize(buffer_writePtr_value,7);
  zz_13 <= pkg_resize(zz_2,7);
  process(clk)
  begin
    if rising_edge(clk) then
      if zz_1 = '1' then
        buffer_ram(to_integer(zz_12)) <= io_input_payload;
      end if;
    end if;
  end process;

  process(clk)
  begin
    if rising_edge(clk) then
      if buffer_readFlag = '1' then
        zz_3 <= buffer_ram(to_integer(zz_13));
      end if;
    end if;
  end process;

  process(zz_5)
  begin
    zz_1 <= pkg_toStdLogic(false);
    if zz_5 = '1' then
      zz_1 <= pkg_toStdLogic(true);
    end if;
  end process;

  process(resendTimeout_counter_willOverflow,resendTimeout_state,zz_6,io_rxToTx_otherRxPtr_valid,zz_7,statemachine_state,zz_8,io_output_ready)
  begin
    resendTimeout_stateRise <= pkg_toStdLogic(false);
    if resendTimeout_counter_willOverflow = '1' then
      resendTimeout_stateRise <= (not resendTimeout_state);
    end if;
    if zz_6 = '1' then
      resendTimeout_stateRise <= pkg_toStdLogic(false);
    end if;
    if io_rxToTx_otherRxPtr_valid = '1' then
      if zz_7 = '1' then
        resendTimeout_stateRise <= pkg_toStdLogic(false);
      end if;
    end if;
    case statemachine_state is
      when pkg_enum.eNewFrame =>
        if resendTimeout_state = '1' then
          resendTimeout_stateRise <= pkg_toStdLogic(false);
        end if;
      when pkg_enum.eMyPtr0 =>
      when pkg_enum.eMyPtr1 =>
      when pkg_enum.eMessagePtr0 =>
      when pkg_enum.eMessagePtr1 =>
      when others =>
        if zz_8 = '0' then
          if io_output_ready = '1' then
            resendTimeout_stateRise <= pkg_toStdLogic(false);
          end if;
        end if;
    end case;
  end process;

  process(zz_6,io_rxToTx_otherRxPtr_valid,zz_7,statemachine_state,resendTimeout_state,zz_8,io_output_ready)
  begin
    resendTimeout_counter_willClear <= pkg_toStdLogic(false);
    if zz_6 = '1' then
      resendTimeout_counter_willClear <= pkg_toStdLogic(true);
    end if;
    if io_rxToTx_otherRxPtr_valid = '1' then
      if zz_7 = '1' then
        resendTimeout_counter_willClear <= pkg_toStdLogic(true);
      end if;
    end if;
    case statemachine_state is
      when pkg_enum.eNewFrame =>
        if resendTimeout_state = '1' then
          resendTimeout_counter_willClear <= pkg_toStdLogic(true);
        end if;
      when pkg_enum.eMyPtr0 =>
      when pkg_enum.eMyPtr1 =>
      when pkg_enum.eMessagePtr0 =>
      when pkg_enum.eMessagePtr1 =>
      when others =>
        if zz_8 = '0' then
          if io_output_ready = '1' then
            resendTimeout_counter_willClear <= pkg_toStdLogic(true);
          end if;
        end if;
    end case;
  end process;

  resendTimeout_counter_willOverflowIfInc <= pkg_toStdLogic(resendTimeout_counter_value = pkg_unsigned("1111100111"));
  resendTimeout_counter_willOverflow <= (resendTimeout_counter_willOverflowIfInc and resendTimeout_counter_willIncrement);
  process(resendTimeout_counter_willOverflow,resendTimeout_counter_value,resendTimeout_counter_willIncrement,resendTimeout_counter_willClear)
  begin
    if resendTimeout_counter_willOverflow = '1' then
      resendTimeout_counter_valueNext <= pkg_unsigned("0000000000");
    else
      resendTimeout_counter_valueNext <= (resendTimeout_counter_value + pkg_resize(unsigned(pkg_toStdLogicVector(resendTimeout_counter_willIncrement)),10));
    end if;
    if resendTimeout_counter_willClear = '1' then
      resendTimeout_counter_valueNext <= pkg_unsigned("0000000000");
    end if;
  end process;

  resendTimeout_counter_willIncrement <= pkg_toStdLogic(true);
  process(aliveTimeout_counter_willOverflow,aliveTimeout_state,statemachine_state,zz_8,io_output_ready)
  begin
    aliveTimeout_stateRise <= pkg_toStdLogic(false);
    if aliveTimeout_counter_willOverflow = '1' then
      aliveTimeout_stateRise <= (not aliveTimeout_state);
    end if;
    case statemachine_state is
      when pkg_enum.eNewFrame =>
      when pkg_enum.eMyPtr0 =>
      when pkg_enum.eMyPtr1 =>
      when pkg_enum.eMessagePtr0 =>
      when pkg_enum.eMessagePtr1 =>
      when others =>
        if zz_8 = '0' then
          if io_output_ready = '1' then
            aliveTimeout_stateRise <= pkg_toStdLogic(false);
          end if;
        end if;
    end case;
  end process;

  process(statemachine_state,zz_8,io_output_ready)
  begin
    aliveTimeout_counter_willClear <= pkg_toStdLogic(false);
    case statemachine_state is
      when pkg_enum.eNewFrame =>
      when pkg_enum.eMyPtr0 =>
      when pkg_enum.eMyPtr1 =>
      when pkg_enum.eMessagePtr0 =>
      when pkg_enum.eMessagePtr1 =>
      when others =>
        if zz_8 = '0' then
          if io_output_ready = '1' then
            aliveTimeout_counter_willClear <= pkg_toStdLogic(true);
          end if;
        end if;
    end case;
  end process;

  aliveTimeout_counter_willOverflowIfInc <= pkg_toStdLogic(aliveTimeout_counter_value = pkg_unsigned("1111100111"));
  aliveTimeout_counter_willOverflow <= (aliveTimeout_counter_willOverflowIfInc and aliveTimeout_counter_willIncrement);
  process(aliveTimeout_counter_willOverflow,aliveTimeout_counter_value,aliveTimeout_counter_willIncrement,aliveTimeout_counter_willClear)
  begin
    if aliveTimeout_counter_willOverflow = '1' then
      aliveTimeout_counter_valueNext <= pkg_unsigned("0000000000");
    else
      aliveTimeout_counter_valueNext <= (aliveTimeout_counter_value + pkg_resize(unsigned(pkg_toStdLogicVector(aliveTimeout_counter_willIncrement)),10));
    end if;
    if aliveTimeout_counter_willClear = '1' then
      aliveTimeout_counter_valueNext <= pkg_unsigned("0000000000");
    end if;
  end process;

  aliveTimeout_counter_willIncrement <= pkg_toStdLogic(true);
  process(zz_5)
  begin
    buffer_writePtr_willIncrement <= pkg_toStdLogic(false);
    if zz_5 = '1' then
      buffer_writePtr_willIncrement <= pkg_toStdLogic(true);
    end if;
  end process;

  buffer_writePtr_willClear <= pkg_toStdLogic(false);
  buffer_writePtr_willOverflowIfInc <= pkg_toStdLogic(buffer_writePtr_value = pkg_unsigned("11111111111111111"));
  buffer_writePtr_willOverflow <= (buffer_writePtr_willOverflowIfInc and buffer_writePtr_willIncrement);
  process(buffer_writePtr_value,buffer_writePtr_willIncrement,buffer_writePtr_willClear,zz_9)
  begin
    buffer_writePtr_valueNext <= (buffer_writePtr_value + pkg_resize(unsigned(pkg_toStdLogicVector(buffer_writePtr_willIncrement)),17));
    if buffer_writePtr_willClear = '1' then
      buffer_writePtr_valueNext <= pkg_unsigned("00000000000000000");
    end if;
    if zz_9 = '1' then
      buffer_writePtr_valueNext <= pkg_unsigned("00000000000000000");
    end if;
  end process;

  process(buffer_readFlag)
  begin
    buffer_readPtr_willIncrement <= pkg_toStdLogic(false);
    buffer_readPtr_willIncrement <= buffer_readFlag;
  end process;

  buffer_readPtr_willClear <= pkg_toStdLogic(false);
  buffer_readPtr_willOverflowIfInc <= pkg_toStdLogic(buffer_readPtr_value = pkg_unsigned("11111111111111111"));
  buffer_readPtr_willOverflow <= (buffer_readPtr_willOverflowIfInc and buffer_readPtr_willIncrement);
  process(buffer_readPtr_value,buffer_readPtr_willIncrement,buffer_readPtr_willClear,zz_9,statemachine_state,resendTimeout_state,buffer_syncPtr)
  begin
    buffer_readPtr_valueNext <= (buffer_readPtr_value + pkg_resize(unsigned(pkg_toStdLogicVector(buffer_readPtr_willIncrement)),17));
    if buffer_readPtr_willClear = '1' then
      buffer_readPtr_valueNext <= pkg_unsigned("00000000000000000");
    end if;
    if zz_9 = '1' then
      buffer_readPtr_valueNext <= pkg_unsigned("00000000000000000");
    end if;
    case statemachine_state is
      when pkg_enum.eNewFrame =>
        if resendTimeout_state = '1' then
          buffer_readPtr_valueNext <= buffer_syncPtr;
        end if;
      when pkg_enum.eMyPtr0 =>
      when pkg_enum.eMyPtr1 =>
      when pkg_enum.eMessagePtr0 =>
      when pkg_enum.eMessagePtr1 =>
      when others =>
    end case;
  end process;

  buffer_empty <= pkg_toStdLogic(pkg_extract(buffer_writePtr_value,7,0) = pkg_extract(buffer_readPtr_value,7,0));
  buffer_full <= pkg_toStdLogic(pkg_extract(buffer_writePtr_value,7,0) = (pkg_extract(buffer_readPtr_value,7,0) xor pkg_unsigned("10000000")));
  zz_4 <= (not buffer_full);
  process(statemachine_state,zz_10,io_output_ready,zz_8)
  begin
    buffer_readFlag <= pkg_toStdLogic(false);
    case statemachine_state is
      when pkg_enum.eNewFrame =>
      when pkg_enum.eMyPtr0 =>
      when pkg_enum.eMyPtr1 =>
      when pkg_enum.eMessagePtr0 =>
      when pkg_enum.eMessagePtr1 =>
        if zz_10 = '0' then
          if io_output_ready = '1' then
            buffer_readFlag <= pkg_toStdLogic(true);
          end if;
        end if;
      when others =>
        if zz_8 = '1' then
          buffer_readFlag <= io_output_ready;
        end if;
    end case;
  end process;

  zz_2 <= buffer_readPtr_value;
  buffer_readPort <= zz_3;
  statemachine_txDataLeftIsZero <= pkg_toStdLogic(statemachine_txDataLeft = pkg_unsigned("000000"));
  process(statemachine_state,resendTimeout_state,sendClosingNotification,sendOpeningNotification,zz_11)
  begin
    io_output_valid <= pkg_toStdLogic(false);
    case statemachine_state is
      when pkg_enum.eNewFrame =>
        if resendTimeout_state = '0' then
          if sendClosingNotification = '1' then
            io_output_valid <= pkg_toStdLogic(true);
          else
            if sendOpeningNotification = '1' then
              io_output_valid <= pkg_toStdLogic(true);
            else
              if zz_11 = '1' then
                io_output_valid <= pkg_toStdLogic(true);
              end if;
            end if;
          end if;
        end if;
      when pkg_enum.eMyPtr0 =>
        io_output_valid <= pkg_toStdLogic(true);
      when pkg_enum.eMyPtr1 =>
        io_output_valid <= pkg_toStdLogic(true);
      when pkg_enum.eMessagePtr0 =>
        io_output_valid <= pkg_toStdLogic(true);
      when pkg_enum.eMessagePtr1 =>
        io_output_valid <= pkg_toStdLogic(true);
      when others =>
        io_output_valid <= pkg_toStdLogic(true);
    end case;
  end process;

  process(statemachine_state,resendTimeout_state,sendClosingNotification,sendOpeningNotification,buffer_empty,zz_10,zz_8)
  begin
    io_output_payload_last <= pkg_toStdLogic(false);
    case statemachine_state is
      when pkg_enum.eNewFrame =>
        if resendTimeout_state = '0' then
          if sendClosingNotification = '1' then
            io_output_payload_last <= pkg_toStdLogic(true);
          else
            if sendOpeningNotification = '1' then
              io_output_payload_last <= pkg_toStdLogic(true);
            end if;
          end if;
        end if;
      when pkg_enum.eMyPtr0 =>
      when pkg_enum.eMyPtr1 =>
        if buffer_empty = '1' then
          io_output_payload_last <= pkg_toStdLogic(true);
        end if;
      when pkg_enum.eMessagePtr0 =>
      when pkg_enum.eMessagePtr1 =>
        if zz_10 = '1' then
          io_output_payload_last <= pkg_toStdLogic(true);
        end if;
      when others =>
        if zz_8 = '0' then
          io_output_payload_last <= pkg_toStdLogic(true);
        end if;
    end case;
  end process;

  process(buffer_readPort,statemachine_state,resendTimeout_state,sendClosingNotification,sendOpeningNotification,zz_11,io_rxToTx_rxPtr,statemachine_dataBuffer,buffer_readPtr_value,zz_8)
  begin
    io_output_payload_fragment <= buffer_readPort;
    case statemachine_state is
      when pkg_enum.eNewFrame =>
        if resendTimeout_state = '0' then
          if sendClosingNotification = '1' then
            io_output_payload_fragment <= pkg_stdLogicVector("00000100");
          else
            if sendOpeningNotification = '1' then
              io_output_payload_fragment <= pkg_stdLogicVector("00000101");
            else
              if zz_11 = '1' then
                io_output_payload_fragment <= pkg_stdLogicVector("00000001");
              end if;
            end if;
          end if;
        end if;
      when pkg_enum.eMyPtr0 =>
        io_output_payload_fragment <= std_logic_vector(pkg_extract(io_rxToTx_rxPtr,7,0));
      when pkg_enum.eMyPtr1 =>
        io_output_payload_fragment <= statemachine_dataBuffer;
      when pkg_enum.eMessagePtr0 =>
        io_output_payload_fragment <= std_logic_vector(pkg_extract(buffer_readPtr_value,7,0));
      when pkg_enum.eMessagePtr1 =>
        io_output_payload_fragment <= std_logic_vector(pkg_extract(buffer_readPtr_value,15,8));
      when others =>
        if zz_8 = '0' then
          io_output_payload_fragment <= buffer_readPort;
        end if;
    end case;
  end process;

  process(clk, reset)
  begin
    if reset = '1' then
      resendTimeout_state <= pkg_toStdLogic(false);
      resendTimeout_counter_value <= pkg_unsigned("0000000000");
      aliveTimeout_state <= pkg_toStdLogic(false);
      aliveTimeout_counter_value <= pkg_unsigned("0000000000");
      buffer_writePtr_value <= pkg_unsigned("00000000000000000");
      buffer_readPtr_value <= pkg_unsigned("00000000000000000");
      sendClosingNotification <= pkg_toStdLogic(true);
      sendOpeningNotification <= pkg_toStdLogic(false);
      statemachine_state <= pkg_enum.eNewFrame;
      statemachine_isOpen <= pkg_toStdLogic(false);
    elsif rising_edge(clk) then
      resendTimeout_counter_value <= resendTimeout_counter_valueNext;
      if resendTimeout_counter_willOverflow = '1' then
        resendTimeout_state <= pkg_toStdLogic(true);
      end if;
      aliveTimeout_counter_value <= aliveTimeout_counter_valueNext;
      if aliveTimeout_counter_willOverflow = '1' then
        aliveTimeout_state <= pkg_toStdLogic(true);
      end if;
      buffer_writePtr_value <= buffer_writePtr_valueNext;
      buffer_readPtr_value <= buffer_readPtr_valueNext;
      if zz_6 = '1' then
        resendTimeout_state <= pkg_toStdLogic(false);
      end if;
      if io_rxToTx_otherRxPtr_valid = '1' then
        if zz_7 = '1' then
          resendTimeout_state <= pkg_toStdLogic(false);
        end if;
      end if;
      sendClosingNotification <= (io_rxToTx_close or io_rxToTx_close);
      sendOpeningNotification <= (io_rxToTx_open or io_rxToTx_open);
      case statemachine_state is
        when pkg_enum.eNewFrame =>
          if resendTimeout_state = '1' then
            resendTimeout_state <= pkg_toStdLogic(false);
          else
            if sendClosingNotification = '1' then
              statemachine_isOpen <= pkg_toStdLogic(false);
              if io_output_ready = '1' then
                sendClosingNotification <= pkg_toStdLogic(false);
              end if;
            else
              if sendOpeningNotification = '1' then
                statemachine_isOpen <= pkg_toStdLogic(true);
                if io_output_ready = '1' then
                  sendOpeningNotification <= pkg_toStdLogic(false);
                end if;
              else
                if zz_11 = '1' then
                  if io_output_ready = '1' then
                    statemachine_state <= pkg_enum.eMyPtr0;
                  end if;
                end if;
              end if;
            end if;
          end if;
        when pkg_enum.eMyPtr0 =>
          if io_output_ready = '1' then
            statemachine_state <= pkg_enum.eMyPtr1;
          end if;
        when pkg_enum.eMyPtr1 =>
          if buffer_empty = '1' then
            if io_output_ready = '1' then
              statemachine_state <= pkg_enum.eNewFrame;
            end if;
          else
            if io_output_ready = '1' then
              statemachine_state <= pkg_enum.eMessagePtr0;
            end if;
          end if;
        when pkg_enum.eMessagePtr0 =>
          if io_output_ready = '1' then
            statemachine_state <= pkg_enum.eMessagePtr1;
          end if;
        when pkg_enum.eMessagePtr1 =>
          if zz_10 = '1' then
            if io_output_ready = '1' then
              statemachine_state <= pkg_enum.eNewFrame;
            end if;
          else
            if io_output_ready = '1' then
              statemachine_state <= pkg_enum.eData;
            end if;
          end if;
        when others =>
          if zz_8 = '0' then
            if io_output_ready = '1' then
              statemachine_state <= pkg_enum.eNewFrame;
              resendTimeout_state <= pkg_toStdLogic(false);
              aliveTimeout_state <= pkg_toStdLogic(false);
            end if;
          end if;
      end case;
    end if;
  end process;

  process(clk)
  begin
    if rising_edge(clk) then
      if io_rxToTx_otherRxPtr_valid = '1' then
        buffer_syncPtr <= pkg_resize(io_rxToTx_otherRxPtr_payload,17);
      end if;
      if zz_9 = '1' then
        buffer_syncPtr <= pkg_unsigned("00000000000000000");
      end if;
      if buffer_readFlag = '1' then
        statemachine_txDataLeft <= (statemachine_txDataLeft - pkg_unsigned("000001"));
      end if;
      case statemachine_state is
        when pkg_enum.eNewFrame =>
          if resendTimeout_state = '0' then
            if sendClosingNotification = '0' then
              if sendOpeningNotification = '0' then
                if zz_11 = '1' then
                  if io_output_ready = '1' then
                    statemachine_txDataLeft <= pkg_mux(pkg_toStdLogic(pkg_unsigned("00000000000100000") < (pkg_unsigned("00000000000100000") - (buffer_readPtr_value - buffer_syncPtr))),pkg_unsigned("100000"),pkg_unsigned("100000"));
                  end if;
                end if;
              end if;
            end if;
          end if;
        when pkg_enum.eMyPtr0 =>
          statemachine_dataBuffer <= std_logic_vector(pkg_extract(io_rxToTx_rxPtr,15,8));
        when pkg_enum.eMyPtr1 =>
        when pkg_enum.eMessagePtr0 =>
        when pkg_enum.eMessagePtr1 =>
          statemachine_isLastData <= pkg_toStdLogic(false);
        when others =>
          if zz_8 = '0' then
            statemachine_isLastData <= pkg_toStdLogic(true);
          end if;
      end case;
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


entity SerialCheckerTx is
  port(
    io_input_valid : in std_logic;
    io_input_ready : out std_logic;
    io_input_payload_last : in std_logic;
    io_input_payload_fragment : in std_logic_vector(7 downto 0);
    io_output_valid : out std_logic;
    io_output_ready : in std_logic;
    io_output_payload_bits : out std_logic_vector(7 downto 0);
    io_output_payload_isStart : out std_logic;
    io_output_payload_isEnd : out std_logic;
    clk : in std_logic;
    reset : in std_logic
  );
end SerialCheckerTx;

architecture arch of SerialCheckerTx is
  signal zz_1 : std_logic;
  signal zz_2 : std_logic;

  signal stateMachine_state : SerialCheckerTxState;
  signal stateMachine_lookingForJob : std_logic;
  signal stateMachine_checksum : unsigned(15 downto 0);
begin
  io_output_valid <= zz_1;
  zz_2 <= (zz_1 and io_output_ready);
  process(stateMachine_state,io_input_valid)
  begin
    zz_1 <= pkg_toStdLogic(false);
    case stateMachine_state is
      when pkg_enum.eStart =>
        if io_input_valid = '1' then
          zz_1 <= pkg_toStdLogic(true);
        end if;
      when pkg_enum.eData =>
        zz_1 <= io_input_valid;
      when pkg_enum.eEnd =>
        zz_1 <= pkg_toStdLogic(true);
      when pkg_enum.eCheck0 =>
        zz_1 <= pkg_toStdLogic(true);
      when others =>
        zz_1 <= pkg_toStdLogic(true);
    end case;
  end process;

  process(io_input_payload_fragment,stateMachine_state,stateMachine_checksum)
  begin
    io_output_payload_bits <= io_input_payload_fragment;
    case stateMachine_state is
      when pkg_enum.eStart =>
      when pkg_enum.eData =>
        io_output_payload_bits <= io_input_payload_fragment;
      when pkg_enum.eEnd =>
      when pkg_enum.eCheck0 =>
        io_output_payload_bits <= std_logic_vector(pkg_extract(stateMachine_checksum,7,0));
      when others =>
        io_output_payload_bits <= std_logic_vector(pkg_extract(stateMachine_checksum,15,8));
    end case;
  end process;

  process(stateMachine_state,io_input_valid)
  begin
    io_output_payload_isStart <= pkg_toStdLogic(false);
    case stateMachine_state is
      when pkg_enum.eStart =>
        if io_input_valid = '1' then
          io_output_payload_isStart <= pkg_toStdLogic(true);
        end if;
      when pkg_enum.eData =>
      when pkg_enum.eEnd =>
      when pkg_enum.eCheck0 =>
      when others =>
    end case;
  end process;

  process(stateMachine_state)
  begin
    io_output_payload_isEnd <= pkg_toStdLogic(false);
    case stateMachine_state is
      when pkg_enum.eStart =>
      when pkg_enum.eData =>
      when pkg_enum.eEnd =>
        io_output_payload_isEnd <= pkg_toStdLogic(true);
      when pkg_enum.eCheck0 =>
      when others =>
    end case;
  end process;

  process(stateMachine_state,io_output_ready)
  begin
    io_input_ready <= pkg_toStdLogic(false);
    case stateMachine_state is
      when pkg_enum.eStart =>
      when pkg_enum.eData =>
        io_input_ready <= io_output_ready;
      when pkg_enum.eEnd =>
      when pkg_enum.eCheck0 =>
      when others =>
    end case;
  end process;

  stateMachine_lookingForJob <= pkg_toStdLogic(false);
  process(clk, reset)
  begin
    if reset = '1' then
      stateMachine_state <= pkg_enum.eStart;
    elsif rising_edge(clk) then
      case stateMachine_state is
        when pkg_enum.eStart =>
          if io_input_valid = '1' then
            if io_output_ready = '1' then
              stateMachine_state <= pkg_enum.eData;
            end if;
          end if;
        when pkg_enum.eData =>
          if zz_2 = '1' then
            if io_input_payload_last = '1' then
              stateMachine_state <= pkg_enum.eEnd;
            end if;
          end if;
        when pkg_enum.eEnd =>
          if io_output_ready = '1' then
            stateMachine_state <= pkg_enum.eCheck0;
          end if;
        when pkg_enum.eCheck0 =>
          if io_output_ready = '1' then
            stateMachine_state <= pkg_enum.eCheck1;
          end if;
        when others =>
          if io_output_ready = '1' then
            stateMachine_state <= pkg_enum.eStart;
          end if;
      end case;
    end if;
  end process;

  process(clk)
  begin
    if rising_edge(clk) then
      case stateMachine_state is
        when pkg_enum.eStart =>
          stateMachine_checksum <= pkg_unsigned("0000000000000000");
        when pkg_enum.eData =>
          if zz_2 = '1' then
            stateMachine_checksum <= (stateMachine_checksum + pkg_resize(unsigned(io_input_payload_fragment),16));
          end if;
        when pkg_enum.eEnd =>
        when pkg_enum.eCheck0 =>
        when others =>
      end case;
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


entity SerialCheckerPhysicalToSerial is
  port(
    io_input_valid : in std_logic;
    io_input_ready : out std_logic;
    io_input_payload_bits : in std_logic_vector(7 downto 0);
    io_input_payload_isStart : in std_logic;
    io_input_payload_isEnd : in std_logic;
    io_output_valid : out std_logic;
    io_output_ready : in std_logic;
    io_output_payload : out std_logic_vector(7 downto 0);
    clk : in std_logic;
    reset : in std_logic
  );
end SerialCheckerPhysicalToSerial;

architecture arch of SerialCheckerPhysicalToSerial is
  signal zz_1 : std_logic;
  signal zz_2 : std_logic;

  signal inMagic : std_logic;
begin
  io_output_valid <= zz_1;
  zz_2 <= ((not ((not io_input_payload_isStart) and (not io_input_payload_isEnd))) or pkg_toStdLogic(io_input_payload_bits = pkg_stdLogicVector("10100101")));
  zz_1 <= io_input_valid;
  process(io_input_payload_bits,inMagic,io_input_payload_isStart,io_input_payload_isEnd,zz_2)
  begin
    io_output_payload <= io_input_payload_bits;
    if inMagic = '1' then
      if io_input_payload_isStart = '1' then
        io_output_payload <= pkg_stdLogicVector("11011000");
      end if;
      if io_input_payload_isEnd = '1' then
        io_output_payload <= pkg_stdLogicVector("10011010");
      end if;
    else
      if zz_2 = '1' then
        io_output_payload <= pkg_stdLogicVector("10100101");
      end if;
    end if;
  end process;

  process(io_output_ready,inMagic,zz_2)
  begin
    io_input_ready <= io_output_ready;
    if inMagic = '0' then
      if zz_2 = '1' then
        io_input_ready <= pkg_toStdLogic(false);
      end if;
    end if;
  end process;

  process(clk, reset)
  begin
    if reset = '1' then
      inMagic <= pkg_toStdLogic(false);
    elsif rising_edge(clk) then
      if inMagic = '1' then
        if (zz_1 and io_output_ready) = '1' then
          inMagic <= pkg_toStdLogic(false);
        end if;
      else
        if zz_2 = '1' then
          if (zz_1 and io_output_ready) = '1' then
            inMagic <= pkg_toStdLogic(true);
          end if;
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


entity SerdesSerialTester is
  port(
    io_rx_valid : in std_logic;
    io_rx_payload : in std_logic_vector(7 downto 0);
    io_tx_valid : out std_logic;
    io_tx_ready : in std_logic;
    io_tx_payload : out std_logic_vector(7 downto 0);
    clk : in std_logic;
    reset : in std_logic
  );
end SerdesSerialTester;

architecture arch of SerdesSerialTester is
  signal physicalRx_io_output_valid : std_logic;
  signal physicalRx_io_output_payload_bits : std_logic_vector(7 downto 0);
  signal physicalRx_io_output_payload_isStart : std_logic;
  signal physicalRx_io_output_payload_isEnd : std_logic;
  signal serialCheckerRx_1_io_output_valid : std_logic;
  signal serialCheckerRx_1_io_output_payload_last : std_logic;
  signal serialCheckerRx_1_io_output_payload_fragment : std_logic_vector(7 downto 0);
  signal serialLinkRx_1_io_input_ready : std_logic;
  signal serialLinkRx_1_io_output_valid : std_logic;
  signal serialLinkRx_1_io_output_payload : std_logic_vector(7 downto 0);
  signal serialLinkRx_1_io_rxToTx_close : std_logic;
  signal serialLinkRx_1_io_rxToTx_open : std_logic;
  signal serialLinkRx_1_io_rxToTx_miss : std_logic;
  signal serialLinkRx_1_io_rxToTx_rxPtr : unsigned(15 downto 0);
  signal serialLinkRx_1_io_rxToTx_otherRxPtr_valid : std_logic;
  signal serialLinkRx_1_io_rxToTx_otherRxPtr_payload : unsigned(15 downto 0);
  signal serialLinkTx_1_io_input_ready : std_logic;
  signal serialLinkTx_1_io_output_valid : std_logic;
  signal serialLinkTx_1_io_output_payload_last : std_logic;
  signal serialLinkTx_1_io_output_payload_fragment : std_logic_vector(7 downto 0);
  signal serialCheckerTx_1_io_input_ready : std_logic;
  signal serialCheckerTx_1_io_output_valid : std_logic;
  signal serialCheckerTx_1_io_output_payload_bits : std_logic_vector(7 downto 0);
  signal serialCheckerTx_1_io_output_payload_isStart : std_logic;
  signal serialCheckerTx_1_io_output_payload_isEnd : std_logic;
  signal physicalTx_io_input_ready : std_logic;
  signal physicalTx_io_output_valid : std_logic;
  signal physicalTx_io_output_payload : std_logic_vector(7 downto 0);

begin
  physicalRx : entity work.SerialCheckerPhysicalfromSerial
    port map ( 
      io_input_valid => io_rx_valid,
      io_input_payload => io_rx_payload,
      io_output_valid => physicalRx_io_output_valid,
      io_output_payload_bits => physicalRx_io_output_payload_bits,
      io_output_payload_isStart => physicalRx_io_output_payload_isStart,
      io_output_payload_isEnd => physicalRx_io_output_payload_isEnd,
      clk => clk,
      reset => reset 
    );
  serialCheckerRx_1 : entity work.SerialCheckerRx
    port map ( 
      io_input_valid => physicalRx_io_output_valid,
      io_input_payload_bits => physicalRx_io_output_payload_bits,
      io_input_payload_isStart => physicalRx_io_output_payload_isStart,
      io_input_payload_isEnd => physicalRx_io_output_payload_isEnd,
      io_output_valid => serialCheckerRx_1_io_output_valid,
      io_output_ready => serialLinkRx_1_io_input_ready,
      io_output_payload_last => serialCheckerRx_1_io_output_payload_last,
      io_output_payload_fragment => serialCheckerRx_1_io_output_payload_fragment,
      clk => clk,
      reset => reset 
    );
  serialLinkRx_1 : entity work.SerialLinkRx
    port map ( 
      io_input_valid => serialCheckerRx_1_io_output_valid,
      io_input_ready => serialLinkRx_1_io_input_ready,
      io_input_payload_last => serialCheckerRx_1_io_output_payload_last,
      io_input_payload_fragment => serialCheckerRx_1_io_output_payload_fragment,
      io_output_valid => serialLinkRx_1_io_output_valid,
      io_output_ready => serialLinkTx_1_io_input_ready,
      io_output_payload => serialLinkRx_1_io_output_payload,
      io_rxToTx_close => serialLinkRx_1_io_rxToTx_close,
      io_rxToTx_open => serialLinkRx_1_io_rxToTx_open,
      io_rxToTx_miss => serialLinkRx_1_io_rxToTx_miss,
      io_rxToTx_rxPtr => serialLinkRx_1_io_rxToTx_rxPtr,
      io_rxToTx_otherRxPtr_valid => serialLinkRx_1_io_rxToTx_otherRxPtr_valid,
      io_rxToTx_otherRxPtr_payload => serialLinkRx_1_io_rxToTx_otherRxPtr_payload,
      clk => clk,
      reset => reset 
    );
  serialLinkTx_1 : entity work.SerialLinkTx
    port map ( 
      io_input_valid => serialLinkRx_1_io_output_valid,
      io_input_ready => serialLinkTx_1_io_input_ready,
      io_input_payload => serialLinkRx_1_io_output_payload,
      io_output_valid => serialLinkTx_1_io_output_valid,
      io_output_ready => serialCheckerTx_1_io_input_ready,
      io_output_payload_last => serialLinkTx_1_io_output_payload_last,
      io_output_payload_fragment => serialLinkTx_1_io_output_payload_fragment,
      io_rxToTx_close => serialLinkRx_1_io_rxToTx_close,
      io_rxToTx_open => serialLinkRx_1_io_rxToTx_open,
      io_rxToTx_miss => serialLinkRx_1_io_rxToTx_miss,
      io_rxToTx_rxPtr => serialLinkRx_1_io_rxToTx_rxPtr,
      io_rxToTx_otherRxPtr_valid => serialLinkRx_1_io_rxToTx_otherRxPtr_valid,
      io_rxToTx_otherRxPtr_payload => serialLinkRx_1_io_rxToTx_otherRxPtr_payload,
      clk => clk,
      reset => reset 
    );
  serialCheckerTx_1 : entity work.SerialCheckerTx
    port map ( 
      io_input_valid => serialLinkTx_1_io_output_valid,
      io_input_ready => serialCheckerTx_1_io_input_ready,
      io_input_payload_last => serialLinkTx_1_io_output_payload_last,
      io_input_payload_fragment => serialLinkTx_1_io_output_payload_fragment,
      io_output_valid => serialCheckerTx_1_io_output_valid,
      io_output_ready => physicalTx_io_input_ready,
      io_output_payload_bits => serialCheckerTx_1_io_output_payload_bits,
      io_output_payload_isStart => serialCheckerTx_1_io_output_payload_isStart,
      io_output_payload_isEnd => serialCheckerTx_1_io_output_payload_isEnd,
      clk => clk,
      reset => reset 
    );
  physicalTx : entity work.SerialCheckerPhysicalToSerial
    port map ( 
      io_input_valid => serialCheckerTx_1_io_output_valid,
      io_input_ready => physicalTx_io_input_ready,
      io_input_payload_bits => serialCheckerTx_1_io_output_payload_bits,
      io_input_payload_isStart => serialCheckerTx_1_io_output_payload_isStart,
      io_input_payload_isEnd => serialCheckerTx_1_io_output_payload_isEnd,
      io_output_valid => physicalTx_io_output_valid,
      io_output_ready => io_tx_ready,
      io_output_payload => physicalTx_io_output_payload,
      clk => clk,
      reset => reset 
    );
  io_tx_valid <= physicalTx_io_output_valid;
  io_tx_payload <= physicalTx_io_output_payload;
end arch;

