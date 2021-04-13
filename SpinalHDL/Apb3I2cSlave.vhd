-- Generator : SpinalHDL v1.4.3    git head : adf552d8f500e7419fff395b7049228e4bc5de26
-- Component : Apb3I2cSlave
-- Git hash  : adf552d8f500e7419fff395b7049228e4bc5de26

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.all;

package pkg_enum is
  type I2cSlaveCmdMode is (NONE,START,RESTART,STOP,DROP,DRIVE,READ);

  function pkg_mux (sel : std_logic; one : I2cSlaveCmdMode; zero : I2cSlaveCmdMode) return I2cSlaveCmdMode;
  function pkg_toStdLogicVector_defaultEncoding (value : I2cSlaveCmdMode) return std_logic_vector;
  function pkg_toI2cSlaveCmdMode_defaultEncoding (value : std_logic_vector(2 downto 0)) return I2cSlaveCmdMode;
end pkg_enum;

package body pkg_enum is
  function pkg_mux (sel : std_logic; one : I2cSlaveCmdMode; zero : I2cSlaveCmdMode) return I2cSlaveCmdMode is
  begin
    if sel = '1' then
      return one;
    else
      return zero;
    end if;
  end pkg_mux;

  function pkg_toI2cSlaveCmdMode_defaultEncoding (value : std_logic_vector(2 downto 0)) return I2cSlaveCmdMode is
  begin
    case value is
      when "000" => return NONE;
      when "001" => return START;
      when "010" => return RESTART;
      when "011" => return STOP;
      when "100" => return DROP;
      when "101" => return DRIVE;
      when "110" => return READ;
      when others => return NONE;
    end case;
  end;
  function pkg_toStdLogicVector_defaultEncoding (value : I2cSlaveCmdMode) return std_logic_vector is
  begin
    case value is
      when NONE => return "000";
      when START => return "001";
      when RESTART => return "010";
      when STOP => return "011";
      when DROP => return "100";
      when DRIVE => return "101";
      when READ => return "110";
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
      buffers_0 <= pkg_toStdLogic(true);
      buffers_1 <= pkg_toStdLogic(true);
    elsif rising_edge(clk) then
      buffers_0 <= io_dataIn;
      buffers_1 <= buffers_0;
    end if;
  end process;

end arch;


--BufferCC_1 remplaced by BufferCC

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.pkg_scala2hdl.all;
use work.all;
use work.pkg_enum.all;


entity I2cSlave is
  port(
    io_i2c_sda_write : out std_logic;
    io_i2c_sda_read : in std_logic;
    io_i2c_scl_write : out std_logic;
    io_i2c_scl_read : in std_logic;
    io_config_samplingClockDivider : in unsigned(9 downto 0);
    io_config_timeout : in unsigned(19 downto 0);
    io_config_tsuData : in unsigned(5 downto 0);
    io_bus_cmd_kind : out I2cSlaveCmdMode;
    io_bus_cmd_data : out std_logic;
    io_bus_rsp_valid : in std_logic;
    io_bus_rsp_enable : in std_logic;
    io_bus_rsp_data : in std_logic;
    io_internals_inFrame : out std_logic;
    io_internals_sdaRead : out std_logic;
    io_internals_sclRead : out std_logic;
    clk : in std_logic;
    reset : in std_logic
  );
end I2cSlave;

architecture arch of I2cSlave is
  signal io_i2c_scl_read_buffercc_io_dataOut : std_logic;
  signal io_i2c_sda_read_buffercc_io_dataOut : std_logic;
  signal zz_7 : std_logic;
  signal zz_8 : std_logic;

  signal filter_timer_counter : unsigned(9 downto 0);
  signal filter_timer_tick : std_logic;
  signal filter_sampler_sclSync : std_logic;
  signal filter_sampler_sdaSync : std_logic;
  signal filter_sampler_sclSamples_0 : std_logic;
  signal filter_sampler_sclSamples_1 : std_logic;
  signal filter_sampler_sclSamples_2 : std_logic;
  signal zz_1 : std_logic;
  signal zz_2 : std_logic;
  signal zz_3 : std_logic;
  signal filter_sampler_sdaSamples_0 : std_logic;
  signal filter_sampler_sdaSamples_1 : std_logic;
  signal filter_sampler_sdaSamples_2 : std_logic;
  signal zz_4 : std_logic;
  signal zz_5 : std_logic;
  signal zz_6 : std_logic;
  signal filter_sda : std_logic;
  signal filter_scl : std_logic;
  signal sclEdge_rise : std_logic;
  signal sclEdge_fall : std_logic;
  signal sclEdge_toggle : std_logic;
  signal filter_scl_regNext : std_logic;
  signal sdaEdge_rise : std_logic;
  signal sdaEdge_fall : std_logic;
  signal sdaEdge_toggle : std_logic;
  signal filter_sda_regNext : std_logic;
  signal detector_start : std_logic;
  signal detector_stop : std_logic;
  signal tsuData_counter : unsigned(5 downto 0);
  signal tsuData_done : std_logic;
  signal tsuData_reset : std_logic;
  signal ctrl_inFrame : std_logic;
  signal ctrl_inFrameData : std_logic;
  signal ctrl_sdaWrite : std_logic;
  signal ctrl_sclWrite : std_logic;
  signal ctrl_rspBufferIn_valid : std_logic;
  signal ctrl_rspBufferIn_ready : std_logic;
  signal ctrl_rspBufferIn_payload_enable : std_logic;
  signal ctrl_rspBufferIn_payload_data : std_logic;
  signal ctrl_rspBuffer_valid : std_logic;
  signal ctrl_rspBuffer_ready : std_logic;
  signal ctrl_rspBuffer_payload_enable : std_logic;
  signal ctrl_rspBuffer_payload_data : std_logic;
  signal ctrl_rspBufferIn_m2sPipe_rValid : std_logic;
  signal ctrl_rspBufferIn_m2sPipe_rData_enable : std_logic;
  signal ctrl_rspBufferIn_m2sPipe_rData_data : std_logic;
  signal ctrl_rspAhead_valid : std_logic;
  signal ctrl_rspAhead_payload_enable : std_logic;
  signal ctrl_rspAhead_payload_data : std_logic;
  signal timeout_counter : unsigned(19 downto 0);
  signal timeout_tick : std_logic;
begin
  zz_7 <= (detector_stop or timeout_tick);
  zz_8 <= (sclEdge_toggle or (not ctrl_inFrame));
  io_i2c_scl_read_buffercc : entity work.BufferCC
    port map ( 
      io_dataIn => io_i2c_scl_read,
      io_dataOut => io_i2c_scl_read_buffercc_io_dataOut,
      clk => clk,
      reset => reset 
    );
  io_i2c_sda_read_buffercc : entity work.BufferCC
    port map ( 
      io_dataIn => io_i2c_sda_read,
      io_dataOut => io_i2c_sda_read_buffercc_io_dataOut,
      clk => clk,
      reset => reset 
    );
  filter_timer_tick <= pkg_toStdLogic(filter_timer_counter = pkg_unsigned("0000000000"));
  filter_sampler_sclSync <= io_i2c_scl_read_buffercc_io_dataOut;
  filter_sampler_sdaSync <= io_i2c_sda_read_buffercc_io_dataOut;
  zz_1 <= filter_sampler_sclSync;
  filter_sampler_sclSamples_0 <= zz_1;
  filter_sampler_sclSamples_1 <= zz_2;
  filter_sampler_sclSamples_2 <= zz_3;
  zz_4 <= filter_sampler_sdaSync;
  filter_sampler_sdaSamples_0 <= zz_4;
  filter_sampler_sdaSamples_1 <= zz_5;
  filter_sampler_sdaSamples_2 <= zz_6;
  sclEdge_rise <= ((not filter_scl_regNext) and filter_scl);
  sclEdge_fall <= (filter_scl_regNext and (not filter_scl));
  sclEdge_toggle <= pkg_toStdLogic(filter_scl_regNext /= filter_scl);
  sdaEdge_rise <= ((not filter_sda_regNext) and filter_sda);
  sdaEdge_fall <= (filter_sda_regNext and (not filter_sda));
  sdaEdge_toggle <= pkg_toStdLogic(filter_sda_regNext /= filter_sda);
  detector_start <= (filter_scl and sdaEdge_fall);
  detector_stop <= (filter_scl and sdaEdge_rise);
  tsuData_done <= pkg_toStdLogic(tsuData_counter = pkg_unsigned("000000"));
  process(ctrl_inFrameData,ctrl_rspAhead_valid)
  begin
    tsuData_reset <= pkg_toStdLogic(false);
    if ctrl_inFrameData = '1' then
      tsuData_reset <= (not ctrl_rspAhead_valid);
    end if;
  end process;

  process(ctrl_inFrameData,ctrl_rspAhead_valid,ctrl_rspAhead_payload_enable,ctrl_rspAhead_payload_data)
  begin
    ctrl_sdaWrite <= pkg_toStdLogic(true);
    if ctrl_inFrameData = '1' then
      if (ctrl_rspAhead_valid and ctrl_rspAhead_payload_enable) = '1' then
        ctrl_sdaWrite <= ctrl_rspAhead_payload_data;
      end if;
    end if;
  end process;

  process(ctrl_inFrameData,ctrl_rspAhead_valid,ctrl_rspAhead_payload_enable,tsuData_done)
  begin
    ctrl_sclWrite <= pkg_toStdLogic(true);
    if ctrl_inFrameData = '1' then
      if ((not ctrl_rspAhead_valid) or (ctrl_rspAhead_payload_enable and (not tsuData_done))) = '1' then
        ctrl_sclWrite <= pkg_toStdLogic(false);
      end if;
    end if;
  end process;

  ctrl_rspBufferIn_ready <= ((pkg_toStdLogic(true) and (not ctrl_rspBuffer_valid)) or ctrl_rspBuffer_ready);
  ctrl_rspBuffer_valid <= ctrl_rspBufferIn_m2sPipe_rValid;
  ctrl_rspBuffer_payload_enable <= ctrl_rspBufferIn_m2sPipe_rData_enable;
  ctrl_rspBuffer_payload_data <= ctrl_rspBufferIn_m2sPipe_rData_data;
  ctrl_rspAhead_valid <= pkg_mux(ctrl_rspBuffer_valid,ctrl_rspBuffer_valid,ctrl_rspBufferIn_valid);
  ctrl_rspAhead_payload_enable <= pkg_mux(ctrl_rspBuffer_valid,ctrl_rspBuffer_payload_enable,ctrl_rspBufferIn_payload_enable);
  ctrl_rspAhead_payload_data <= pkg_mux(ctrl_rspBuffer_valid,ctrl_rspBuffer_payload_data,ctrl_rspBufferIn_payload_data);
  ctrl_rspBufferIn_valid <= io_bus_rsp_valid;
  ctrl_rspBufferIn_payload_enable <= io_bus_rsp_enable;
  ctrl_rspBufferIn_payload_data <= io_bus_rsp_data;
  process(ctrl_inFrame,sclEdge_fall)
  begin
    ctrl_rspBuffer_ready <= pkg_toStdLogic(false);
    if ctrl_inFrame = '1' then
      if sclEdge_fall = '1' then
        ctrl_rspBuffer_ready <= pkg_toStdLogic(true);
      end if;
    end if;
  end process;

  process(ctrl_inFrame,sclEdge_rise,ctrl_inFrameData,ctrl_rspBuffer_valid,ctrl_rspBuffer_ready,detector_start,zz_7,timeout_tick)
  begin
    io_bus_cmd_kind <= pkg_enum.NONE;
    if ctrl_inFrame = '1' then
      if sclEdge_rise = '1' then
        io_bus_cmd_kind <= pkg_enum.READ;
      end if;
    end if;
    if ctrl_inFrameData = '1' then
      if ((not ctrl_rspBuffer_valid) or ctrl_rspBuffer_ready) = '1' then
        io_bus_cmd_kind <= pkg_enum.DRIVE;
      end if;
    end if;
    if detector_start = '1' then
      io_bus_cmd_kind <= pkg_mux(ctrl_inFrame,pkg_enum.RESTART,pkg_enum.START);
    end if;
    if zz_7 = '1' then
      if ctrl_inFrame = '1' then
        io_bus_cmd_kind <= pkg_mux(timeout_tick,pkg_enum.DROP,pkg_enum.STOP);
      end if;
    end if;
  end process;

  io_bus_cmd_data <= filter_sda;
  process(timeout_counter,zz_8)
  begin
    timeout_tick <= pkg_toStdLogic(timeout_counter = pkg_unsigned("00000000000000000000"));
    if zz_8 = '1' then
      timeout_tick <= pkg_toStdLogic(false);
    end if;
  end process;

  io_internals_inFrame <= ctrl_inFrame;
  io_internals_sdaRead <= filter_sda;
  io_internals_sclRead <= filter_scl;
  io_i2c_scl_write <= ctrl_sclWrite;
  io_i2c_sda_write <= ctrl_sdaWrite;
  process(clk, reset)
  begin
    if reset = '1' then
      filter_timer_counter <= pkg_unsigned("0000000000");
      zz_2 <= pkg_toStdLogic(true);
      zz_3 <= pkg_toStdLogic(true);
      zz_5 <= pkg_toStdLogic(true);
      zz_6 <= pkg_toStdLogic(true);
      filter_sda <= pkg_toStdLogic(true);
      filter_scl <= pkg_toStdLogic(true);
      filter_scl_regNext <= pkg_toStdLogic(true);
      filter_sda_regNext <= pkg_toStdLogic(true);
      tsuData_counter <= pkg_unsigned("000000");
      ctrl_inFrame <= pkg_toStdLogic(false);
      ctrl_inFrameData <= pkg_toStdLogic(false);
      ctrl_rspBufferIn_m2sPipe_rValid <= pkg_toStdLogic(false);
      timeout_counter <= pkg_unsigned("00000000000000000000");
    elsif rising_edge(clk) then
      filter_timer_counter <= (filter_timer_counter - pkg_unsigned("0000000001"));
      if filter_timer_tick = '1' then
        filter_timer_counter <= io_config_samplingClockDivider;
      end if;
      if filter_timer_tick = '1' then
        zz_2 <= zz_1;
      end if;
      if filter_timer_tick = '1' then
        zz_3 <= zz_2;
      end if;
      if filter_timer_tick = '1' then
        zz_5 <= zz_4;
      end if;
      if filter_timer_tick = '1' then
        zz_6 <= zz_5;
      end if;
      if filter_timer_tick = '1' then
        if ((pkg_toStdLogic(filter_sampler_sdaSamples_0 /= filter_sda) and pkg_toStdLogic(filter_sampler_sdaSamples_1 /= filter_sda)) and pkg_toStdLogic(filter_sampler_sdaSamples_2 /= filter_sda)) = '1' then
          filter_sda <= filter_sampler_sdaSamples_2;
        end if;
        if ((pkg_toStdLogic(filter_sampler_sclSamples_0 /= filter_scl) and pkg_toStdLogic(filter_sampler_sclSamples_1 /= filter_scl)) and pkg_toStdLogic(filter_sampler_sclSamples_2 /= filter_scl)) = '1' then
          filter_scl <= filter_sampler_sclSamples_2;
        end if;
      end if;
      filter_scl_regNext <= filter_scl;
      filter_sda_regNext <= filter_sda;
      if (not tsuData_done) = '1' then
        tsuData_counter <= (tsuData_counter - pkg_unsigned("000001"));
      end if;
      if tsuData_reset = '1' then
        tsuData_counter <= io_config_tsuData;
      end if;
      if ctrl_rspBufferIn_ready = '1' then
        ctrl_rspBufferIn_m2sPipe_rValid <= ctrl_rspBufferIn_valid;
      end if;
      if ctrl_inFrame = '1' then
        if sclEdge_fall = '1' then
          ctrl_inFrameData <= pkg_toStdLogic(true);
        end if;
      end if;
      if detector_start = '1' then
        ctrl_inFrame <= pkg_toStdLogic(true);
        ctrl_inFrameData <= pkg_toStdLogic(false);
      end if;
      timeout_counter <= (timeout_counter - pkg_unsigned("00000000000000000001"));
      if zz_8 = '1' then
        timeout_counter <= io_config_timeout;
      end if;
      if zz_7 = '1' then
        ctrl_inFrame <= pkg_toStdLogic(false);
        ctrl_inFrameData <= pkg_toStdLogic(false);
      end if;
    end if;
  end process;

  process(clk)
  begin
    if rising_edge(clk) then
      if ctrl_rspBufferIn_ready = '1' then
        ctrl_rspBufferIn_m2sPipe_rData_enable <= ctrl_rspBufferIn_payload_enable;
        ctrl_rspBufferIn_m2sPipe_rData_data <= ctrl_rspBufferIn_payload_data;
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


entity Apb3I2cSlave is
  port(
    io_apb_PADDR : in unsigned(7 downto 0);
    io_apb_PSEL : in std_logic_vector(0 downto 0);
    io_apb_PENABLE : in std_logic;
    io_apb_PREADY : out std_logic;
    io_apb_PWRITE : in std_logic;
    io_apb_PWDATA : in std_logic_vector(31 downto 0);
    io_apb_PRDATA : out std_logic_vector(31 downto 0);
    io_i2c_sda_write : out std_logic;
    io_i2c_sda_read : in std_logic;
    io_i2c_scl_write : out std_logic;
    io_i2c_scl_read : in std_logic;
    io_interrupt : out std_logic;
    clk : in std_logic;
    reset : in std_logic
  );
end Apb3I2cSlave;

architecture arch of Apb3I2cSlave is
  signal zz_13 : std_logic;
  signal zz_14 : std_logic;
  signal zz_15 : std_logic;
  signal zz_16 : std_logic;
  signal i2cCtrl_io_i2c_scl_write : std_logic;
  signal i2cCtrl_io_i2c_sda_write : std_logic;
  signal i2cCtrl_io_bus_cmd_kind : I2cSlaveCmdMode;
  signal i2cCtrl_io_bus_cmd_data : std_logic;
  signal i2cCtrl_io_internals_inFrame : std_logic;
  signal i2cCtrl_io_internals_sdaRead : std_logic;
  signal i2cCtrl_io_internals_sclRead : std_logic;
  signal zz_17 : std_logic;
  signal zz_18 : std_logic;
  signal zz_19 : std_logic;
  signal zz_20 : std_logic;

  signal busCtrl_askWrite : std_logic;
  signal busCtrl_askRead : std_logic;
  signal busCtrl_doWrite : std_logic;
  signal busCtrl_doRead : std_logic;
  signal bridge_frameReset : std_logic;
  signal bridge_i2cBuffer_sda_write : std_logic;
  signal bridge_i2cBuffer_sda_read : std_logic;
  signal bridge_i2cBuffer_scl_write : std_logic;
  signal bridge_i2cBuffer_scl_read : std_logic;
  signal bridge_rxData_event : std_logic;
  signal bridge_rxData_listen : std_logic;
  signal bridge_rxData_valid : std_logic;
  signal bridge_rxData_value : std_logic_vector(7 downto 0);
  signal zz_1 : std_logic;
  signal bridge_rxAck_listen : std_logic;
  signal bridge_rxAck_valid : std_logic;
  signal bridge_rxAck_value : std_logic;
  signal zz_2 : std_logic;
  signal bridge_txData_valid : std_logic;
  signal bridge_txData_repeat : std_logic;
  signal bridge_txData_enable : std_logic;
  signal bridge_txData_value : std_logic_vector(7 downto 0);
  signal bridge_txData_forceDisable : std_logic;
  signal bridge_txData_disableOnDataConflict : std_logic;
  signal bridge_txAck_valid : std_logic;
  signal bridge_txAck_repeat : std_logic;
  signal bridge_txAck_enable : std_logic;
  signal bridge_txAck_value : std_logic;
  signal bridge_txAck_forceAck : std_logic;
  signal bridge_txAck_disableOnDataConflict : std_logic;
  signal bridge_addressFilter_addresses_0_enable : std_logic;
  signal bridge_addressFilter_addresses_0_value : std_logic_vector(9 downto 0);
  signal bridge_addressFilter_addresses_0_is10Bit : std_logic;
  signal bridge_addressFilter_addresses_1_enable : std_logic;
  signal bridge_addressFilter_addresses_1_value : std_logic_vector(9 downto 0);
  signal bridge_addressFilter_addresses_1_is10Bit : std_logic;
  signal bridge_addressFilter_addresses_2_enable : std_logic;
  signal bridge_addressFilter_addresses_2_value : std_logic_vector(9 downto 0);
  signal bridge_addressFilter_addresses_2_is10Bit : std_logic;
  signal bridge_addressFilter_addresses_3_enable : std_logic;
  signal bridge_addressFilter_addresses_3_value : std_logic_vector(9 downto 0);
  signal bridge_addressFilter_addresses_3_is10Bit : std_logic;
  signal bridge_addressFilter_state : unsigned(1 downto 0);
  signal bridge_addressFilter_byte0 : std_logic_vector(7 downto 0);
  signal bridge_addressFilter_byte1 : std_logic_vector(7 downto 0);
  signal bridge_addressFilter_byte0Is10Bit : std_logic;
  signal bridge_addressFilter_hits_0 : std_logic;
  signal bridge_addressFilter_hits_1 : std_logic;
  signal bridge_addressFilter_hits_2 : std_logic;
  signal bridge_addressFilter_hits_3 : std_logic;
  signal zz_3 : std_logic;
  signal zz_3_regNext : std_logic;
  signal bridge_dataCounter : unsigned(2 downto 0);
  signal bridge_inAckState : std_logic;
  signal bridge_wasntAck : std_logic;
  signal bridge_isMasterMode : std_logic;
  signal bridge_interruptCtrl_rxDataEnable : std_logic;
  signal bridge_interruptCtrl_rxAckEnable : std_logic;
  signal bridge_interruptCtrl_txDataEnable : std_logic;
  signal bridge_interruptCtrl_txAckEnable : std_logic;
  signal bridge_interruptCtrl_interrupt : std_logic;
  signal bridge_interruptCtrl_start_enable : std_logic;
  signal bridge_interruptCtrl_start_flag : std_logic;
  signal zz_4 : std_logic;
  signal bridge_interruptCtrl_restart_enable : std_logic;
  signal bridge_interruptCtrl_restart_flag : std_logic;
  signal zz_5 : std_logic;
  signal bridge_interruptCtrl_end_enable : std_logic;
  signal bridge_interruptCtrl_end_flag : std_logic;
  signal zz_6 : std_logic;
  signal bridge_interruptCtrl_drop_enable : std_logic;
  signal bridge_interruptCtrl_drop_flag : std_logic;
  signal zz_7 : std_logic;
  signal zz_8 : std_logic;
  signal zz_8_regNext : std_logic;
  signal bridge_interruptCtrl_filterGen_enable : std_logic;
  signal bridge_interruptCtrl_filterGen_flag : std_logic;
  signal zz_9 : std_logic;
  signal zz_10 : unsigned(9 downto 0);
  signal zz_11 : unsigned(19 downto 0) := "00000000000000000000";
  signal zz_12 : unsigned(5 downto 0) := "000000";
  signal bridge_i2cBuffer_scl_write_regNext : std_logic;
  signal bridge_i2cBuffer_sda_write_regNext : std_logic;
begin
  io_apb_PREADY <= zz_16;
  zz_17 <= (pkg_toStdLogic(i2cCtrl_io_bus_cmd_kind = pkg_enum.STOP) or pkg_toStdLogic(i2cCtrl_io_bus_cmd_kind = pkg_enum.DROP));
  zz_18 <= (not bridge_inAckState);
  zz_19 <= (bridge_wasntAck and (not bridge_isMasterMode));
  zz_20 <= (not bridge_inAckState);
  i2cCtrl : entity work.I2cSlave
    port map ( 
      io_i2c_sda_write => i2cCtrl_io_i2c_sda_write,
      io_i2c_sda_read => bridge_i2cBuffer_sda_read,
      io_i2c_scl_write => i2cCtrl_io_i2c_scl_write,
      io_i2c_scl_read => bridge_i2cBuffer_scl_read,
      io_config_samplingClockDivider => zz_10,
      io_config_timeout => zz_11,
      io_config_tsuData => zz_12,
      io_bus_cmd_kind => i2cCtrl_io_bus_cmd_kind,
      io_bus_cmd_data => i2cCtrl_io_bus_cmd_data,
      io_bus_rsp_valid => zz_13,
      io_bus_rsp_enable => zz_14,
      io_bus_rsp_data => zz_15,
      io_internals_inFrame => i2cCtrl_io_internals_inFrame,
      io_internals_sdaRead => i2cCtrl_io_internals_sdaRead,
      io_internals_sclRead => i2cCtrl_io_internals_sclRead,
      clk => clk,
      reset => reset 
    );
  zz_16 <= pkg_toStdLogic(true);
  process(io_apb_PADDR,bridge_rxData_valid,bridge_rxData_value,bridge_rxAck_valid,bridge_rxAck_value,bridge_txData_valid,bridge_txData_enable,bridge_txAck_valid,bridge_txAck_enable,bridge_addressFilter_hits_3,bridge_addressFilter_hits_2,bridge_addressFilter_hits_1,bridge_addressFilter_hits_0,bridge_addressFilter_byte0,bridge_interruptCtrl_rxDataEnable,bridge_interruptCtrl_rxAckEnable,bridge_interruptCtrl_txDataEnable,bridge_interruptCtrl_txAckEnable,bridge_interruptCtrl_start_enable,bridge_interruptCtrl_restart_enable,bridge_interruptCtrl_end_enable,bridge_interruptCtrl_drop_enable,bridge_interruptCtrl_filterGen_enable,bridge_interruptCtrl_start_flag,bridge_interruptCtrl_restart_flag,bridge_interruptCtrl_end_flag,bridge_interruptCtrl_drop_flag,bridge_interruptCtrl_filterGen_flag)
  begin
    io_apb_PRDATA <= pkg_stdLogicVector("00000000000000000000000000000000");
    case io_apb_PADDR is
      when "00001000" =>
        io_apb_PRDATA(8 downto 8) <= pkg_toStdLogicVector(bridge_rxData_valid);
        io_apb_PRDATA(7 downto 0) <= bridge_rxData_value;
      when "00001100" =>
        io_apb_PRDATA(8 downto 8) <= pkg_toStdLogicVector(bridge_rxAck_valid);
        io_apb_PRDATA(0 downto 0) <= pkg_toStdLogicVector(bridge_rxAck_value);
      when "00000000" =>
        io_apb_PRDATA(8 downto 8) <= pkg_toStdLogicVector(bridge_txData_valid);
        io_apb_PRDATA(9 downto 9) <= pkg_toStdLogicVector(bridge_txData_enable);
      when "00000100" =>
        io_apb_PRDATA(8 downto 8) <= pkg_toStdLogicVector(bridge_txAck_valid);
        io_apb_PRDATA(9 downto 9) <= pkg_toStdLogicVector(bridge_txAck_enable);
      when "10000000" =>
        io_apb_PRDATA(3 downto 0) <= pkg_cat(pkg_toStdLogicVector(bridge_addressFilter_hits_3),pkg_cat(pkg_toStdLogicVector(bridge_addressFilter_hits_2),pkg_cat(pkg_toStdLogicVector(bridge_addressFilter_hits_1),pkg_toStdLogicVector(bridge_addressFilter_hits_0))));
      when "10000100" =>
        io_apb_PRDATA(0 downto 0) <= pkg_toStdLogicVector(pkg_extract(bridge_addressFilter_byte0,0));
      when "00100000" =>
        io_apb_PRDATA(0 downto 0) <= pkg_toStdLogicVector(bridge_interruptCtrl_rxDataEnable);
        io_apb_PRDATA(1 downto 1) <= pkg_toStdLogicVector(bridge_interruptCtrl_rxAckEnable);
        io_apb_PRDATA(2 downto 2) <= pkg_toStdLogicVector(bridge_interruptCtrl_txDataEnable);
        io_apb_PRDATA(3 downto 3) <= pkg_toStdLogicVector(bridge_interruptCtrl_txAckEnable);
        io_apb_PRDATA(4 downto 4) <= pkg_toStdLogicVector(bridge_interruptCtrl_start_enable);
        io_apb_PRDATA(5 downto 5) <= pkg_toStdLogicVector(bridge_interruptCtrl_restart_enable);
        io_apb_PRDATA(6 downto 6) <= pkg_toStdLogicVector(bridge_interruptCtrl_end_enable);
        io_apb_PRDATA(7 downto 7) <= pkg_toStdLogicVector(bridge_interruptCtrl_drop_enable);
        io_apb_PRDATA(17 downto 17) <= pkg_toStdLogicVector(bridge_interruptCtrl_filterGen_enable);
      when "00100100" =>
        io_apb_PRDATA(4 downto 4) <= pkg_toStdLogicVector(bridge_interruptCtrl_start_flag);
        io_apb_PRDATA(5 downto 5) <= pkg_toStdLogicVector(bridge_interruptCtrl_restart_flag);
        io_apb_PRDATA(6 downto 6) <= pkg_toStdLogicVector(bridge_interruptCtrl_end_flag);
        io_apb_PRDATA(7 downto 7) <= pkg_toStdLogicVector(bridge_interruptCtrl_drop_flag);
        io_apb_PRDATA(17 downto 17) <= pkg_toStdLogicVector(bridge_interruptCtrl_filterGen_flag);
      when others =>
    end case;
  end process;

  busCtrl_askWrite <= ((pkg_extract(io_apb_PSEL,0) and io_apb_PENABLE) and io_apb_PWRITE);
  busCtrl_askRead <= ((pkg_extract(io_apb_PSEL,0) and io_apb_PENABLE) and (not io_apb_PWRITE));
  busCtrl_doWrite <= (((pkg_extract(io_apb_PSEL,0) and io_apb_PENABLE) and zz_16) and io_apb_PWRITE);
  busCtrl_doRead <= (((pkg_extract(io_apb_PSEL,0) and io_apb_PENABLE) and zz_16) and (not io_apb_PWRITE));
  process(i2cCtrl_io_bus_cmd_kind)
  begin
    bridge_frameReset <= pkg_toStdLogic(false);
    case i2cCtrl_io_bus_cmd_kind is
      when pkg_enum.START =>
        bridge_frameReset <= pkg_toStdLogic(true);
      when pkg_enum.RESTART =>
        bridge_frameReset <= pkg_toStdLogic(true);
      when pkg_enum.STOP =>
        bridge_frameReset <= pkg_toStdLogic(true);
      when pkg_enum.DROP =>
        bridge_frameReset <= pkg_toStdLogic(true);
      when others =>
    end case;
  end process;

  bridge_i2cBuffer_sda_write <= i2cCtrl_io_i2c_sda_write;
  bridge_i2cBuffer_scl_write <= i2cCtrl_io_i2c_scl_write;
  process(io_apb_PADDR,busCtrl_doRead)
  begin
    zz_1 <= pkg_toStdLogic(false);
    case io_apb_PADDR is
      when "00001000" =>
        if busCtrl_doRead = '1' then
          zz_1 <= pkg_toStdLogic(true);
        end if;
      when others =>
    end case;
  end process;

  process(io_apb_PADDR,busCtrl_doRead)
  begin
    zz_2 <= pkg_toStdLogic(false);
    case io_apb_PADDR is
      when "00001100" =>
        if busCtrl_doRead = '1' then
          zz_2 <= pkg_toStdLogic(true);
        end if;
      when others =>
    end case;
  end process;

  process(zz_17)
  begin
    bridge_txData_forceDisable <= pkg_toStdLogic(false);
    if zz_17 = '1' then
      bridge_txData_forceDisable <= pkg_toStdLogic(false);
    end if;
  end process;

  process(bridge_addressFilter_byte0Is10Bit,bridge_addressFilter_state,bridge_addressFilter_addresses_3_enable,bridge_addressFilter_addresses_3_is10Bit,bridge_addressFilter_byte0,bridge_addressFilter_addresses_3_value,bridge_addressFilter_addresses_2_enable,bridge_addressFilter_addresses_2_is10Bit,bridge_addressFilter_addresses_2_value,bridge_addressFilter_addresses_1_enable,bridge_addressFilter_addresses_1_is10Bit,bridge_addressFilter_addresses_1_value,bridge_addressFilter_addresses_0_enable,bridge_addressFilter_addresses_0_is10Bit,bridge_addressFilter_addresses_0_value)
  begin
    bridge_txAck_forceAck <= pkg_toStdLogic(false);
    if ((bridge_addressFilter_byte0Is10Bit and pkg_toStdLogic(bridge_addressFilter_state = pkg_unsigned("01"))) and pkg_toStdLogic(pkg_cat(pkg_toStdLogicVector(((bridge_addressFilter_addresses_3_enable and bridge_addressFilter_addresses_3_is10Bit) and pkg_toStdLogic(pkg_extract(bridge_addressFilter_byte0,2,1) = pkg_extract(bridge_addressFilter_addresses_3_value,9,8)))),pkg_cat(pkg_toStdLogicVector(((bridge_addressFilter_addresses_2_enable and bridge_addressFilter_addresses_2_is10Bit) and pkg_toStdLogic(pkg_extract(bridge_addressFilter_byte0,2,1) = pkg_extract(bridge_addressFilter_addresses_2_value,9,8)))),pkg_cat(pkg_toStdLogicVector(((bridge_addressFilter_addresses_1_enable and bridge_addressFilter_addresses_1_is10Bit) and pkg_toStdLogic(pkg_extract(bridge_addressFilter_byte0,2,1) = pkg_extract(bridge_addressFilter_addresses_1_value,9,8)))),pkg_toStdLogicVector(((bridge_addressFilter_addresses_0_enable and bridge_addressFilter_addresses_0_is10Bit) and pkg_toStdLogic(pkg_extract(bridge_addressFilter_byte0,2,1) = pkg_extract(bridge_addressFilter_addresses_0_value,9,8))))))) /= pkg_stdLogicVector("0000"))) = '1' then
      bridge_txAck_forceAck <= pkg_toStdLogic(true);
    end if;
  end process;

  bridge_addressFilter_byte0Is10Bit <= pkg_toStdLogic(pkg_extract(bridge_addressFilter_byte0,7,3) = pkg_stdLogicVector("11110"));
  bridge_addressFilter_hits_0 <= (bridge_addressFilter_addresses_0_enable and pkg_mux((not bridge_addressFilter_addresses_0_is10Bit),(pkg_toStdLogic(pkg_shiftRight(bridge_addressFilter_byte0,1) = pkg_extract(bridge_addressFilter_addresses_0_value,6,0)) and pkg_toStdLogic(bridge_addressFilter_state /= pkg_unsigned("00"))),(pkg_toStdLogic(pkg_cat(pkg_extract(bridge_addressFilter_byte0,2,1),bridge_addressFilter_byte1) = bridge_addressFilter_addresses_0_value) and pkg_toStdLogic(bridge_addressFilter_state = pkg_unsigned("10")))));
  bridge_addressFilter_hits_1 <= (bridge_addressFilter_addresses_1_enable and pkg_mux((not bridge_addressFilter_addresses_1_is10Bit),(pkg_toStdLogic(pkg_shiftRight(bridge_addressFilter_byte0,1) = pkg_extract(bridge_addressFilter_addresses_1_value,6,0)) and pkg_toStdLogic(bridge_addressFilter_state /= pkg_unsigned("00"))),(pkg_toStdLogic(pkg_cat(pkg_extract(bridge_addressFilter_byte0,2,1),bridge_addressFilter_byte1) = bridge_addressFilter_addresses_1_value) and pkg_toStdLogic(bridge_addressFilter_state = pkg_unsigned("10")))));
  bridge_addressFilter_hits_2 <= (bridge_addressFilter_addresses_2_enable and pkg_mux((not bridge_addressFilter_addresses_2_is10Bit),(pkg_toStdLogic(pkg_shiftRight(bridge_addressFilter_byte0,1) = pkg_extract(bridge_addressFilter_addresses_2_value,6,0)) and pkg_toStdLogic(bridge_addressFilter_state /= pkg_unsigned("00"))),(pkg_toStdLogic(pkg_cat(pkg_extract(bridge_addressFilter_byte0,2,1),bridge_addressFilter_byte1) = bridge_addressFilter_addresses_2_value) and pkg_toStdLogic(bridge_addressFilter_state = pkg_unsigned("10")))));
  bridge_addressFilter_hits_3 <= (bridge_addressFilter_addresses_3_enable and pkg_mux((not bridge_addressFilter_addresses_3_is10Bit),(pkg_toStdLogic(pkg_shiftRight(bridge_addressFilter_byte0,1) = pkg_extract(bridge_addressFilter_addresses_3_value,6,0)) and pkg_toStdLogic(bridge_addressFilter_state /= pkg_unsigned("00"))),(pkg_toStdLogic(pkg_cat(pkg_extract(bridge_addressFilter_byte0,2,1),bridge_addressFilter_byte1) = bridge_addressFilter_addresses_3_value) and pkg_toStdLogic(bridge_addressFilter_state = pkg_unsigned("10")))));
  zz_3 <= pkg_toStdLogic(pkg_cat(pkg_toStdLogicVector(bridge_addressFilter_hits_3),pkg_cat(pkg_toStdLogicVector(bridge_addressFilter_hits_2),pkg_cat(pkg_toStdLogicVector(bridge_addressFilter_hits_1),pkg_toStdLogicVector(bridge_addressFilter_hits_0)))) /= pkg_stdLogicVector("0000"));
  process(zz_18,bridge_txData_valid,bridge_rxData_valid,bridge_rxData_listen,i2cCtrl_io_bus_cmd_kind,bridge_txData_forceDisable,bridge_txAck_valid,bridge_rxAck_valid,bridge_rxAck_listen,bridge_txAck_forceAck,zz_19)
  begin
    if zz_18 = '1' then
      zz_13 <= ((bridge_txData_valid and (not (bridge_rxData_valid and bridge_rxData_listen))) and pkg_toStdLogic(i2cCtrl_io_bus_cmd_kind = pkg_enum.DRIVE));
      if bridge_txData_forceDisable = '1' then
        zz_13 <= pkg_toStdLogic(true);
      end if;
    else
      zz_13 <= ((bridge_txAck_valid and (not (bridge_rxAck_valid and bridge_rxAck_listen))) and pkg_toStdLogic(i2cCtrl_io_bus_cmd_kind = pkg_enum.DRIVE));
      if bridge_txAck_forceAck = '1' then
        zz_13 <= pkg_toStdLogic(true);
      end if;
    end if;
    if zz_19 = '1' then
      zz_13 <= pkg_toStdLogic(i2cCtrl_io_bus_cmd_kind = pkg_enum.DRIVE);
    end if;
  end process;

  process(zz_18,bridge_txData_enable,bridge_txData_forceDisable,bridge_txAck_enable,bridge_txAck_forceAck,zz_19)
  begin
    if zz_18 = '1' then
      zz_14 <= bridge_txData_enable;
      if bridge_txData_forceDisable = '1' then
        zz_14 <= pkg_toStdLogic(false);
      end if;
    else
      zz_14 <= bridge_txAck_enable;
      if bridge_txAck_forceAck = '1' then
        zz_14 <= pkg_toStdLogic(true);
      end if;
    end if;
    if zz_19 = '1' then
      zz_14 <= pkg_toStdLogic(false);
    end if;
  end process;

  process(zz_18,bridge_txData_value,bridge_dataCounter,bridge_txAck_value,bridge_txAck_forceAck)
  begin
    if zz_18 = '1' then
      zz_15 <= pkg_extract(bridge_txData_value,to_integer((pkg_unsigned("111") - bridge_dataCounter)));
    else
      zz_15 <= bridge_txAck_value;
      if bridge_txAck_forceAck = '1' then
        zz_15 <= pkg_toStdLogic(false);
      end if;
    end if;
  end process;

  bridge_isMasterMode <= pkg_toStdLogic(false);
  process(bridge_interruptCtrl_rxDataEnable,bridge_rxData_valid,bridge_interruptCtrl_rxAckEnable,bridge_rxAck_valid,bridge_interruptCtrl_txDataEnable,bridge_txData_valid,bridge_interruptCtrl_txAckEnable,bridge_txAck_valid,bridge_interruptCtrl_start_flag,bridge_interruptCtrl_restart_flag,bridge_interruptCtrl_end_flag,bridge_interruptCtrl_drop_flag,bridge_interruptCtrl_filterGen_flag)
  begin
    bridge_interruptCtrl_interrupt <= ((((bridge_interruptCtrl_rxDataEnable and bridge_rxData_valid) or (bridge_interruptCtrl_rxAckEnable and bridge_rxAck_valid)) or (bridge_interruptCtrl_txDataEnable and (not bridge_txData_valid))) or (bridge_interruptCtrl_txAckEnable and (not bridge_txAck_valid)));
    if bridge_interruptCtrl_start_flag = '1' then
      bridge_interruptCtrl_interrupt <= pkg_toStdLogic(true);
    end if;
    if bridge_interruptCtrl_restart_flag = '1' then
      bridge_interruptCtrl_interrupt <= pkg_toStdLogic(true);
    end if;
    if bridge_interruptCtrl_end_flag = '1' then
      bridge_interruptCtrl_interrupt <= pkg_toStdLogic(true);
    end if;
    if bridge_interruptCtrl_drop_flag = '1' then
      bridge_interruptCtrl_interrupt <= pkg_toStdLogic(true);
    end if;
    if bridge_interruptCtrl_filterGen_flag = '1' then
      bridge_interruptCtrl_interrupt <= pkg_toStdLogic(true);
    end if;
  end process;

  process(io_apb_PADDR,busCtrl_doWrite)
  begin
    zz_4 <= pkg_toStdLogic(false);
    case io_apb_PADDR is
      when "00100100" =>
        if busCtrl_doWrite = '1' then
          zz_4 <= pkg_toStdLogic(true);
        end if;
      when others =>
    end case;
  end process;

  process(io_apb_PADDR,busCtrl_doWrite)
  begin
    zz_5 <= pkg_toStdLogic(false);
    case io_apb_PADDR is
      when "00100100" =>
        if busCtrl_doWrite = '1' then
          zz_5 <= pkg_toStdLogic(true);
        end if;
      when others =>
    end case;
  end process;

  process(io_apb_PADDR,busCtrl_doWrite)
  begin
    zz_6 <= pkg_toStdLogic(false);
    case io_apb_PADDR is
      when "00100100" =>
        if busCtrl_doWrite = '1' then
          zz_6 <= pkg_toStdLogic(true);
        end if;
      when others =>
    end case;
  end process;

  process(io_apb_PADDR,busCtrl_doWrite)
  begin
    zz_7 <= pkg_toStdLogic(false);
    case io_apb_PADDR is
      when "00100100" =>
        if busCtrl_doWrite = '1' then
          zz_7 <= pkg_toStdLogic(true);
        end if;
      when others =>
    end case;
  end process;

  zz_8 <= pkg_toStdLogic(pkg_cat(pkg_toStdLogicVector(bridge_addressFilter_hits_3),pkg_cat(pkg_toStdLogicVector(bridge_addressFilter_hits_2),pkg_cat(pkg_toStdLogicVector(bridge_addressFilter_hits_1),pkg_toStdLogicVector(bridge_addressFilter_hits_0)))) /= pkg_stdLogicVector("0000"));
  process(io_apb_PADDR,busCtrl_doWrite)
  begin
    zz_9 <= pkg_toStdLogic(false);
    case io_apb_PADDR is
      when "00100100" =>
        if busCtrl_doWrite = '1' then
          zz_9 <= pkg_toStdLogic(true);
        end if;
      when others =>
    end case;
  end process;

  io_i2c_scl_write <= bridge_i2cBuffer_scl_write_regNext;
  io_i2c_sda_write <= bridge_i2cBuffer_sda_write_regNext;
  bridge_i2cBuffer_scl_read <= io_i2c_scl_read;
  bridge_i2cBuffer_sda_read <= io_i2c_sda_read;
  io_interrupt <= bridge_interruptCtrl_interrupt;
  process(clk, reset)
  begin
    if reset = '1' then
      bridge_rxData_event <= pkg_toStdLogic(false);
      bridge_rxData_listen <= pkg_toStdLogic(false);
      bridge_rxData_valid <= pkg_toStdLogic(false);
      bridge_rxAck_listen <= pkg_toStdLogic(false);
      bridge_rxAck_valid <= pkg_toStdLogic(false);
      bridge_txData_valid <= pkg_toStdLogic(true);
      bridge_txData_repeat <= pkg_toStdLogic(true);
      bridge_txData_enable <= pkg_toStdLogic(false);
      bridge_txAck_valid <= pkg_toStdLogic(true);
      bridge_txAck_repeat <= pkg_toStdLogic(true);
      bridge_txAck_enable <= pkg_toStdLogic(false);
      bridge_addressFilter_addresses_0_enable <= pkg_toStdLogic(false);
      bridge_addressFilter_addresses_1_enable <= pkg_toStdLogic(false);
      bridge_addressFilter_addresses_2_enable <= pkg_toStdLogic(false);
      bridge_addressFilter_addresses_3_enable <= pkg_toStdLogic(false);
      bridge_addressFilter_state <= pkg_unsigned("00");
      bridge_dataCounter <= pkg_unsigned("000");
      bridge_inAckState <= pkg_toStdLogic(false);
      bridge_wasntAck <= pkg_toStdLogic(false);
      bridge_interruptCtrl_rxDataEnable <= pkg_toStdLogic(false);
      bridge_interruptCtrl_rxAckEnable <= pkg_toStdLogic(false);
      bridge_interruptCtrl_txDataEnable <= pkg_toStdLogic(false);
      bridge_interruptCtrl_txAckEnable <= pkg_toStdLogic(false);
      bridge_interruptCtrl_start_enable <= pkg_toStdLogic(false);
      bridge_interruptCtrl_start_flag <= pkg_toStdLogic(false);
      bridge_interruptCtrl_restart_enable <= pkg_toStdLogic(false);
      bridge_interruptCtrl_restart_flag <= pkg_toStdLogic(false);
      bridge_interruptCtrl_end_enable <= pkg_toStdLogic(false);
      bridge_interruptCtrl_end_flag <= pkg_toStdLogic(false);
      bridge_interruptCtrl_drop_enable <= pkg_toStdLogic(false);
      bridge_interruptCtrl_drop_flag <= pkg_toStdLogic(false);
      bridge_interruptCtrl_filterGen_enable <= pkg_toStdLogic(false);
      bridge_interruptCtrl_filterGen_flag <= pkg_toStdLogic(false);
      zz_10 <= pkg_unsigned("0000000000");
      bridge_i2cBuffer_scl_write_regNext <= pkg_toStdLogic(true);
      bridge_i2cBuffer_sda_write_regNext <= pkg_toStdLogic(true);
    elsif rising_edge(clk) then
      bridge_rxData_event <= pkg_toStdLogic(false);
      if zz_1 = '1' then
        bridge_rxData_valid <= pkg_toStdLogic(false);
      end if;
      if zz_2 = '1' then
        bridge_rxAck_valid <= pkg_toStdLogic(false);
      end if;
      if bridge_rxData_event = '1' then
        case bridge_addressFilter_state is
          when "00" =>
            bridge_addressFilter_state <= pkg_unsigned("01");
          when "01" =>
            bridge_addressFilter_state <= pkg_unsigned("10");
          when others =>
        end case;
      end if;
      if bridge_frameReset = '1' then
        bridge_addressFilter_state <= pkg_unsigned("00");
      end if;
      if (zz_3 and (not zz_3_regNext)) = '1' then
        bridge_txAck_valid <= pkg_toStdLogic(false);
      end if;
      case i2cCtrl_io_bus_cmd_kind is
        when pkg_enum.READ =>
          if zz_20 = '1' then
            bridge_dataCounter <= (bridge_dataCounter + pkg_unsigned("001"));
            if pkg_toStdLogic(zz_15 /= i2cCtrl_io_bus_cmd_data) = '1' then
              if bridge_txData_disableOnDataConflict = '1' then
                bridge_txData_enable <= pkg_toStdLogic(false);
              end if;
              if bridge_txAck_disableOnDataConflict = '1' then
                bridge_txAck_enable <= pkg_toStdLogic(false);
              end if;
            end if;
            if pkg_toStdLogic(bridge_dataCounter = pkg_unsigned("111")) = '1' then
              if bridge_rxData_listen = '1' then
                bridge_rxData_valid <= pkg_toStdLogic(true);
              end if;
              bridge_rxData_event <= pkg_toStdLogic(true);
              bridge_inAckState <= pkg_toStdLogic(true);
              if (bridge_txData_valid and (not bridge_txData_repeat)) = '1' then
                bridge_txData_valid <= pkg_toStdLogic(false);
              end if;
            end if;
          else
            if bridge_rxAck_listen = '1' then
              bridge_rxAck_valid <= pkg_toStdLogic(true);
            end if;
            bridge_inAckState <= pkg_toStdLogic(false);
            bridge_wasntAck <= i2cCtrl_io_bus_cmd_data;
            if (bridge_txAck_valid and (not bridge_txAck_repeat)) = '1' then
              bridge_txAck_valid <= pkg_toStdLogic(false);
            end if;
          end if;
        when others =>
      end case;
      if bridge_frameReset = '1' then
        bridge_inAckState <= pkg_toStdLogic(false);
        bridge_dataCounter <= pkg_unsigned("000");
        bridge_wasntAck <= pkg_toStdLogic(false);
      end if;
      if zz_17 = '1' then
        bridge_txData_valid <= pkg_toStdLogic(true);
        bridge_txData_enable <= pkg_toStdLogic(false);
        bridge_txData_repeat <= pkg_toStdLogic(true);
        bridge_txAck_valid <= pkg_toStdLogic(true);
        bridge_txAck_enable <= pkg_toStdLogic(false);
        bridge_txAck_repeat <= pkg_toStdLogic(true);
        bridge_rxData_listen <= pkg_toStdLogic(false);
        bridge_rxAck_listen <= pkg_toStdLogic(false);
      end if;
      if pkg_toStdLogic(i2cCtrl_io_bus_cmd_kind = pkg_enum.START) = '1' then
        bridge_interruptCtrl_start_flag <= pkg_toStdLogic(true);
      end if;
      if (not bridge_interruptCtrl_start_enable) = '1' then
        bridge_interruptCtrl_start_flag <= pkg_toStdLogic(false);
      end if;
      if zz_4 = '1' then
        if pkg_extract(pkg_extract(io_apb_PWDATA,4,4),0) = '1' then
          bridge_interruptCtrl_start_flag <= pkg_extract(pkg_stdLogicVector("0"),0);
        end if;
      end if;
      if pkg_toStdLogic(i2cCtrl_io_bus_cmd_kind = pkg_enum.RESTART) = '1' then
        bridge_interruptCtrl_restart_flag <= pkg_toStdLogic(true);
      end if;
      if (not bridge_interruptCtrl_restart_enable) = '1' then
        bridge_interruptCtrl_restart_flag <= pkg_toStdLogic(false);
      end if;
      if zz_5 = '1' then
        if pkg_extract(pkg_extract(io_apb_PWDATA,5,5),0) = '1' then
          bridge_interruptCtrl_restart_flag <= pkg_extract(pkg_stdLogicVector("0"),0);
        end if;
      end if;
      if pkg_toStdLogic(i2cCtrl_io_bus_cmd_kind = pkg_enum.STOP) = '1' then
        bridge_interruptCtrl_end_flag <= pkg_toStdLogic(true);
      end if;
      if (not bridge_interruptCtrl_end_enable) = '1' then
        bridge_interruptCtrl_end_flag <= pkg_toStdLogic(false);
      end if;
      if zz_6 = '1' then
        if pkg_extract(pkg_extract(io_apb_PWDATA,6,6),0) = '1' then
          bridge_interruptCtrl_end_flag <= pkg_extract(pkg_stdLogicVector("0"),0);
        end if;
      end if;
      if pkg_toStdLogic(i2cCtrl_io_bus_cmd_kind = pkg_enum.DROP) = '1' then
        bridge_interruptCtrl_drop_flag <= pkg_toStdLogic(true);
      end if;
      if (not bridge_interruptCtrl_drop_enable) = '1' then
        bridge_interruptCtrl_drop_flag <= pkg_toStdLogic(false);
      end if;
      if zz_7 = '1' then
        if pkg_extract(pkg_extract(io_apb_PWDATA,7,7),0) = '1' then
          bridge_interruptCtrl_drop_flag <= pkg_extract(pkg_stdLogicVector("0"),0);
        end if;
      end if;
      if (zz_8 and (not zz_8_regNext)) = '1' then
        bridge_interruptCtrl_filterGen_flag <= pkg_toStdLogic(true);
      end if;
      if (not bridge_interruptCtrl_filterGen_enable) = '1' then
        bridge_interruptCtrl_filterGen_flag <= pkg_toStdLogic(false);
      end if;
      if zz_9 = '1' then
        if pkg_extract(pkg_extract(io_apb_PWDATA,17,17),0) = '1' then
          bridge_interruptCtrl_filterGen_flag <= pkg_extract(pkg_stdLogicVector("0"),0);
        end if;
      end if;
      bridge_i2cBuffer_scl_write_regNext <= bridge_i2cBuffer_scl_write;
      bridge_i2cBuffer_sda_write_regNext <= bridge_i2cBuffer_sda_write;
      case io_apb_PADDR is
        when "00001000" =>
          if busCtrl_doWrite = '1' then
            bridge_rxData_listen <= pkg_extract(pkg_extract(io_apb_PWDATA,9,9),0);
          end if;
        when "00001100" =>
          if busCtrl_doWrite = '1' then
            bridge_rxAck_listen <= pkg_extract(pkg_extract(io_apb_PWDATA,9,9),0);
          end if;
        when "00000000" =>
          if busCtrl_doWrite = '1' then
            bridge_txData_repeat <= pkg_extract(pkg_extract(io_apb_PWDATA,10,10),0);
            bridge_txData_valid <= pkg_extract(pkg_extract(io_apb_PWDATA,8,8),0);
            bridge_txData_enable <= pkg_extract(pkg_extract(io_apb_PWDATA,9,9),0);
          end if;
        when "00000100" =>
          if busCtrl_doWrite = '1' then
            bridge_txAck_repeat <= pkg_extract(pkg_extract(io_apb_PWDATA,10,10),0);
            bridge_txAck_valid <= pkg_extract(pkg_extract(io_apb_PWDATA,8,8),0);
            bridge_txAck_enable <= pkg_extract(pkg_extract(io_apb_PWDATA,9,9),0);
          end if;
        when "10001000" =>
          if busCtrl_doWrite = '1' then
            bridge_addressFilter_addresses_0_enable <= pkg_extract(pkg_extract(io_apb_PWDATA,15,15),0);
          end if;
        when "10001100" =>
          if busCtrl_doWrite = '1' then
            bridge_addressFilter_addresses_1_enable <= pkg_extract(pkg_extract(io_apb_PWDATA,15,15),0);
          end if;
        when "10010000" =>
          if busCtrl_doWrite = '1' then
            bridge_addressFilter_addresses_2_enable <= pkg_extract(pkg_extract(io_apb_PWDATA,15,15),0);
          end if;
        when "10010100" =>
          if busCtrl_doWrite = '1' then
            bridge_addressFilter_addresses_3_enable <= pkg_extract(pkg_extract(io_apb_PWDATA,15,15),0);
          end if;
        when "00100000" =>
          if busCtrl_doWrite = '1' then
            bridge_interruptCtrl_rxDataEnable <= pkg_extract(pkg_extract(io_apb_PWDATA,0,0),0);
            bridge_interruptCtrl_rxAckEnable <= pkg_extract(pkg_extract(io_apb_PWDATA,1,1),0);
            bridge_interruptCtrl_txDataEnable <= pkg_extract(pkg_extract(io_apb_PWDATA,2,2),0);
            bridge_interruptCtrl_txAckEnable <= pkg_extract(pkg_extract(io_apb_PWDATA,3,3),0);
            bridge_interruptCtrl_start_enable <= pkg_extract(pkg_extract(io_apb_PWDATA,4,4),0);
            bridge_interruptCtrl_restart_enable <= pkg_extract(pkg_extract(io_apb_PWDATA,5,5),0);
            bridge_interruptCtrl_end_enable <= pkg_extract(pkg_extract(io_apb_PWDATA,6,6),0);
            bridge_interruptCtrl_drop_enable <= pkg_extract(pkg_extract(io_apb_PWDATA,7,7),0);
            bridge_interruptCtrl_filterGen_enable <= pkg_extract(pkg_extract(io_apb_PWDATA,17,17),0);
          end if;
        when "00101000" =>
          if busCtrl_doWrite = '1' then
            zz_10 <= unsigned(pkg_extract(io_apb_PWDATA,9,0));
          end if;
        when others =>
      end case;
    end if;
  end process;

  process(clk)
  begin
    if rising_edge(clk) then
      if bridge_rxData_event = '1' then
        case bridge_addressFilter_state is
          when "00" =>
            bridge_addressFilter_byte0 <= bridge_rxData_value;
          when "01" =>
            bridge_addressFilter_byte1 <= bridge_rxData_value;
          when others =>
        end case;
      end if;
      zz_3_regNext <= zz_3;
      case i2cCtrl_io_bus_cmd_kind is
        when pkg_enum.READ =>
          if zz_20 = '1' then
            bridge_rxData_value(to_integer((pkg_unsigned("111") - bridge_dataCounter))) <= i2cCtrl_io_bus_cmd_data;
          else
            bridge_rxAck_value <= i2cCtrl_io_bus_cmd_data;
          end if;
        when others =>
      end case;
      if zz_17 = '1' then
        bridge_txData_disableOnDataConflict <= pkg_toStdLogic(false);
        bridge_txAck_disableOnDataConflict <= pkg_toStdLogic(false);
      end if;
      zz_8_regNext <= zz_8;
      case io_apb_PADDR is
        when "00000000" =>
          if busCtrl_doWrite = '1' then
            bridge_txData_value <= pkg_extract(io_apb_PWDATA,7,0);
            bridge_txData_disableOnDataConflict <= pkg_extract(pkg_extract(io_apb_PWDATA,11,11),0);
          end if;
        when "00000100" =>
          if busCtrl_doWrite = '1' then
            bridge_txAck_value <= pkg_extract(pkg_extract(io_apb_PWDATA,0,0),0);
            bridge_txAck_disableOnDataConflict <= pkg_extract(pkg_extract(io_apb_PWDATA,11,11),0);
          end if;
        when "10001000" =>
          if busCtrl_doWrite = '1' then
            bridge_addressFilter_addresses_0_value <= pkg_extract(io_apb_PWDATA,9,0);
            bridge_addressFilter_addresses_0_is10Bit <= pkg_extract(pkg_extract(io_apb_PWDATA,14,14),0);
          end if;
        when "10001100" =>
          if busCtrl_doWrite = '1' then
            bridge_addressFilter_addresses_1_value <= pkg_extract(io_apb_PWDATA,9,0);
            bridge_addressFilter_addresses_1_is10Bit <= pkg_extract(pkg_extract(io_apb_PWDATA,14,14),0);
          end if;
        when "10010000" =>
          if busCtrl_doWrite = '1' then
            bridge_addressFilter_addresses_2_value <= pkg_extract(io_apb_PWDATA,9,0);
            bridge_addressFilter_addresses_2_is10Bit <= pkg_extract(pkg_extract(io_apb_PWDATA,14,14),0);
          end if;
        when "10010100" =>
          if busCtrl_doWrite = '1' then
            bridge_addressFilter_addresses_3_value <= pkg_extract(io_apb_PWDATA,9,0);
            bridge_addressFilter_addresses_3_is10Bit <= pkg_extract(pkg_extract(io_apb_PWDATA,14,14),0);
          end if;
        when "00101100" =>
          if busCtrl_doWrite = '1' then
            zz_11 <= unsigned(pkg_extract(io_apb_PWDATA,19,0));
          end if;
        when "00110000" =>
          if busCtrl_doWrite = '1' then
            zz_12 <= unsigned(pkg_extract(io_apb_PWDATA,5,0));
          end if;
        when others =>
      end case;
    end if;
  end process;

end arch;

