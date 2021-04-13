-- Generator : SpinalHDL v1.4.3    git head : adf552d8f500e7419fff395b7049228e4bc5de26
-- Component : UartTester
-- Git hash  : adf552d8f500e7419fff395b7049228e4bc5de26

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.all;

package pkg_enum is
  type UartStopType is (ONE,TWO);
  type UartParityType is (NONE,EVEN,ODD);
  type UartCtrlTxState is (IDLE,START,DATA,PARITY,STOP);
  type UartCtrlRxState is (IDLE,START,DATA,PARITY,STOP);

  function pkg_mux (sel : std_logic; one : UartStopType; zero : UartStopType) return UartStopType;
  subtype UartStopType_binary_sequential_type is std_logic_vector(0 downto 0);
  constant UartStopType_binary_sequential_ONE : UartStopType_binary_sequential_type := "0";
  constant UartStopType_binary_sequential_TWO : UartStopType_binary_sequential_type := "1";

  function pkg_mux (sel : std_logic; one : UartParityType; zero : UartParityType) return UartParityType;
  subtype UartParityType_binary_sequential_type is std_logic_vector(1 downto 0);
  constant UartParityType_binary_sequential_NONE : UartParityType_binary_sequential_type := "00";
  constant UartParityType_binary_sequential_EVEN : UartParityType_binary_sequential_type := "01";
  constant UartParityType_binary_sequential_ODD : UartParityType_binary_sequential_type := "10";

  function pkg_mux (sel : std_logic; one : UartCtrlTxState; zero : UartCtrlTxState) return UartCtrlTxState;
  function pkg_toStdLogicVector_defaultEncoding (value : UartCtrlTxState) return std_logic_vector;
  function pkg_toUartCtrlTxState_defaultEncoding (value : std_logic_vector(2 downto 0)) return UartCtrlTxState;
  function pkg_mux (sel : std_logic; one : UartCtrlRxState; zero : UartCtrlRxState) return UartCtrlRxState;
  function pkg_toStdLogicVector_defaultEncoding (value : UartCtrlRxState) return std_logic_vector;
  function pkg_toUartCtrlRxState_defaultEncoding (value : std_logic_vector(2 downto 0)) return UartCtrlRxState;
end pkg_enum;

package body pkg_enum is
  function pkg_mux (sel : std_logic; one : UartStopType; zero : UartStopType) return UartStopType is
  begin
    if sel = '1' then
      return one;
    else
      return zero;
    end if;
  end pkg_mux;

  function pkg_mux (sel : std_logic; one : UartParityType; zero : UartParityType) return UartParityType is
  begin
    if sel = '1' then
      return one;
    else
      return zero;
    end if;
  end pkg_mux;

  function pkg_mux (sel : std_logic; one : UartCtrlTxState; zero : UartCtrlTxState) return UartCtrlTxState is
  begin
    if sel = '1' then
      return one;
    else
      return zero;
    end if;
  end pkg_mux;

  function pkg_toUartCtrlTxState_defaultEncoding (value : std_logic_vector(2 downto 0)) return UartCtrlTxState is
  begin
    case value is
      when "000" => return IDLE;
      when "001" => return START;
      when "010" => return DATA;
      when "011" => return PARITY;
      when "100" => return STOP;
      when others => return IDLE;
    end case;
  end;
  function pkg_toStdLogicVector_defaultEncoding (value : UartCtrlTxState) return std_logic_vector is
  begin
    case value is
      when IDLE => return "000";
      when START => return "001";
      when DATA => return "010";
      when PARITY => return "011";
      when STOP => return "100";
      when others => return "000";
    end case;
  end;
  function pkg_mux (sel : std_logic; one : UartCtrlRxState; zero : UartCtrlRxState) return UartCtrlRxState is
  begin
    if sel = '1' then
      return one;
    else
      return zero;
    end if;
  end pkg_mux;

  function pkg_toUartCtrlRxState_defaultEncoding (value : std_logic_vector(2 downto 0)) return UartCtrlRxState is
  begin
    case value is
      when "000" => return IDLE;
      when "001" => return START;
      when "010" => return DATA;
      when "011" => return PARITY;
      when "100" => return STOP;
      when others => return IDLE;
    end case;
  end;
  function pkg_toStdLogicVector_defaultEncoding (value : UartCtrlRxState) return std_logic_vector is
  begin
    case value is
      when IDLE => return "000";
      when START => return "001";
      when DATA => return "010";
      when PARITY => return "011";
      when STOP => return "100";
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


entity BufferCC is
  port(
    io_dataIn : in std_logic;
    io_dataOut : out std_logic;
    clk : in std_logic;
    reset : in std_logic
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
  process(clk, reset)
  begin
    if reset = '1' then
      buffers_0 <= pkg_toStdLogic(false);
      buffers_1 <= pkg_toStdLogic(false);
    elsif rising_edge(clk) then
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


entity UartCtrlTx is
  port(
    io_configFrame_dataLength : in unsigned(2 downto 0);
    io_configFrame_stop : in UartStopType_binary_sequential_type;
    io_configFrame_parity : in UartParityType_binary_sequential_type;
    io_samplingTick : in std_logic;
    io_write_valid : in std_logic;
    io_write_ready : out std_logic;
    io_write_payload : in std_logic_vector(7 downto 0);
    io_cts : in std_logic;
    io_txd : out std_logic;
    io_break : in std_logic;
    clk : in std_logic;
    reset : in std_logic
  );
end UartCtrlTx;

architecture arch of UartCtrlTx is
  signal zz_2 : std_logic;

  signal clockDivider_counter_willIncrement : std_logic;
  signal clockDivider_counter_willClear : std_logic;
  signal clockDivider_counter_valueNext : unsigned(2 downto 0);
  signal clockDivider_counter_value : unsigned(2 downto 0);
  signal clockDivider_counter_willOverflowIfInc : std_logic;
  signal clockDivider_counter_willOverflow : std_logic;
  signal tickCounter_value : unsigned(2 downto 0);
  signal stateMachine_state : UartCtrlTxState;
  signal stateMachine_parity : std_logic;
  signal stateMachine_txd : std_logic;
  signal zz_1 : std_logic;
begin
  zz_2 <= pkg_toStdLogic(tickCounter_value = io_configFrame_dataLength);
  process(io_samplingTick)
  begin
    clockDivider_counter_willIncrement <= pkg_toStdLogic(false);
    if io_samplingTick = '1' then
      clockDivider_counter_willIncrement <= pkg_toStdLogic(true);
    end if;
  end process;

  clockDivider_counter_willClear <= pkg_toStdLogic(false);
  clockDivider_counter_willOverflowIfInc <= pkg_toStdLogic(clockDivider_counter_value = pkg_unsigned("111"));
  clockDivider_counter_willOverflow <= (clockDivider_counter_willOverflowIfInc and clockDivider_counter_willIncrement);
  process(clockDivider_counter_value,clockDivider_counter_willIncrement,clockDivider_counter_willClear)
  begin
    clockDivider_counter_valueNext <= (clockDivider_counter_value + pkg_resize(unsigned(pkg_toStdLogicVector(clockDivider_counter_willIncrement)),3));
    if clockDivider_counter_willClear = '1' then
      clockDivider_counter_valueNext <= pkg_unsigned("000");
    end if;
  end process;

  process(stateMachine_state,io_write_payload,tickCounter_value,stateMachine_parity)
  begin
    stateMachine_txd <= pkg_toStdLogic(true);
    case stateMachine_state is
      when pkg_enum.IDLE =>
      when pkg_enum.START =>
        stateMachine_txd <= pkg_toStdLogic(false);
      when pkg_enum.DATA =>
        stateMachine_txd <= pkg_extract(io_write_payload,to_integer(tickCounter_value));
      when pkg_enum.PARITY =>
        stateMachine_txd <= stateMachine_parity;
      when others =>
    end case;
  end process;

  process(io_break,stateMachine_state,clockDivider_counter_willOverflow,zz_2)
  begin
    io_write_ready <= io_break;
    case stateMachine_state is
      when pkg_enum.IDLE =>
      when pkg_enum.START =>
      when pkg_enum.DATA =>
        if clockDivider_counter_willOverflow = '1' then
          if zz_2 = '1' then
            io_write_ready <= pkg_toStdLogic(true);
          end if;
        end if;
      when pkg_enum.PARITY =>
      when others =>
    end case;
  end process;

  io_txd <= zz_1;
  process(clk, reset)
  begin
    if reset = '1' then
      clockDivider_counter_value <= pkg_unsigned("000");
      stateMachine_state <= pkg_enum.IDLE;
      zz_1 <= pkg_toStdLogic(true);
    elsif rising_edge(clk) then
      clockDivider_counter_value <= clockDivider_counter_valueNext;
      case stateMachine_state is
        when pkg_enum.IDLE =>
          if ((io_write_valid and (not io_cts)) and clockDivider_counter_willOverflow) = '1' then
            stateMachine_state <= pkg_enum.START;
          end if;
        when pkg_enum.START =>
          if clockDivider_counter_willOverflow = '1' then
            stateMachine_state <= pkg_enum.DATA;
          end if;
        when pkg_enum.DATA =>
          if clockDivider_counter_willOverflow = '1' then
            if zz_2 = '1' then
              if pkg_toStdLogic(io_configFrame_parity = UartParityType_binary_sequential_NONE) = '1' then
                stateMachine_state <= pkg_enum.STOP;
              else
                stateMachine_state <= pkg_enum.PARITY;
              end if;
            end if;
          end if;
        when pkg_enum.PARITY =>
          if clockDivider_counter_willOverflow = '1' then
            stateMachine_state <= pkg_enum.STOP;
          end if;
        when others =>
          if clockDivider_counter_willOverflow = '1' then
            if pkg_toStdLogic(tickCounter_value = pkg_resize(pkg_mux(pkg_toStdLogic(io_configFrame_stop = UartStopType_binary_sequential_ONE),pkg_unsigned("0"),pkg_unsigned("1")),3)) = '1' then
              stateMachine_state <= pkg_mux(io_write_valid,pkg_enum.START,pkg_enum.IDLE);
            end if;
          end if;
      end case;
      zz_1 <= (stateMachine_txd and (not io_break));
    end if;
  end process;

  process(clk)
  begin
    if rising_edge(clk) then
      if clockDivider_counter_willOverflow = '1' then
        tickCounter_value <= (tickCounter_value + pkg_unsigned("001"));
      end if;
      if clockDivider_counter_willOverflow = '1' then
        stateMachine_parity <= (stateMachine_parity xor stateMachine_txd);
      end if;
      case stateMachine_state is
        when pkg_enum.IDLE =>
        when pkg_enum.START =>
          if clockDivider_counter_willOverflow = '1' then
            stateMachine_parity <= pkg_toStdLogic(io_configFrame_parity = UartParityType_binary_sequential_ODD);
            tickCounter_value <= pkg_unsigned("000");
          end if;
        when pkg_enum.DATA =>
          if clockDivider_counter_willOverflow = '1' then
            if zz_2 = '1' then
              tickCounter_value <= pkg_unsigned("000");
            end if;
          end if;
        when pkg_enum.PARITY =>
          if clockDivider_counter_willOverflow = '1' then
            tickCounter_value <= pkg_unsigned("000");
          end if;
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


entity UartCtrlRx is
  port(
    io_configFrame_dataLength : in unsigned(2 downto 0);
    io_configFrame_stop : in UartStopType_binary_sequential_type;
    io_configFrame_parity : in UartParityType_binary_sequential_type;
    io_samplingTick : in std_logic;
    io_read_valid : out std_logic;
    io_read_ready : in std_logic;
    io_read_payload : out std_logic_vector(7 downto 0);
    io_rxd : in std_logic;
    io_rts : out std_logic;
    io_error : out std_logic;
    io_break : out std_logic;
    clk : in std_logic;
    reset : in std_logic
  );
end UartCtrlRx;

architecture arch of UartCtrlRx is
  signal io_rxd_buffercc_io_dataOut : std_logic;
  signal zz_2 : std_logic;
  signal zz_3 : std_logic;
  signal zz_4 : std_logic;
  signal zz_5 : std_logic;
  signal zz_6 : std_logic;
  signal zz_7 : std_logic;
  signal zz_8 : std_logic;
  signal zz_9 : std_logic;
  signal zz_10 : std_logic;
  signal zz_11 : std_logic;
  signal zz_12 : std_logic;

  signal zz_1 : std_logic;
  signal sampler_synchroniser : std_logic;
  signal sampler_samples_0 : std_logic;
  signal sampler_samples_1 : std_logic;
  signal sampler_samples_2 : std_logic;
  signal sampler_samples_3 : std_logic;
  signal sampler_samples_4 : std_logic;
  signal sampler_value : std_logic;
  signal sampler_tick : std_logic;
  signal bitTimer_counter : unsigned(2 downto 0);
  signal bitTimer_tick : std_logic;
  signal bitCounter_value : unsigned(2 downto 0);
  signal break_counter : unsigned(6 downto 0);
  signal break_valid : std_logic;
  signal stateMachine_state : UartCtrlRxState;
  signal stateMachine_parity : std_logic;
  signal stateMachine_shifter : std_logic_vector(7 downto 0);
  signal stateMachine_validReg : std_logic;
begin
  zz_2 <= pkg_toStdLogic(stateMachine_parity = sampler_value);
  zz_3 <= (not sampler_value);
  zz_4 <= ((sampler_tick and (not sampler_value)) and (not break_valid));
  zz_5 <= pkg_toStdLogic(bitCounter_value = io_configFrame_dataLength);
  zz_6 <= ((((pkg_toStdLogic(false) or ((zz_11 and sampler_samples_1) and sampler_samples_2)) or (((zz_12 and sampler_samples_0) and sampler_samples_1) and sampler_samples_3)) or (((pkg_toStdLogic(true) and sampler_samples_0) and sampler_samples_2) and sampler_samples_3)) or (((pkg_toStdLogic(true) and sampler_samples_1) and sampler_samples_2) and sampler_samples_3));
  zz_7 <= (((pkg_toStdLogic(true) and sampler_samples_0) and sampler_samples_1) and sampler_samples_4);
  zz_8 <= ((pkg_toStdLogic(true) and sampler_samples_0) and sampler_samples_2);
  zz_9 <= (pkg_toStdLogic(true) and sampler_samples_1);
  zz_10 <= pkg_toStdLogic(true);
  zz_11 <= (pkg_toStdLogic(true) and sampler_samples_0);
  zz_12 <= pkg_toStdLogic(true);
  io_rxd_buffercc : entity work.BufferCC
    port map ( 
      io_dataIn => io_rxd,
      io_dataOut => io_rxd_buffercc_io_dataOut,
      clk => clk,
      reset => reset 
    );
  process(stateMachine_state,bitTimer_tick,zz_2,zz_3)
  begin
    io_error <= pkg_toStdLogic(false);
    case stateMachine_state is
      when pkg_enum.IDLE =>
      when pkg_enum.START =>
      when pkg_enum.DATA =>
      when pkg_enum.PARITY =>
        if bitTimer_tick = '1' then
          if zz_2 = '0' then
            io_error <= pkg_toStdLogic(true);
          end if;
        end if;
      when others =>
        if bitTimer_tick = '1' then
          if zz_3 = '1' then
            io_error <= pkg_toStdLogic(true);
          end if;
        end if;
    end case;
  end process;

  io_rts <= zz_1;
  sampler_synchroniser <= io_rxd_buffercc_io_dataOut;
  sampler_samples_0 <= sampler_synchroniser;
  process(sampler_tick,bitTimer_counter)
  begin
    bitTimer_tick <= pkg_toStdLogic(false);
    if sampler_tick = '1' then
      if pkg_toStdLogic(bitTimer_counter = pkg_unsigned("000")) = '1' then
        bitTimer_tick <= pkg_toStdLogic(true);
      end if;
    end if;
  end process;

  break_valid <= pkg_toStdLogic(break_counter = pkg_unsigned("1101000"));
  io_break <= break_valid;
  io_read_valid <= stateMachine_validReg;
  io_read_payload <= stateMachine_shifter;
  process(clk, reset)
  begin
    if reset = '1' then
      zz_1 <= pkg_toStdLogic(false);
      sampler_samples_1 <= pkg_toStdLogic(true);
      sampler_samples_2 <= pkg_toStdLogic(true);
      sampler_samples_3 <= pkg_toStdLogic(true);
      sampler_samples_4 <= pkg_toStdLogic(true);
      sampler_value <= pkg_toStdLogic(true);
      sampler_tick <= pkg_toStdLogic(false);
      break_counter <= pkg_unsigned("0000000");
      stateMachine_state <= pkg_enum.IDLE;
      stateMachine_validReg <= pkg_toStdLogic(false);
    elsif rising_edge(clk) then
      zz_1 <= (not io_read_ready);
      if io_samplingTick = '1' then
        sampler_samples_1 <= sampler_samples_0;
      end if;
      if io_samplingTick = '1' then
        sampler_samples_2 <= sampler_samples_1;
      end if;
      if io_samplingTick = '1' then
        sampler_samples_3 <= sampler_samples_2;
      end if;
      if io_samplingTick = '1' then
        sampler_samples_4 <= sampler_samples_3;
      end if;
      sampler_value <= ((((((zz_6 or zz_7) or (zz_8 and sampler_samples_4)) or ((zz_9 and sampler_samples_2) and sampler_samples_4)) or (((zz_10 and sampler_samples_0) and sampler_samples_3) and sampler_samples_4)) or (((pkg_toStdLogic(true) and sampler_samples_1) and sampler_samples_3) and sampler_samples_4)) or (((pkg_toStdLogic(true) and sampler_samples_2) and sampler_samples_3) and sampler_samples_4));
      sampler_tick <= io_samplingTick;
      if sampler_value = '1' then
        break_counter <= pkg_unsigned("0000000");
      else
        if (io_samplingTick and (not break_valid)) = '1' then
          break_counter <= (break_counter + pkg_unsigned("0000001"));
        end if;
      end if;
      stateMachine_validReg <= pkg_toStdLogic(false);
      case stateMachine_state is
        when pkg_enum.IDLE =>
          if zz_4 = '1' then
            stateMachine_state <= pkg_enum.START;
          end if;
        when pkg_enum.START =>
          if bitTimer_tick = '1' then
            stateMachine_state <= pkg_enum.DATA;
            if pkg_toStdLogic(sampler_value = pkg_toStdLogic(true)) = '1' then
              stateMachine_state <= pkg_enum.IDLE;
            end if;
          end if;
        when pkg_enum.DATA =>
          if bitTimer_tick = '1' then
            if zz_5 = '1' then
              if pkg_toStdLogic(io_configFrame_parity = UartParityType_binary_sequential_NONE) = '1' then
                stateMachine_state <= pkg_enum.STOP;
                stateMachine_validReg <= pkg_toStdLogic(true);
              else
                stateMachine_state <= pkg_enum.PARITY;
              end if;
            end if;
          end if;
        when pkg_enum.PARITY =>
          if bitTimer_tick = '1' then
            if zz_2 = '1' then
              stateMachine_state <= pkg_enum.STOP;
              stateMachine_validReg <= pkg_toStdLogic(true);
            else
              stateMachine_state <= pkg_enum.IDLE;
            end if;
          end if;
        when others =>
          if bitTimer_tick = '1' then
            if zz_3 = '1' then
              stateMachine_state <= pkg_enum.IDLE;
            else
              if pkg_toStdLogic(bitCounter_value = pkg_resize(pkg_mux(pkg_toStdLogic(io_configFrame_stop = UartStopType_binary_sequential_ONE),pkg_unsigned("0"),pkg_unsigned("1")),3)) = '1' then
                stateMachine_state <= pkg_enum.IDLE;
              end if;
            end if;
          end if;
      end case;
    end if;
  end process;

  process(clk)
  begin
    if rising_edge(clk) then
      if sampler_tick = '1' then
        bitTimer_counter <= (bitTimer_counter - pkg_unsigned("001"));
      end if;
      if bitTimer_tick = '1' then
        bitCounter_value <= (bitCounter_value + pkg_unsigned("001"));
      end if;
      if bitTimer_tick = '1' then
        stateMachine_parity <= (stateMachine_parity xor sampler_value);
      end if;
      case stateMachine_state is
        when pkg_enum.IDLE =>
          if zz_4 = '1' then
            bitTimer_counter <= pkg_unsigned("010");
          end if;
        when pkg_enum.START =>
          if bitTimer_tick = '1' then
            bitCounter_value <= pkg_unsigned("000");
            stateMachine_parity <= pkg_toStdLogic(io_configFrame_parity = UartParityType_binary_sequential_ODD);
          end if;
        when pkg_enum.DATA =>
          if bitTimer_tick = '1' then
            stateMachine_shifter(to_integer(bitCounter_value)) <= sampler_value;
            if zz_5 = '1' then
              bitCounter_value <= pkg_unsigned("000");
            end if;
          end if;
        when pkg_enum.PARITY =>
          if bitTimer_tick = '1' then
            bitCounter_value <= pkg_unsigned("000");
          end if;
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


entity UartCtrl is
  port(
    io_config_frame_dataLength : in unsigned(2 downto 0);
    io_config_frame_stop : in UartStopType_binary_sequential_type;
    io_config_frame_parity : in UartParityType_binary_sequential_type;
    io_config_clockDivider : in unsigned(19 downto 0);
    io_write_valid : in std_logic;
    io_write_ready : out std_logic;
    io_write_payload : in std_logic_vector(7 downto 0);
    io_read_valid : out std_logic;
    io_read_ready : in std_logic;
    io_read_payload : out std_logic_vector(7 downto 0);
    io_uart_txd : out std_logic;
    io_uart_rxd : in std_logic;
    io_readError : out std_logic;
    io_writeBreak : in std_logic;
    io_readBreak : out std_logic;
    clk : in std_logic;
    reset : in std_logic
  );
end UartCtrl;

architecture arch of UartCtrl is
  signal zz_1 : std_logic;
  signal tx_io_write_ready : std_logic;
  signal tx_io_txd : std_logic;
  signal rx_io_read_valid : std_logic;
  signal rx_io_read_payload : std_logic_vector(7 downto 0);
  signal rx_io_rts : std_logic;
  signal rx_io_error : std_logic;
  signal rx_io_break : std_logic;

  signal clockDivider_counter : unsigned(19 downto 0);
  signal clockDivider_tick : std_logic;
  signal io_write_thrown_valid : std_logic;
  signal io_write_thrown_ready : std_logic;
  signal io_write_thrown_payload : std_logic_vector(7 downto 0);
begin
  tx : entity work.UartCtrlTx
    port map ( 
      io_configFrame_dataLength => io_config_frame_dataLength,
      io_configFrame_stop => io_config_frame_stop,
      io_configFrame_parity => io_config_frame_parity,
      io_samplingTick => clockDivider_tick,
      io_write_valid => io_write_thrown_valid,
      io_write_ready => tx_io_write_ready,
      io_write_payload => io_write_thrown_payload,
      io_cts => zz_1,
      io_txd => tx_io_txd,
      io_break => io_writeBreak,
      clk => clk,
      reset => reset 
    );
  rx : entity work.UartCtrlRx
    port map ( 
      io_configFrame_dataLength => io_config_frame_dataLength,
      io_configFrame_stop => io_config_frame_stop,
      io_configFrame_parity => io_config_frame_parity,
      io_samplingTick => clockDivider_tick,
      io_read_valid => rx_io_read_valid,
      io_read_ready => io_read_ready,
      io_read_payload => rx_io_read_payload,
      io_rxd => io_uart_rxd,
      io_rts => rx_io_rts,
      io_error => rx_io_error,
      io_break => rx_io_break,
      clk => clk,
      reset => reset 
    );
  clockDivider_tick <= pkg_toStdLogic(clockDivider_counter = pkg_unsigned("00000000000000000000"));
  process(io_write_valid,rx_io_break)
  begin
    io_write_thrown_valid <= io_write_valid;
    if rx_io_break = '1' then
      io_write_thrown_valid <= pkg_toStdLogic(false);
    end if;
  end process;

  process(io_write_thrown_ready,rx_io_break)
  begin
    io_write_ready <= io_write_thrown_ready;
    if rx_io_break = '1' then
      io_write_ready <= pkg_toStdLogic(true);
    end if;
  end process;

  io_write_thrown_payload <= io_write_payload;
  io_write_thrown_ready <= tx_io_write_ready;
  io_read_valid <= rx_io_read_valid;
  io_read_payload <= rx_io_read_payload;
  io_uart_txd <= tx_io_txd;
  io_readError <= rx_io_error;
  zz_1 <= pkg_toStdLogic(false);
  io_readBreak <= rx_io_break;
  process(clk, reset)
  begin
    if reset = '1' then
      clockDivider_counter <= pkg_unsigned("00000000000000000000");
    elsif rising_edge(clk) then
      clockDivider_counter <= (clockDivider_counter - pkg_unsigned("00000000000000000001"));
      if clockDivider_tick = '1' then
        clockDivider_counter <= io_config_clockDivider;
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


entity UartTester is
  port(
    io_uart_config_frame_dataLength : in unsigned(2 downto 0);
    io_uart_config_frame_stop : in UartStopType_binary_sequential_type;
    io_uart_config_frame_parity : in UartParityType_binary_sequential_type;
    io_uart_config_clockDivider : in unsigned(19 downto 0);
    io_uart_write_valid : in std_logic;
    io_uart_write_ready : out std_logic;
    io_uart_write_payload : in std_logic_vector(7 downto 0);
    io_uart_read_valid : out std_logic;
    io_uart_read_ready : in std_logic;
    io_uart_read_payload : out std_logic_vector(7 downto 0);
    io_uart_uart_txd : out std_logic;
    io_uart_uart_rxd : in std_logic;
    io_uart_readError : out std_logic;
    io_uart_writeBreak : in std_logic;
    io_uart_readBreak : out std_logic;
    clk : in std_logic;
    reset : in std_logic
  );
end UartTester;

architecture arch of UartTester is
  signal uartCtrl_1_io_write_ready : std_logic;
  signal uartCtrl_1_io_read_valid : std_logic;
  signal uartCtrl_1_io_read_payload : std_logic_vector(7 downto 0);
  signal uartCtrl_1_io_uart_txd : std_logic;
  signal uartCtrl_1_io_readError : std_logic;
  signal uartCtrl_1_io_readBreak : std_logic;

begin
  uartCtrl_1 : entity work.UartCtrl
    port map ( 
      io_config_frame_dataLength => io_uart_config_frame_dataLength,
      io_config_frame_stop => io_uart_config_frame_stop,
      io_config_frame_parity => io_uart_config_frame_parity,
      io_config_clockDivider => io_uart_config_clockDivider,
      io_write_valid => io_uart_write_valid,
      io_write_ready => uartCtrl_1_io_write_ready,
      io_write_payload => io_uart_write_payload,
      io_read_valid => uartCtrl_1_io_read_valid,
      io_read_ready => io_uart_read_ready,
      io_read_payload => uartCtrl_1_io_read_payload,
      io_uart_txd => uartCtrl_1_io_uart_txd,
      io_uart_rxd => io_uart_uart_rxd,
      io_readError => uartCtrl_1_io_readError,
      io_writeBreak => io_uart_writeBreak,
      io_readBreak => uartCtrl_1_io_readBreak,
      clk => clk,
      reset => reset 
    );
  io_uart_write_ready <= uartCtrl_1_io_write_ready;
  io_uart_read_valid <= uartCtrl_1_io_read_valid;
  io_uart_read_payload <= uartCtrl_1_io_read_payload;
  io_uart_uart_txd <= uartCtrl_1_io_uart_txd;
  io_uart_readError <= uartCtrl_1_io_readError;
  io_uart_readBreak <= uartCtrl_1_io_readBreak;
end arch;

