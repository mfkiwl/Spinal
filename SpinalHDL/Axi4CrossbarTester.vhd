-- Generator : SpinalHDL v1.4.3    git head : adf552d8f500e7419fff395b7049228e4bc5de26
-- Component : Axi4CrossbarTester
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


entity Axi4ReadOnlyErrorSlave is
  port(
    io_axi_ar_valid : in std_logic;
    io_axi_ar_ready : out std_logic;
    io_axi_ar_payload_addr : in unsigned(12 downto 0);
    io_axi_ar_payload_id : in unsigned(3 downto 0);
    io_axi_ar_payload_region : in std_logic_vector(3 downto 0);
    io_axi_ar_payload_len : in unsigned(7 downto 0);
    io_axi_ar_payload_size : in unsigned(2 downto 0);
    io_axi_ar_payload_burst : in std_logic_vector(1 downto 0);
    io_axi_ar_payload_lock : in std_logic_vector(0 downto 0);
    io_axi_ar_payload_cache : in std_logic_vector(3 downto 0);
    io_axi_ar_payload_qos : in std_logic_vector(3 downto 0);
    io_axi_ar_payload_prot : in std_logic_vector(2 downto 0);
    io_axi_r_valid : out std_logic;
    io_axi_r_ready : in std_logic;
    io_axi_r_payload_data : out std_logic_vector(31 downto 0);
    io_axi_r_payload_id : out unsigned(3 downto 0);
    io_axi_r_payload_resp : out std_logic_vector(1 downto 0);
    io_axi_r_payload_last : out std_logic;
    clk : in std_logic;
    reset : in std_logic
  );
end Axi4ReadOnlyErrorSlave;

architecture arch of Axi4ReadOnlyErrorSlave is
  signal zz_1 : std_logic;
  signal zz_2 : std_logic;

  signal sendRsp : std_logic;
  signal id : unsigned(3 downto 0);
  signal remaining : unsigned(7 downto 0);
  signal remainingZero : std_logic;
begin
  io_axi_ar_ready <= zz_1;
  zz_2 <= (io_axi_ar_valid and zz_1);
  remainingZero <= pkg_toStdLogic(remaining = pkg_unsigned("00000000"));
  zz_1 <= (not sendRsp);
  io_axi_r_valid <= sendRsp;
  io_axi_r_payload_id <= id;
  io_axi_r_payload_resp <= pkg_stdLogicVector("11");
  io_axi_r_payload_last <= remainingZero;
  process(clk, reset)
  begin
    if reset = '1' then
      sendRsp <= pkg_toStdLogic(false);
    elsif rising_edge(clk) then
      if zz_2 = '1' then
        sendRsp <= pkg_toStdLogic(true);
      end if;
      if sendRsp = '1' then
        if io_axi_r_ready = '1' then
          if remainingZero = '1' then
            sendRsp <= pkg_toStdLogic(false);
          end if;
        end if;
      end if;
    end if;
  end process;

  process(clk)
  begin
    if rising_edge(clk) then
      if zz_2 = '1' then
        remaining <= io_axi_ar_payload_len;
        id <= io_axi_ar_payload_id;
      end if;
      if sendRsp = '1' then
        if io_axi_r_ready = '1' then
          remaining <= (remaining - pkg_unsigned("00000001"));
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


entity Axi4WriteOnlyErrorSlave is
  port(
    io_axi_aw_valid : in std_logic;
    io_axi_aw_ready : out std_logic;
    io_axi_aw_payload_addr : in unsigned(12 downto 0);
    io_axi_aw_payload_id : in unsigned(3 downto 0);
    io_axi_aw_payload_region : in std_logic_vector(3 downto 0);
    io_axi_aw_payload_len : in unsigned(7 downto 0);
    io_axi_aw_payload_size : in unsigned(2 downto 0);
    io_axi_aw_payload_burst : in std_logic_vector(1 downto 0);
    io_axi_aw_payload_lock : in std_logic_vector(0 downto 0);
    io_axi_aw_payload_cache : in std_logic_vector(3 downto 0);
    io_axi_aw_payload_qos : in std_logic_vector(3 downto 0);
    io_axi_aw_payload_prot : in std_logic_vector(2 downto 0);
    io_axi_w_valid : in std_logic;
    io_axi_w_ready : out std_logic;
    io_axi_w_payload_data : in std_logic_vector(31 downto 0);
    io_axi_w_payload_strb : in std_logic_vector(3 downto 0);
    io_axi_w_payload_last : in std_logic;
    io_axi_b_valid : out std_logic;
    io_axi_b_ready : in std_logic;
    io_axi_b_payload_id : out unsigned(3 downto 0);
    io_axi_b_payload_resp : out std_logic_vector(1 downto 0);
    clk : in std_logic;
    reset : in std_logic
  );
end Axi4WriteOnlyErrorSlave;

architecture arch of Axi4WriteOnlyErrorSlave is
  signal zz_1 : std_logic;
  signal zz_2 : std_logic;
  signal zz_3 : std_logic;
  signal zz_4 : std_logic;

  signal consumeData : std_logic;
  signal sendRsp : std_logic;
  signal id : unsigned(3 downto 0);
begin
  io_axi_aw_ready <= zz_1;
  io_axi_w_ready <= zz_2;
  io_axi_b_valid <= zz_3;
  zz_4 <= (io_axi_aw_valid and zz_1);
  zz_1 <= (not (consumeData or sendRsp));
  zz_2 <= consumeData;
  zz_3 <= sendRsp;
  io_axi_b_payload_resp <= pkg_stdLogicVector("11");
  io_axi_b_payload_id <= id;
  process(clk, reset)
  begin
    if reset = '1' then
      consumeData <= pkg_toStdLogic(false);
      sendRsp <= pkg_toStdLogic(false);
    elsif rising_edge(clk) then
      if zz_4 = '1' then
        consumeData <= pkg_toStdLogic(true);
      end if;
      if ((io_axi_w_valid and zz_2) and io_axi_w_payload_last) = '1' then
        consumeData <= pkg_toStdLogic(false);
        sendRsp <= pkg_toStdLogic(true);
      end if;
      if (zz_3 and io_axi_b_ready) = '1' then
        sendRsp <= pkg_toStdLogic(false);
      end if;
    end if;
  end process;

  process(clk)
  begin
    if rising_edge(clk) then
      if zz_4 = '1' then
        id <= io_axi_aw_payload_id;
      end if;
    end if;
  end process;

end arch;


--Axi4ReadOnlyErrorSlave_1 remplaced by Axi4ReadOnlyErrorSlave


--Axi4WriteOnlyErrorSlave_1 remplaced by Axi4WriteOnlyErrorSlave


--Axi4ReadOnlyErrorSlave_2 remplaced by Axi4ReadOnlyErrorSlave


--Axi4WriteOnlyErrorSlave_2 remplaced by Axi4WriteOnlyErrorSlave

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.pkg_scala2hdl.all;
use work.all;
use work.pkg_enum.all;


entity StreamArbiter is
  port(
    io_inputs_0_valid : in std_logic;
    io_inputs_0_ready : out std_logic;
    io_inputs_0_payload_addr : in unsigned(12 downto 0);
    io_inputs_0_payload_id : in unsigned(4 downto 0);
    io_inputs_0_payload_region : in std_logic_vector(3 downto 0);
    io_inputs_0_payload_len : in unsigned(7 downto 0);
    io_inputs_0_payload_size : in unsigned(2 downto 0);
    io_inputs_0_payload_burst : in std_logic_vector(1 downto 0);
    io_inputs_0_payload_lock : in std_logic_vector(0 downto 0);
    io_inputs_0_payload_cache : in std_logic_vector(3 downto 0);
    io_inputs_0_payload_qos : in std_logic_vector(3 downto 0);
    io_inputs_0_payload_prot : in std_logic_vector(2 downto 0);
    io_inputs_1_valid : in std_logic;
    io_inputs_1_ready : out std_logic;
    io_inputs_1_payload_addr : in unsigned(12 downto 0);
    io_inputs_1_payload_id : in unsigned(4 downto 0);
    io_inputs_1_payload_region : in std_logic_vector(3 downto 0);
    io_inputs_1_payload_len : in unsigned(7 downto 0);
    io_inputs_1_payload_size : in unsigned(2 downto 0);
    io_inputs_1_payload_burst : in std_logic_vector(1 downto 0);
    io_inputs_1_payload_lock : in std_logic_vector(0 downto 0);
    io_inputs_1_payload_cache : in std_logic_vector(3 downto 0);
    io_inputs_1_payload_qos : in std_logic_vector(3 downto 0);
    io_inputs_1_payload_prot : in std_logic_vector(2 downto 0);
    io_output_valid : out std_logic;
    io_output_ready : in std_logic;
    io_output_payload_addr : out unsigned(12 downto 0);
    io_output_payload_id : out unsigned(4 downto 0);
    io_output_payload_region : out std_logic_vector(3 downto 0);
    io_output_payload_len : out unsigned(7 downto 0);
    io_output_payload_size : out unsigned(2 downto 0);
    io_output_payload_burst : out std_logic_vector(1 downto 0);
    io_output_payload_lock : out std_logic_vector(0 downto 0);
    io_output_payload_cache : out std_logic_vector(3 downto 0);
    io_output_payload_qos : out std_logic_vector(3 downto 0);
    io_output_payload_prot : out std_logic_vector(2 downto 0);
    io_chosen : out unsigned(0 downto 0);
    io_chosenOH : out std_logic_vector(1 downto 0);
    clk : in std_logic;
    reset : in std_logic
  );
end StreamArbiter;

architecture arch of StreamArbiter is
  signal zz_6 : std_logic;
  signal zz_7 : std_logic_vector(1 downto 0);

  signal locked : std_logic;
  signal maskProposal_0 : std_logic;
  signal maskProposal_1 : std_logic;
  signal maskLocked_0 : std_logic;
  signal maskLocked_1 : std_logic;
  signal maskRouted_0 : std_logic;
  signal maskRouted_1 : std_logic;
  signal zz_1 : unsigned(1 downto 0);
  signal zz_2 : unsigned(3 downto 0);
  signal zz_3 : unsigned(3 downto 0);
  signal zz_4 : std_logic_vector(1 downto 0);
  signal zz_5 : std_logic;
begin
  io_output_valid <= zz_6;
  io_chosenOH <= zz_7;
  maskRouted_0 <= pkg_mux(locked,maskLocked_0,maskProposal_0);
  maskRouted_1 <= pkg_mux(locked,maskLocked_1,maskProposal_1);
  zz_1 <= unsigned(pkg_cat(pkg_toStdLogicVector(io_inputs_1_valid),pkg_toStdLogicVector(io_inputs_0_valid)));
  zz_2 <= unsigned(pkg_cat(std_logic_vector(zz_1),std_logic_vector(zz_1)));
  zz_3 <= (zz_2 and pkg_not((zz_2 - pkg_resize(unsigned(pkg_cat(pkg_toStdLogicVector(maskLocked_0),pkg_toStdLogicVector(maskLocked_1))),4))));
  zz_4 <= std_logic_vector((pkg_extract(zz_3,3,2) or pkg_extract(zz_3,1,0)));
  maskProposal_0 <= pkg_extract(pkg_extract(zz_4,0,0),0);
  maskProposal_1 <= pkg_extract(pkg_extract(zz_4,1,1),0);
  zz_6 <= ((io_inputs_0_valid and maskRouted_0) or (io_inputs_1_valid and maskRouted_1));
  io_output_payload_addr <= pkg_mux(maskRouted_0,io_inputs_0_payload_addr,io_inputs_1_payload_addr);
  io_output_payload_id <= pkg_mux(maskRouted_0,io_inputs_0_payload_id,io_inputs_1_payload_id);
  io_output_payload_region <= pkg_mux(maskRouted_0,io_inputs_0_payload_region,io_inputs_1_payload_region);
  io_output_payload_len <= pkg_mux(maskRouted_0,io_inputs_0_payload_len,io_inputs_1_payload_len);
  io_output_payload_size <= pkg_mux(maskRouted_0,io_inputs_0_payload_size,io_inputs_1_payload_size);
  io_output_payload_burst <= pkg_mux(maskRouted_0,io_inputs_0_payload_burst,io_inputs_1_payload_burst);
  io_output_payload_lock <= pkg_mux(maskRouted_0,io_inputs_0_payload_lock,io_inputs_1_payload_lock);
  io_output_payload_cache <= pkg_mux(maskRouted_0,io_inputs_0_payload_cache,io_inputs_1_payload_cache);
  io_output_payload_qos <= pkg_mux(maskRouted_0,io_inputs_0_payload_qos,io_inputs_1_payload_qos);
  io_output_payload_prot <= pkg_mux(maskRouted_0,io_inputs_0_payload_prot,io_inputs_1_payload_prot);
  io_inputs_0_ready <= (maskRouted_0 and io_output_ready);
  io_inputs_1_ready <= (maskRouted_1 and io_output_ready);
  zz_7 <= pkg_cat(pkg_toStdLogicVector(maskRouted_1),pkg_toStdLogicVector(maskRouted_0));
  zz_5 <= pkg_extract(zz_7,1);
  io_chosen <= unsigned(pkg_toStdLogicVector(zz_5));
  process(clk, reset)
  begin
    if reset = '1' then
      locked <= pkg_toStdLogic(false);
      maskLocked_0 <= pkg_toStdLogic(false);
      maskLocked_1 <= pkg_toStdLogic(true);
    elsif rising_edge(clk) then
      if zz_6 = '1' then
        maskLocked_0 <= maskRouted_0;
        maskLocked_1 <= maskRouted_1;
      end if;
      if zz_6 = '1' then
        locked <= pkg_toStdLogic(true);
      end if;
      if (zz_6 and io_output_ready) = '1' then
        locked <= pkg_toStdLogic(false);
      end if;
    end if;
  end process;

end arch;


--StreamArbiter_1 remplaced by StreamArbiter

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.pkg_scala2hdl.all;
use work.all;
use work.pkg_enum.all;


entity StreamFork is
  port(
    io_input_valid : in std_logic;
    io_input_ready : out std_logic;
    io_input_payload_addr : in unsigned(12 downto 0);
    io_input_payload_id : in unsigned(4 downto 0);
    io_input_payload_region : in std_logic_vector(3 downto 0);
    io_input_payload_len : in unsigned(7 downto 0);
    io_input_payload_size : in unsigned(2 downto 0);
    io_input_payload_burst : in std_logic_vector(1 downto 0);
    io_input_payload_lock : in std_logic_vector(0 downto 0);
    io_input_payload_cache : in std_logic_vector(3 downto 0);
    io_input_payload_qos : in std_logic_vector(3 downto 0);
    io_input_payload_prot : in std_logic_vector(2 downto 0);
    io_outputs_0_valid : out std_logic;
    io_outputs_0_ready : in std_logic;
    io_outputs_0_payload_addr : out unsigned(12 downto 0);
    io_outputs_0_payload_id : out unsigned(4 downto 0);
    io_outputs_0_payload_region : out std_logic_vector(3 downto 0);
    io_outputs_0_payload_len : out unsigned(7 downto 0);
    io_outputs_0_payload_size : out unsigned(2 downto 0);
    io_outputs_0_payload_burst : out std_logic_vector(1 downto 0);
    io_outputs_0_payload_lock : out std_logic_vector(0 downto 0);
    io_outputs_0_payload_cache : out std_logic_vector(3 downto 0);
    io_outputs_0_payload_qos : out std_logic_vector(3 downto 0);
    io_outputs_0_payload_prot : out std_logic_vector(2 downto 0);
    io_outputs_1_valid : out std_logic;
    io_outputs_1_ready : in std_logic;
    io_outputs_1_payload_addr : out unsigned(12 downto 0);
    io_outputs_1_payload_id : out unsigned(4 downto 0);
    io_outputs_1_payload_region : out std_logic_vector(3 downto 0);
    io_outputs_1_payload_len : out unsigned(7 downto 0);
    io_outputs_1_payload_size : out unsigned(2 downto 0);
    io_outputs_1_payload_burst : out std_logic_vector(1 downto 0);
    io_outputs_1_payload_lock : out std_logic_vector(0 downto 0);
    io_outputs_1_payload_cache : out std_logic_vector(3 downto 0);
    io_outputs_1_payload_qos : out std_logic_vector(3 downto 0);
    io_outputs_1_payload_prot : out std_logic_vector(2 downto 0);
    clk : in std_logic;
    reset : in std_logic
  );
end StreamFork;

architecture arch of StreamFork is
  signal zz_3 : std_logic;
  signal zz_4 : std_logic;
  signal zz_5 : std_logic;

  signal zz_1 : std_logic;
  signal zz_2 : std_logic;
begin
  io_outputs_0_valid <= zz_3;
  io_outputs_1_valid <= zz_4;
  io_input_ready <= zz_5;
  process(io_outputs_0_ready,zz_1,io_outputs_1_ready,zz_2)
  begin
    zz_5 <= pkg_toStdLogic(true);
    if ((not io_outputs_0_ready) and zz_1) = '1' then
      zz_5 <= pkg_toStdLogic(false);
    end if;
    if ((not io_outputs_1_ready) and zz_2) = '1' then
      zz_5 <= pkg_toStdLogic(false);
    end if;
  end process;

  zz_3 <= (io_input_valid and zz_1);
  io_outputs_0_payload_addr <= io_input_payload_addr;
  io_outputs_0_payload_id <= io_input_payload_id;
  io_outputs_0_payload_region <= io_input_payload_region;
  io_outputs_0_payload_len <= io_input_payload_len;
  io_outputs_0_payload_size <= io_input_payload_size;
  io_outputs_0_payload_burst <= io_input_payload_burst;
  io_outputs_0_payload_lock <= io_input_payload_lock;
  io_outputs_0_payload_cache <= io_input_payload_cache;
  io_outputs_0_payload_qos <= io_input_payload_qos;
  io_outputs_0_payload_prot <= io_input_payload_prot;
  zz_4 <= (io_input_valid and zz_2);
  io_outputs_1_payload_addr <= io_input_payload_addr;
  io_outputs_1_payload_id <= io_input_payload_id;
  io_outputs_1_payload_region <= io_input_payload_region;
  io_outputs_1_payload_len <= io_input_payload_len;
  io_outputs_1_payload_size <= io_input_payload_size;
  io_outputs_1_payload_burst <= io_input_payload_burst;
  io_outputs_1_payload_lock <= io_input_payload_lock;
  io_outputs_1_payload_cache <= io_input_payload_cache;
  io_outputs_1_payload_qos <= io_input_payload_qos;
  io_outputs_1_payload_prot <= io_input_payload_prot;
  process(clk, reset)
  begin
    if reset = '1' then
      zz_1 <= pkg_toStdLogic(true);
      zz_2 <= pkg_toStdLogic(true);
    elsif rising_edge(clk) then
      if (zz_3 and io_outputs_0_ready) = '1' then
        zz_1 <= pkg_toStdLogic(false);
      end if;
      if (zz_4 and io_outputs_1_ready) = '1' then
        zz_2 <= pkg_toStdLogic(false);
      end if;
      if zz_5 = '1' then
        zz_1 <= pkg_toStdLogic(true);
        zz_2 <= pkg_toStdLogic(true);
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


entity StreamFifoLowLatency is
  port(
    io_push_valid : in std_logic;
    io_push_ready : out std_logic;
    io_push_payload : in unsigned(0 downto 0);
    io_pop_valid : out std_logic;
    io_pop_ready : in std_logic;
    io_pop_payload : out unsigned(0 downto 0);
    io_flush : in std_logic;
    io_occupancy : out unsigned(2 downto 0);
    clk : in std_logic;
    reset : in std_logic
  );
end StreamFifoLowLatency;

architecture arch of StreamFifoLowLatency is
  signal zz_2 : std_logic_vector(0 downto 0);
  signal zz_3 : std_logic;
  signal zz_4 : std_logic;
  signal zz_5 : std_logic;
  signal zz_6 : std_logic_vector(0 downto 0);
  attribute ram_style : string;

  signal zz_1 : std_logic;
  signal pushPtr_willIncrement : std_logic;
  signal pushPtr_willClear : std_logic;
  signal pushPtr_valueNext : unsigned(1 downto 0);
  signal pushPtr_value : unsigned(1 downto 0);
  signal pushPtr_willOverflowIfInc : std_logic;
  signal pushPtr_willOverflow : std_logic;
  signal popPtr_willIncrement : std_logic;
  signal popPtr_willClear : std_logic;
  signal popPtr_valueNext : unsigned(1 downto 0);
  signal popPtr_value : unsigned(1 downto 0);
  signal popPtr_willOverflowIfInc : std_logic;
  signal popPtr_willOverflow : std_logic;
  signal ptrMatch : std_logic;
  signal risingOccupancy : std_logic;
  signal empty : std_logic;
  signal full : std_logic;
  signal pushing : std_logic;
  signal popping : std_logic;
  signal ptrDif : unsigned(1 downto 0);
  type ram_type is array (0 to 3) of std_logic_vector(0 downto 0);
  signal ram : ram_type;
  attribute ram_style of ram : signal is "distributed";
begin
  io_push_ready <= zz_3;
  io_pop_valid <= zz_4;
  zz_5 <= (not empty);
  zz_6 <= std_logic_vector(io_push_payload);
  zz_2 <= ram(to_integer(popPtr_value));
  process(clk)
  begin
    if rising_edge(clk) then
      if zz_1 = '1' then
        ram(to_integer(pushPtr_value)) <= zz_6;
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

  pushPtr_willOverflowIfInc <= pkg_toStdLogic(pushPtr_value = pkg_unsigned("11"));
  pushPtr_willOverflow <= (pushPtr_willOverflowIfInc and pushPtr_willIncrement);
  process(pushPtr_value,pushPtr_willIncrement,pushPtr_willClear)
  begin
    pushPtr_valueNext <= (pushPtr_value + pkg_resize(unsigned(pkg_toStdLogicVector(pushPtr_willIncrement)),2));
    if pushPtr_willClear = '1' then
      pushPtr_valueNext <= pkg_unsigned("00");
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

  popPtr_willOverflowIfInc <= pkg_toStdLogic(popPtr_value = pkg_unsigned("11"));
  popPtr_willOverflow <= (popPtr_willOverflowIfInc and popPtr_willIncrement);
  process(popPtr_value,popPtr_willIncrement,popPtr_willClear)
  begin
    popPtr_valueNext <= (popPtr_value + pkg_resize(unsigned(pkg_toStdLogicVector(popPtr_willIncrement)),2));
    if popPtr_willClear = '1' then
      popPtr_valueNext <= pkg_unsigned("00");
    end if;
  end process;

  ptrMatch <= pkg_toStdLogic(pushPtr_value = popPtr_value);
  empty <= (ptrMatch and (not risingOccupancy));
  full <= (ptrMatch and risingOccupancy);
  pushing <= (io_push_valid and zz_3);
  popping <= (zz_4 and io_pop_ready);
  zz_3 <= (not full);
  process(zz_5,io_push_valid)
  begin
    if zz_5 = '1' then
      zz_4 <= pkg_toStdLogic(true);
    else
      zz_4 <= io_push_valid;
    end if;
  end process;

  process(zz_5,zz_2,io_push_payload)
  begin
    if zz_5 = '1' then
      io_pop_payload <= unsigned(zz_2);
    else
      io_pop_payload <= io_push_payload;
    end if;
  end process;

  ptrDif <= (pushPtr_value - popPtr_value);
  io_occupancy <= unsigned(pkg_cat(pkg_toStdLogicVector((risingOccupancy and ptrMatch)),std_logic_vector(ptrDif)));
  process(clk, reset)
  begin
    if reset = '1' then
      pushPtr_value <= pkg_unsigned("00");
      popPtr_value <= pkg_unsigned("00");
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


--StreamArbiter_2 remplaced by StreamArbiter


--StreamArbiter_3 remplaced by StreamArbiter


--StreamFork_1 remplaced by StreamFork


--StreamFifoLowLatency_1 remplaced by StreamFifoLowLatency


--StreamArbiter_4 remplaced by StreamArbiter


--StreamArbiter_5 remplaced by StreamArbiter


--StreamFork_2 remplaced by StreamFork


--StreamFifoLowLatency_2 remplaced by StreamFifoLowLatency

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.pkg_scala2hdl.all;
use work.all;
use work.pkg_enum.all;


entity StreamArbiter_6 is
  port(
    io_inputs_0_valid : in std_logic;
    io_inputs_0_ready : out std_logic;
    io_inputs_0_payload_addr : in unsigned(12 downto 0);
    io_inputs_0_payload_id : in unsigned(3 downto 0);
    io_inputs_0_payload_region : in std_logic_vector(3 downto 0);
    io_inputs_0_payload_len : in unsigned(7 downto 0);
    io_inputs_0_payload_size : in unsigned(2 downto 0);
    io_inputs_0_payload_burst : in std_logic_vector(1 downto 0);
    io_inputs_0_payload_lock : in std_logic_vector(0 downto 0);
    io_inputs_0_payload_cache : in std_logic_vector(3 downto 0);
    io_inputs_0_payload_qos : in std_logic_vector(3 downto 0);
    io_inputs_0_payload_prot : in std_logic_vector(2 downto 0);
    io_inputs_1_valid : in std_logic;
    io_inputs_1_ready : out std_logic;
    io_inputs_1_payload_addr : in unsigned(12 downto 0);
    io_inputs_1_payload_id : in unsigned(3 downto 0);
    io_inputs_1_payload_region : in std_logic_vector(3 downto 0);
    io_inputs_1_payload_len : in unsigned(7 downto 0);
    io_inputs_1_payload_size : in unsigned(2 downto 0);
    io_inputs_1_payload_burst : in std_logic_vector(1 downto 0);
    io_inputs_1_payload_lock : in std_logic_vector(0 downto 0);
    io_inputs_1_payload_cache : in std_logic_vector(3 downto 0);
    io_inputs_1_payload_qos : in std_logic_vector(3 downto 0);
    io_inputs_1_payload_prot : in std_logic_vector(2 downto 0);
    io_inputs_2_valid : in std_logic;
    io_inputs_2_ready : out std_logic;
    io_inputs_2_payload_addr : in unsigned(12 downto 0);
    io_inputs_2_payload_id : in unsigned(3 downto 0);
    io_inputs_2_payload_region : in std_logic_vector(3 downto 0);
    io_inputs_2_payload_len : in unsigned(7 downto 0);
    io_inputs_2_payload_size : in unsigned(2 downto 0);
    io_inputs_2_payload_burst : in std_logic_vector(1 downto 0);
    io_inputs_2_payload_lock : in std_logic_vector(0 downto 0);
    io_inputs_2_payload_cache : in std_logic_vector(3 downto 0);
    io_inputs_2_payload_qos : in std_logic_vector(3 downto 0);
    io_inputs_2_payload_prot : in std_logic_vector(2 downto 0);
    io_output_valid : out std_logic;
    io_output_ready : in std_logic;
    io_output_payload_addr : out unsigned(12 downto 0);
    io_output_payload_id : out unsigned(3 downto 0);
    io_output_payload_region : out std_logic_vector(3 downto 0);
    io_output_payload_len : out unsigned(7 downto 0);
    io_output_payload_size : out unsigned(2 downto 0);
    io_output_payload_burst : out std_logic_vector(1 downto 0);
    io_output_payload_lock : out std_logic_vector(0 downto 0);
    io_output_payload_cache : out std_logic_vector(3 downto 0);
    io_output_payload_qos : out std_logic_vector(3 downto 0);
    io_output_payload_prot : out std_logic_vector(2 downto 0);
    io_chosen : out unsigned(1 downto 0);
    io_chosenOH : out std_logic_vector(2 downto 0);
    clk : in std_logic;
    reset : in std_logic
  );
end StreamArbiter_6;

architecture arch of StreamArbiter_6 is
  signal zz_8 : std_logic;
  signal zz_9 : std_logic_vector(2 downto 0);
  signal zz_10 : unsigned(12 downto 0);
  signal zz_11 : unsigned(3 downto 0);
  signal zz_12 : std_logic_vector(3 downto 0);
  signal zz_13 : unsigned(7 downto 0);
  signal zz_14 : unsigned(2 downto 0);
  signal zz_15 : std_logic_vector(1 downto 0);
  signal zz_16 : std_logic_vector(0 downto 0);
  signal zz_17 : std_logic_vector(3 downto 0);
  signal zz_18 : std_logic_vector(3 downto 0);
  signal zz_19 : std_logic_vector(2 downto 0);

  signal locked : std_logic;
  signal maskProposal_0 : std_logic;
  signal maskProposal_1 : std_logic;
  signal maskProposal_2 : std_logic;
  signal maskLocked_0 : std_logic;
  signal maskLocked_1 : std_logic;
  signal maskLocked_2 : std_logic;
  signal maskRouted_0 : std_logic;
  signal maskRouted_1 : std_logic;
  signal maskRouted_2 : std_logic;
  signal zz_1 : unsigned(2 downto 0);
  signal zz_2 : unsigned(5 downto 0);
  signal zz_3 : unsigned(5 downto 0);
  signal zz_4 : std_logic_vector(2 downto 0);
  signal zz_5 : unsigned(1 downto 0);
  signal zz_6 : std_logic;
  signal zz_7 : std_logic;
begin
  io_output_valid <= zz_8;
  io_chosenOH <= zz_9;
  process(zz_5,io_inputs_0_payload_addr,io_inputs_0_payload_id,io_inputs_0_payload_region,io_inputs_0_payload_len,io_inputs_0_payload_size,io_inputs_0_payload_burst,io_inputs_0_payload_lock,io_inputs_0_payload_cache,io_inputs_0_payload_qos,io_inputs_0_payload_prot,io_inputs_1_payload_addr,io_inputs_1_payload_id,io_inputs_1_payload_region,io_inputs_1_payload_len,io_inputs_1_payload_size,io_inputs_1_payload_burst,io_inputs_1_payload_lock,io_inputs_1_payload_cache,io_inputs_1_payload_qos,io_inputs_1_payload_prot,io_inputs_2_payload_addr,io_inputs_2_payload_id,io_inputs_2_payload_region,io_inputs_2_payload_len,io_inputs_2_payload_size,io_inputs_2_payload_burst,io_inputs_2_payload_lock,io_inputs_2_payload_cache,io_inputs_2_payload_qos,io_inputs_2_payload_prot)
  begin
    case zz_5 is
      when "00" =>
        zz_10 <= io_inputs_0_payload_addr;
        zz_11 <= io_inputs_0_payload_id;
        zz_12 <= io_inputs_0_payload_region;
        zz_13 <= io_inputs_0_payload_len;
        zz_14 <= io_inputs_0_payload_size;
        zz_15 <= io_inputs_0_payload_burst;
        zz_16 <= io_inputs_0_payload_lock;
        zz_17 <= io_inputs_0_payload_cache;
        zz_18 <= io_inputs_0_payload_qos;
        zz_19 <= io_inputs_0_payload_prot;
      when "01" =>
        zz_10 <= io_inputs_1_payload_addr;
        zz_11 <= io_inputs_1_payload_id;
        zz_12 <= io_inputs_1_payload_region;
        zz_13 <= io_inputs_1_payload_len;
        zz_14 <= io_inputs_1_payload_size;
        zz_15 <= io_inputs_1_payload_burst;
        zz_16 <= io_inputs_1_payload_lock;
        zz_17 <= io_inputs_1_payload_cache;
        zz_18 <= io_inputs_1_payload_qos;
        zz_19 <= io_inputs_1_payload_prot;
      when others =>
        zz_10 <= io_inputs_2_payload_addr;
        zz_11 <= io_inputs_2_payload_id;
        zz_12 <= io_inputs_2_payload_region;
        zz_13 <= io_inputs_2_payload_len;
        zz_14 <= io_inputs_2_payload_size;
        zz_15 <= io_inputs_2_payload_burst;
        zz_16 <= io_inputs_2_payload_lock;
        zz_17 <= io_inputs_2_payload_cache;
        zz_18 <= io_inputs_2_payload_qos;
        zz_19 <= io_inputs_2_payload_prot;
    end case;
  end process;

  maskRouted_0 <= pkg_mux(locked,maskLocked_0,maskProposal_0);
  maskRouted_1 <= pkg_mux(locked,maskLocked_1,maskProposal_1);
  maskRouted_2 <= pkg_mux(locked,maskLocked_2,maskProposal_2);
  zz_1 <= unsigned(pkg_cat(pkg_toStdLogicVector(io_inputs_2_valid),pkg_cat(pkg_toStdLogicVector(io_inputs_1_valid),pkg_toStdLogicVector(io_inputs_0_valid))));
  zz_2 <= unsigned(pkg_cat(std_logic_vector(zz_1),std_logic_vector(zz_1)));
  zz_3 <= (zz_2 and pkg_not((zz_2 - pkg_resize(unsigned(pkg_cat(pkg_toStdLogicVector(maskLocked_1),pkg_cat(pkg_toStdLogicVector(maskLocked_0),pkg_toStdLogicVector(maskLocked_2)))),6))));
  zz_4 <= std_logic_vector((pkg_extract(zz_3,5,3) or pkg_extract(zz_3,2,0)));
  maskProposal_0 <= pkg_extract(pkg_extract(zz_4,0,0),0);
  maskProposal_1 <= pkg_extract(pkg_extract(zz_4,1,1),0);
  maskProposal_2 <= pkg_extract(pkg_extract(zz_4,2,2),0);
  zz_8 <= (((io_inputs_0_valid and maskRouted_0) or (io_inputs_1_valid and maskRouted_1)) or (io_inputs_2_valid and maskRouted_2));
  zz_5 <= unsigned(pkg_cat(pkg_toStdLogicVector(maskRouted_2),pkg_toStdLogicVector(maskRouted_1)));
  io_output_payload_addr <= zz_10;
  io_output_payload_id <= zz_11;
  io_output_payload_region <= zz_12;
  io_output_payload_len <= zz_13;
  io_output_payload_size <= zz_14;
  io_output_payload_burst <= zz_15;
  io_output_payload_lock <= zz_16;
  io_output_payload_cache <= zz_17;
  io_output_payload_qos <= zz_18;
  io_output_payload_prot <= zz_19;
  io_inputs_0_ready <= (maskRouted_0 and io_output_ready);
  io_inputs_1_ready <= (maskRouted_1 and io_output_ready);
  io_inputs_2_ready <= (maskRouted_2 and io_output_ready);
  zz_9 <= pkg_cat(pkg_toStdLogicVector(maskRouted_2),pkg_cat(pkg_toStdLogicVector(maskRouted_1),pkg_toStdLogicVector(maskRouted_0)));
  zz_6 <= pkg_extract(zz_9,1);
  zz_7 <= pkg_extract(zz_9,2);
  io_chosen <= unsigned(pkg_cat(pkg_toStdLogicVector(zz_7),pkg_toStdLogicVector(zz_6)));
  process(clk, reset)
  begin
    if reset = '1' then
      locked <= pkg_toStdLogic(false);
      maskLocked_0 <= pkg_toStdLogic(false);
      maskLocked_1 <= pkg_toStdLogic(false);
      maskLocked_2 <= pkg_toStdLogic(true);
    elsif rising_edge(clk) then
      if zz_8 = '1' then
        maskLocked_0 <= maskRouted_0;
        maskLocked_1 <= maskRouted_1;
        maskLocked_2 <= maskRouted_2;
      end if;
      if zz_8 = '1' then
        locked <= pkg_toStdLogic(true);
      end if;
      if (zz_8 and io_output_ready) = '1' then
        locked <= pkg_toStdLogic(false);
      end if;
    end if;
  end process;

end arch;


--StreamArbiter_7 remplaced by StreamArbiter_6

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.pkg_scala2hdl.all;
use work.all;
use work.pkg_enum.all;


entity StreamFork_3 is
  port(
    io_input_valid : in std_logic;
    io_input_ready : out std_logic;
    io_input_payload_addr : in unsigned(12 downto 0);
    io_input_payload_id : in unsigned(3 downto 0);
    io_input_payload_region : in std_logic_vector(3 downto 0);
    io_input_payload_len : in unsigned(7 downto 0);
    io_input_payload_size : in unsigned(2 downto 0);
    io_input_payload_burst : in std_logic_vector(1 downto 0);
    io_input_payload_lock : in std_logic_vector(0 downto 0);
    io_input_payload_cache : in std_logic_vector(3 downto 0);
    io_input_payload_qos : in std_logic_vector(3 downto 0);
    io_input_payload_prot : in std_logic_vector(2 downto 0);
    io_outputs_0_valid : out std_logic;
    io_outputs_0_ready : in std_logic;
    io_outputs_0_payload_addr : out unsigned(12 downto 0);
    io_outputs_0_payload_id : out unsigned(3 downto 0);
    io_outputs_0_payload_region : out std_logic_vector(3 downto 0);
    io_outputs_0_payload_len : out unsigned(7 downto 0);
    io_outputs_0_payload_size : out unsigned(2 downto 0);
    io_outputs_0_payload_burst : out std_logic_vector(1 downto 0);
    io_outputs_0_payload_lock : out std_logic_vector(0 downto 0);
    io_outputs_0_payload_cache : out std_logic_vector(3 downto 0);
    io_outputs_0_payload_qos : out std_logic_vector(3 downto 0);
    io_outputs_0_payload_prot : out std_logic_vector(2 downto 0);
    io_outputs_1_valid : out std_logic;
    io_outputs_1_ready : in std_logic;
    io_outputs_1_payload_addr : out unsigned(12 downto 0);
    io_outputs_1_payload_id : out unsigned(3 downto 0);
    io_outputs_1_payload_region : out std_logic_vector(3 downto 0);
    io_outputs_1_payload_len : out unsigned(7 downto 0);
    io_outputs_1_payload_size : out unsigned(2 downto 0);
    io_outputs_1_payload_burst : out std_logic_vector(1 downto 0);
    io_outputs_1_payload_lock : out std_logic_vector(0 downto 0);
    io_outputs_1_payload_cache : out std_logic_vector(3 downto 0);
    io_outputs_1_payload_qos : out std_logic_vector(3 downto 0);
    io_outputs_1_payload_prot : out std_logic_vector(2 downto 0);
    clk : in std_logic;
    reset : in std_logic
  );
end StreamFork_3;

architecture arch of StreamFork_3 is
  signal zz_3 : std_logic;
  signal zz_4 : std_logic;
  signal zz_5 : std_logic;

  signal zz_1 : std_logic;
  signal zz_2 : std_logic;
begin
  io_outputs_0_valid <= zz_3;
  io_outputs_1_valid <= zz_4;
  io_input_ready <= zz_5;
  process(io_outputs_0_ready,zz_1,io_outputs_1_ready,zz_2)
  begin
    zz_5 <= pkg_toStdLogic(true);
    if ((not io_outputs_0_ready) and zz_1) = '1' then
      zz_5 <= pkg_toStdLogic(false);
    end if;
    if ((not io_outputs_1_ready) and zz_2) = '1' then
      zz_5 <= pkg_toStdLogic(false);
    end if;
  end process;

  zz_3 <= (io_input_valid and zz_1);
  io_outputs_0_payload_addr <= io_input_payload_addr;
  io_outputs_0_payload_id <= io_input_payload_id;
  io_outputs_0_payload_region <= io_input_payload_region;
  io_outputs_0_payload_len <= io_input_payload_len;
  io_outputs_0_payload_size <= io_input_payload_size;
  io_outputs_0_payload_burst <= io_input_payload_burst;
  io_outputs_0_payload_lock <= io_input_payload_lock;
  io_outputs_0_payload_cache <= io_input_payload_cache;
  io_outputs_0_payload_qos <= io_input_payload_qos;
  io_outputs_0_payload_prot <= io_input_payload_prot;
  zz_4 <= (io_input_valid and zz_2);
  io_outputs_1_payload_addr <= io_input_payload_addr;
  io_outputs_1_payload_id <= io_input_payload_id;
  io_outputs_1_payload_region <= io_input_payload_region;
  io_outputs_1_payload_len <= io_input_payload_len;
  io_outputs_1_payload_size <= io_input_payload_size;
  io_outputs_1_payload_burst <= io_input_payload_burst;
  io_outputs_1_payload_lock <= io_input_payload_lock;
  io_outputs_1_payload_cache <= io_input_payload_cache;
  io_outputs_1_payload_qos <= io_input_payload_qos;
  io_outputs_1_payload_prot <= io_input_payload_prot;
  process(clk, reset)
  begin
    if reset = '1' then
      zz_1 <= pkg_toStdLogic(true);
      zz_2 <= pkg_toStdLogic(true);
    elsif rising_edge(clk) then
      if (zz_3 and io_outputs_0_ready) = '1' then
        zz_1 <= pkg_toStdLogic(false);
      end if;
      if (zz_4 and io_outputs_1_ready) = '1' then
        zz_2 <= pkg_toStdLogic(false);
      end if;
      if zz_5 = '1' then
        zz_1 <= pkg_toStdLogic(true);
        zz_2 <= pkg_toStdLogic(true);
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


entity StreamFifoLowLatency_3 is
  port(
    io_push_valid : in std_logic;
    io_push_ready : out std_logic;
    io_push_payload : in unsigned(1 downto 0);
    io_pop_valid : out std_logic;
    io_pop_ready : in std_logic;
    io_pop_payload : out unsigned(1 downto 0);
    io_flush : in std_logic;
    io_occupancy : out unsigned(2 downto 0);
    clk : in std_logic;
    reset : in std_logic
  );
end StreamFifoLowLatency_3;

architecture arch of StreamFifoLowLatency_3 is
  signal zz_2 : std_logic_vector(1 downto 0);
  signal zz_3 : std_logic;
  signal zz_4 : std_logic;
  signal zz_5 : std_logic;
  signal zz_6 : std_logic_vector(1 downto 0);
  attribute ram_style : string;

  signal zz_1 : std_logic;
  signal pushPtr_willIncrement : std_logic;
  signal pushPtr_willClear : std_logic;
  signal pushPtr_valueNext : unsigned(1 downto 0);
  signal pushPtr_value : unsigned(1 downto 0);
  signal pushPtr_willOverflowIfInc : std_logic;
  signal pushPtr_willOverflow : std_logic;
  signal popPtr_willIncrement : std_logic;
  signal popPtr_willClear : std_logic;
  signal popPtr_valueNext : unsigned(1 downto 0);
  signal popPtr_value : unsigned(1 downto 0);
  signal popPtr_willOverflowIfInc : std_logic;
  signal popPtr_willOverflow : std_logic;
  signal ptrMatch : std_logic;
  signal risingOccupancy : std_logic;
  signal empty : std_logic;
  signal full : std_logic;
  signal pushing : std_logic;
  signal popping : std_logic;
  signal ptrDif : unsigned(1 downto 0);
  type ram_type is array (0 to 3) of std_logic_vector(1 downto 0);
  signal ram : ram_type;
  attribute ram_style of ram : signal is "distributed";
begin
  io_push_ready <= zz_3;
  io_pop_valid <= zz_4;
  zz_5 <= (not empty);
  zz_6 <= std_logic_vector(io_push_payload);
  zz_2 <= ram(to_integer(popPtr_value));
  process(clk)
  begin
    if rising_edge(clk) then
      if zz_1 = '1' then
        ram(to_integer(pushPtr_value)) <= zz_6;
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

  pushPtr_willOverflowIfInc <= pkg_toStdLogic(pushPtr_value = pkg_unsigned("11"));
  pushPtr_willOverflow <= (pushPtr_willOverflowIfInc and pushPtr_willIncrement);
  process(pushPtr_value,pushPtr_willIncrement,pushPtr_willClear)
  begin
    pushPtr_valueNext <= (pushPtr_value + pkg_resize(unsigned(pkg_toStdLogicVector(pushPtr_willIncrement)),2));
    if pushPtr_willClear = '1' then
      pushPtr_valueNext <= pkg_unsigned("00");
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

  popPtr_willOverflowIfInc <= pkg_toStdLogic(popPtr_value = pkg_unsigned("11"));
  popPtr_willOverflow <= (popPtr_willOverflowIfInc and popPtr_willIncrement);
  process(popPtr_value,popPtr_willIncrement,popPtr_willClear)
  begin
    popPtr_valueNext <= (popPtr_value + pkg_resize(unsigned(pkg_toStdLogicVector(popPtr_willIncrement)),2));
    if popPtr_willClear = '1' then
      popPtr_valueNext <= pkg_unsigned("00");
    end if;
  end process;

  ptrMatch <= pkg_toStdLogic(pushPtr_value = popPtr_value);
  empty <= (ptrMatch and (not risingOccupancy));
  full <= (ptrMatch and risingOccupancy);
  pushing <= (io_push_valid and zz_3);
  popping <= (zz_4 and io_pop_ready);
  zz_3 <= (not full);
  process(zz_5,io_push_valid)
  begin
    if zz_5 = '1' then
      zz_4 <= pkg_toStdLogic(true);
    else
      zz_4 <= io_push_valid;
    end if;
  end process;

  process(zz_5,zz_2,io_push_payload)
  begin
    if zz_5 = '1' then
      io_pop_payload <= unsigned(zz_2);
    else
      io_pop_payload <= io_push_payload;
    end if;
  end process;

  ptrDif <= (pushPtr_value - popPtr_value);
  io_occupancy <= unsigned(pkg_cat(pkg_toStdLogicVector((risingOccupancy and ptrMatch)),std_logic_vector(ptrDif)));
  process(clk, reset)
  begin
    if reset = '1' then
      pushPtr_value <= pkg_unsigned("00");
      popPtr_value <= pkg_unsigned("00");
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

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.pkg_scala2hdl.all;
use work.all;
use work.pkg_enum.all;


entity Axi4ReadOnlyDecoder is
  port(
    io_input_ar_valid : in std_logic;
    io_input_ar_ready : out std_logic;
    io_input_ar_payload_addr : in unsigned(12 downto 0);
    io_input_ar_payload_id : in unsigned(3 downto 0);
    io_input_ar_payload_region : in std_logic_vector(3 downto 0);
    io_input_ar_payload_len : in unsigned(7 downto 0);
    io_input_ar_payload_size : in unsigned(2 downto 0);
    io_input_ar_payload_burst : in std_logic_vector(1 downto 0);
    io_input_ar_payload_lock : in std_logic_vector(0 downto 0);
    io_input_ar_payload_cache : in std_logic_vector(3 downto 0);
    io_input_ar_payload_qos : in std_logic_vector(3 downto 0);
    io_input_ar_payload_prot : in std_logic_vector(2 downto 0);
    io_input_r_valid : out std_logic;
    io_input_r_ready : in std_logic;
    io_input_r_payload_data : out std_logic_vector(31 downto 0);
    io_input_r_payload_id : out unsigned(3 downto 0);
    io_input_r_payload_resp : out std_logic_vector(1 downto 0);
    io_input_r_payload_last : out std_logic;
    io_outputs_0_ar_valid : out std_logic;
    io_outputs_0_ar_ready : in std_logic;
    io_outputs_0_ar_payload_addr : out unsigned(12 downto 0);
    io_outputs_0_ar_payload_id : out unsigned(3 downto 0);
    io_outputs_0_ar_payload_region : out std_logic_vector(3 downto 0);
    io_outputs_0_ar_payload_len : out unsigned(7 downto 0);
    io_outputs_0_ar_payload_size : out unsigned(2 downto 0);
    io_outputs_0_ar_payload_burst : out std_logic_vector(1 downto 0);
    io_outputs_0_ar_payload_lock : out std_logic_vector(0 downto 0);
    io_outputs_0_ar_payload_cache : out std_logic_vector(3 downto 0);
    io_outputs_0_ar_payload_qos : out std_logic_vector(3 downto 0);
    io_outputs_0_ar_payload_prot : out std_logic_vector(2 downto 0);
    io_outputs_0_r_valid : in std_logic;
    io_outputs_0_r_ready : out std_logic;
    io_outputs_0_r_payload_data : in std_logic_vector(31 downto 0);
    io_outputs_0_r_payload_id : in unsigned(3 downto 0);
    io_outputs_0_r_payload_resp : in std_logic_vector(1 downto 0);
    io_outputs_0_r_payload_last : in std_logic;
    io_outputs_1_ar_valid : out std_logic;
    io_outputs_1_ar_ready : in std_logic;
    io_outputs_1_ar_payload_addr : out unsigned(12 downto 0);
    io_outputs_1_ar_payload_id : out unsigned(3 downto 0);
    io_outputs_1_ar_payload_region : out std_logic_vector(3 downto 0);
    io_outputs_1_ar_payload_len : out unsigned(7 downto 0);
    io_outputs_1_ar_payload_size : out unsigned(2 downto 0);
    io_outputs_1_ar_payload_burst : out std_logic_vector(1 downto 0);
    io_outputs_1_ar_payload_lock : out std_logic_vector(0 downto 0);
    io_outputs_1_ar_payload_cache : out std_logic_vector(3 downto 0);
    io_outputs_1_ar_payload_qos : out std_logic_vector(3 downto 0);
    io_outputs_1_ar_payload_prot : out std_logic_vector(2 downto 0);
    io_outputs_1_r_valid : in std_logic;
    io_outputs_1_r_ready : out std_logic;
    io_outputs_1_r_payload_data : in std_logic_vector(31 downto 0);
    io_outputs_1_r_payload_id : in unsigned(3 downto 0);
    io_outputs_1_r_payload_resp : in std_logic_vector(1 downto 0);
    io_outputs_1_r_payload_last : in std_logic;
    io_outputs_2_ar_valid : out std_logic;
    io_outputs_2_ar_ready : in std_logic;
    io_outputs_2_ar_payload_addr : out unsigned(12 downto 0);
    io_outputs_2_ar_payload_id : out unsigned(3 downto 0);
    io_outputs_2_ar_payload_region : out std_logic_vector(3 downto 0);
    io_outputs_2_ar_payload_len : out unsigned(7 downto 0);
    io_outputs_2_ar_payload_size : out unsigned(2 downto 0);
    io_outputs_2_ar_payload_burst : out std_logic_vector(1 downto 0);
    io_outputs_2_ar_payload_lock : out std_logic_vector(0 downto 0);
    io_outputs_2_ar_payload_cache : out std_logic_vector(3 downto 0);
    io_outputs_2_ar_payload_qos : out std_logic_vector(3 downto 0);
    io_outputs_2_ar_payload_prot : out std_logic_vector(2 downto 0);
    io_outputs_2_r_valid : in std_logic;
    io_outputs_2_r_ready : out std_logic;
    io_outputs_2_r_payload_data : in std_logic_vector(31 downto 0);
    io_outputs_2_r_payload_id : in unsigned(3 downto 0);
    io_outputs_2_r_payload_resp : in std_logic_vector(1 downto 0);
    io_outputs_2_r_payload_last : in std_logic;
    clk : in std_logic;
    reset : in std_logic
  );
end Axi4ReadOnlyDecoder;

architecture arch of Axi4ReadOnlyDecoder is
  signal zz_3 : std_logic;
  signal zz_4 : std_logic;
  signal zz_5 : std_logic;
  signal zz_6 : std_logic;
  signal zz_7 : std_logic_vector(31 downto 0);
  signal zz_8 : unsigned(3 downto 0);
  signal zz_9 : std_logic_vector(1 downto 0);
  signal zz_10 : std_logic;
  signal errorSlave_io_axi_ar_ready : std_logic;
  signal errorSlave_io_axi_r_valid : std_logic;
  signal errorSlave_io_axi_r_payload_data : std_logic_vector(31 downto 0);
  signal errorSlave_io_axi_r_payload_id : unsigned(3 downto 0);
  signal errorSlave_io_axi_r_payload_resp : std_logic_vector(1 downto 0);
  signal errorSlave_io_axi_r_payload_last : std_logic;

  signal pendingCmdCounter_incrementIt : std_logic;
  signal pendingCmdCounter_decrementIt : std_logic;
  signal pendingCmdCounter_valueNext : unsigned(2 downto 0);
  signal pendingCmdCounter_value : unsigned(2 downto 0);
  signal pendingCmdCounter_willOverflowIfInc : std_logic;
  signal pendingCmdCounter_willOverflow : std_logic;
  signal pendingCmdCounter_finalIncrement : unsigned(2 downto 0);
  signal decodedCmdSels : std_logic_vector(2 downto 0);
  signal decodedCmdError : std_logic;
  signal pendingSels : std_logic_vector(2 downto 0);
  signal pendingError : std_logic;
  signal allowCmd : std_logic;
  signal zz_1 : std_logic;
  signal zz_2 : std_logic;
  signal readRspIndex : unsigned(1 downto 0);
begin
  io_input_ar_ready <= zz_4;
  io_input_r_valid <= zz_5;
  io_input_r_payload_last <= zz_6;
  errorSlave : entity work.Axi4ReadOnlyErrorSlave
    port map ( 
      io_axi_ar_valid => zz_3,
      io_axi_ar_ready => errorSlave_io_axi_ar_ready,
      io_axi_ar_payload_addr => io_input_ar_payload_addr,
      io_axi_ar_payload_id => io_input_ar_payload_id,
      io_axi_ar_payload_region => io_input_ar_payload_region,
      io_axi_ar_payload_len => io_input_ar_payload_len,
      io_axi_ar_payload_size => io_input_ar_payload_size,
      io_axi_ar_payload_burst => io_input_ar_payload_burst,
      io_axi_ar_payload_lock => io_input_ar_payload_lock,
      io_axi_ar_payload_cache => io_input_ar_payload_cache,
      io_axi_ar_payload_qos => io_input_ar_payload_qos,
      io_axi_ar_payload_prot => io_input_ar_payload_prot,
      io_axi_r_valid => errorSlave_io_axi_r_valid,
      io_axi_r_ready => io_input_r_ready,
      io_axi_r_payload_data => errorSlave_io_axi_r_payload_data,
      io_axi_r_payload_id => errorSlave_io_axi_r_payload_id,
      io_axi_r_payload_resp => errorSlave_io_axi_r_payload_resp,
      io_axi_r_payload_last => errorSlave_io_axi_r_payload_last,
      clk => clk,
      reset => reset 
    );
  process(readRspIndex,io_outputs_0_r_payload_data,io_outputs_0_r_payload_id,io_outputs_0_r_payload_resp,io_outputs_0_r_payload_last,io_outputs_1_r_payload_data,io_outputs_1_r_payload_id,io_outputs_1_r_payload_resp,io_outputs_1_r_payload_last,io_outputs_2_r_payload_data,io_outputs_2_r_payload_id,io_outputs_2_r_payload_resp,io_outputs_2_r_payload_last)
  begin
    case readRspIndex is
      when "00" =>
        zz_7 <= io_outputs_0_r_payload_data;
        zz_8 <= io_outputs_0_r_payload_id;
        zz_9 <= io_outputs_0_r_payload_resp;
        zz_10 <= io_outputs_0_r_payload_last;
      when "01" =>
        zz_7 <= io_outputs_1_r_payload_data;
        zz_8 <= io_outputs_1_r_payload_id;
        zz_9 <= io_outputs_1_r_payload_resp;
        zz_10 <= io_outputs_1_r_payload_last;
      when others =>
        zz_7 <= io_outputs_2_r_payload_data;
        zz_8 <= io_outputs_2_r_payload_id;
        zz_9 <= io_outputs_2_r_payload_resp;
        zz_10 <= io_outputs_2_r_payload_last;
    end case;
  end process;

  process(io_input_ar_valid,zz_4)
  begin
    pendingCmdCounter_incrementIt <= pkg_toStdLogic(false);
    if (io_input_ar_valid and zz_4) = '1' then
      pendingCmdCounter_incrementIt <= pkg_toStdLogic(true);
    end if;
  end process;

  process(zz_5,io_input_r_ready,zz_6)
  begin
    pendingCmdCounter_decrementIt <= pkg_toStdLogic(false);
    if ((zz_5 and io_input_r_ready) and zz_6) = '1' then
      pendingCmdCounter_decrementIt <= pkg_toStdLogic(true);
    end if;
  end process;

  pendingCmdCounter_willOverflowIfInc <= (pkg_toStdLogic(pendingCmdCounter_value = pkg_unsigned("111")) and (not pendingCmdCounter_decrementIt));
  pendingCmdCounter_willOverflow <= (pendingCmdCounter_willOverflowIfInc and pendingCmdCounter_incrementIt);
  process(pendingCmdCounter_incrementIt,pendingCmdCounter_decrementIt)
  begin
    if (pendingCmdCounter_incrementIt and (not pendingCmdCounter_decrementIt)) = '1' then
      pendingCmdCounter_finalIncrement <= pkg_unsigned("001");
    else
      if ((not pendingCmdCounter_incrementIt) and pendingCmdCounter_decrementIt) = '1' then
        pendingCmdCounter_finalIncrement <= pkg_unsigned("111");
      else
        pendingCmdCounter_finalIncrement <= pkg_unsigned("000");
      end if;
    end if;
  end process;

  pendingCmdCounter_valueNext <= (pendingCmdCounter_value + pendingCmdCounter_finalIncrement);
  decodedCmdSels <= pkg_cat(pkg_toStdLogicVector((pkg_toStdLogic((io_input_ar_payload_addr and pkg_not(pkg_unsigned("0001111111111"))) = pkg_unsigned("0110000000000")) and io_input_ar_valid)),pkg_cat(pkg_toStdLogicVector((pkg_toStdLogic((io_input_ar_payload_addr and pkg_not(pkg_unsigned("0001111111111"))) = pkg_unsigned("0100000000000")) and io_input_ar_valid)),pkg_toStdLogicVector((pkg_toStdLogic((io_input_ar_payload_addr and pkg_not(pkg_unsigned("0001111111111"))) = pkg_unsigned("0010000000000")) and io_input_ar_valid))));
  decodedCmdError <= pkg_toStdLogic(decodedCmdSels = pkg_stdLogicVector("000"));
  allowCmd <= (pkg_toStdLogic(pendingCmdCounter_value = pkg_unsigned("000")) or (pkg_toStdLogic(pendingCmdCounter_value /= pkg_unsigned("111")) and pkg_toStdLogic(pendingSels = decodedCmdSels)));
  zz_4 <= ((pkg_toStdLogic((decodedCmdSels and pkg_cat(pkg_toStdLogicVector(io_outputs_2_ar_ready),pkg_cat(pkg_toStdLogicVector(io_outputs_1_ar_ready),pkg_toStdLogicVector(io_outputs_0_ar_ready)))) /= pkg_stdLogicVector("000")) or (decodedCmdError and errorSlave_io_axi_ar_ready)) and allowCmd);
  zz_3 <= ((io_input_ar_valid and decodedCmdError) and allowCmd);
  io_outputs_0_ar_valid <= ((io_input_ar_valid and pkg_extract(decodedCmdSels,0)) and allowCmd);
  io_outputs_0_ar_payload_addr <= io_input_ar_payload_addr;
  io_outputs_0_ar_payload_id <= io_input_ar_payload_id;
  io_outputs_0_ar_payload_region <= io_input_ar_payload_region;
  io_outputs_0_ar_payload_len <= io_input_ar_payload_len;
  io_outputs_0_ar_payload_size <= io_input_ar_payload_size;
  io_outputs_0_ar_payload_burst <= io_input_ar_payload_burst;
  io_outputs_0_ar_payload_lock <= io_input_ar_payload_lock;
  io_outputs_0_ar_payload_cache <= io_input_ar_payload_cache;
  io_outputs_0_ar_payload_qos <= io_input_ar_payload_qos;
  io_outputs_0_ar_payload_prot <= io_input_ar_payload_prot;
  io_outputs_1_ar_valid <= ((io_input_ar_valid and pkg_extract(decodedCmdSels,1)) and allowCmd);
  io_outputs_1_ar_payload_addr <= io_input_ar_payload_addr;
  io_outputs_1_ar_payload_id <= io_input_ar_payload_id;
  io_outputs_1_ar_payload_region <= io_input_ar_payload_region;
  io_outputs_1_ar_payload_len <= io_input_ar_payload_len;
  io_outputs_1_ar_payload_size <= io_input_ar_payload_size;
  io_outputs_1_ar_payload_burst <= io_input_ar_payload_burst;
  io_outputs_1_ar_payload_lock <= io_input_ar_payload_lock;
  io_outputs_1_ar_payload_cache <= io_input_ar_payload_cache;
  io_outputs_1_ar_payload_qos <= io_input_ar_payload_qos;
  io_outputs_1_ar_payload_prot <= io_input_ar_payload_prot;
  io_outputs_2_ar_valid <= ((io_input_ar_valid and pkg_extract(decodedCmdSels,2)) and allowCmd);
  io_outputs_2_ar_payload_addr <= io_input_ar_payload_addr;
  io_outputs_2_ar_payload_id <= io_input_ar_payload_id;
  io_outputs_2_ar_payload_region <= io_input_ar_payload_region;
  io_outputs_2_ar_payload_len <= io_input_ar_payload_len;
  io_outputs_2_ar_payload_size <= io_input_ar_payload_size;
  io_outputs_2_ar_payload_burst <= io_input_ar_payload_burst;
  io_outputs_2_ar_payload_lock <= io_input_ar_payload_lock;
  io_outputs_2_ar_payload_cache <= io_input_ar_payload_cache;
  io_outputs_2_ar_payload_qos <= io_input_ar_payload_qos;
  io_outputs_2_ar_payload_prot <= io_input_ar_payload_prot;
  zz_1 <= pkg_extract(pendingSels,1);
  zz_2 <= pkg_extract(pendingSels,2);
  readRspIndex <= unsigned(pkg_cat(pkg_toStdLogicVector(zz_2),pkg_toStdLogicVector(zz_1)));
  process(io_outputs_2_r_valid,io_outputs_1_r_valid,io_outputs_0_r_valid,errorSlave_io_axi_r_valid)
  begin
    zz_5 <= pkg_toStdLogic(pkg_cat(pkg_toStdLogicVector(io_outputs_2_r_valid),pkg_cat(pkg_toStdLogicVector(io_outputs_1_r_valid),pkg_toStdLogicVector(io_outputs_0_r_valid))) /= pkg_stdLogicVector("000"));
    if errorSlave_io_axi_r_valid = '1' then
      zz_5 <= pkg_toStdLogic(true);
    end if;
  end process;

  io_input_r_payload_data <= zz_7;
  process(zz_8,pendingError,errorSlave_io_axi_r_payload_id)
  begin
    io_input_r_payload_id <= zz_8;
    if pendingError = '1' then
      io_input_r_payload_id <= errorSlave_io_axi_r_payload_id;
    end if;
  end process;

  process(zz_9,pendingError,errorSlave_io_axi_r_payload_resp)
  begin
    io_input_r_payload_resp <= zz_9;
    if pendingError = '1' then
      io_input_r_payload_resp <= errorSlave_io_axi_r_payload_resp;
    end if;
  end process;

  process(zz_10,pendingError,errorSlave_io_axi_r_payload_last)
  begin
    zz_6 <= zz_10;
    if pendingError = '1' then
      zz_6 <= errorSlave_io_axi_r_payload_last;
    end if;
  end process;

  io_outputs_0_r_ready <= io_input_r_ready;
  io_outputs_1_r_ready <= io_input_r_ready;
  io_outputs_2_r_ready <= io_input_r_ready;
  process(clk, reset)
  begin
    if reset = '1' then
      pendingCmdCounter_value <= pkg_unsigned("000");
      pendingSels <= pkg_stdLogicVector("000");
      pendingError <= pkg_toStdLogic(false);
    elsif rising_edge(clk) then
      pendingCmdCounter_value <= pendingCmdCounter_valueNext;
      if zz_4 = '1' then
        pendingSels <= decodedCmdSels;
      end if;
      if zz_4 = '1' then
        pendingError <= decodedCmdError;
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


entity Axi4WriteOnlyDecoder is
  port(
    io_input_aw_valid : in std_logic;
    io_input_aw_ready : out std_logic;
    io_input_aw_payload_addr : in unsigned(12 downto 0);
    io_input_aw_payload_id : in unsigned(3 downto 0);
    io_input_aw_payload_region : in std_logic_vector(3 downto 0);
    io_input_aw_payload_len : in unsigned(7 downto 0);
    io_input_aw_payload_size : in unsigned(2 downto 0);
    io_input_aw_payload_burst : in std_logic_vector(1 downto 0);
    io_input_aw_payload_lock : in std_logic_vector(0 downto 0);
    io_input_aw_payload_cache : in std_logic_vector(3 downto 0);
    io_input_aw_payload_qos : in std_logic_vector(3 downto 0);
    io_input_aw_payload_prot : in std_logic_vector(2 downto 0);
    io_input_w_valid : in std_logic;
    io_input_w_ready : out std_logic;
    io_input_w_payload_data : in std_logic_vector(31 downto 0);
    io_input_w_payload_strb : in std_logic_vector(3 downto 0);
    io_input_w_payload_last : in std_logic;
    io_input_b_valid : out std_logic;
    io_input_b_ready : in std_logic;
    io_input_b_payload_id : out unsigned(3 downto 0);
    io_input_b_payload_resp : out std_logic_vector(1 downto 0);
    io_outputs_0_aw_valid : out std_logic;
    io_outputs_0_aw_ready : in std_logic;
    io_outputs_0_aw_payload_addr : out unsigned(12 downto 0);
    io_outputs_0_aw_payload_id : out unsigned(3 downto 0);
    io_outputs_0_aw_payload_region : out std_logic_vector(3 downto 0);
    io_outputs_0_aw_payload_len : out unsigned(7 downto 0);
    io_outputs_0_aw_payload_size : out unsigned(2 downto 0);
    io_outputs_0_aw_payload_burst : out std_logic_vector(1 downto 0);
    io_outputs_0_aw_payload_lock : out std_logic_vector(0 downto 0);
    io_outputs_0_aw_payload_cache : out std_logic_vector(3 downto 0);
    io_outputs_0_aw_payload_qos : out std_logic_vector(3 downto 0);
    io_outputs_0_aw_payload_prot : out std_logic_vector(2 downto 0);
    io_outputs_0_w_valid : out std_logic;
    io_outputs_0_w_ready : in std_logic;
    io_outputs_0_w_payload_data : out std_logic_vector(31 downto 0);
    io_outputs_0_w_payload_strb : out std_logic_vector(3 downto 0);
    io_outputs_0_w_payload_last : out std_logic;
    io_outputs_0_b_valid : in std_logic;
    io_outputs_0_b_ready : out std_logic;
    io_outputs_0_b_payload_id : in unsigned(3 downto 0);
    io_outputs_0_b_payload_resp : in std_logic_vector(1 downto 0);
    io_outputs_1_aw_valid : out std_logic;
    io_outputs_1_aw_ready : in std_logic;
    io_outputs_1_aw_payload_addr : out unsigned(12 downto 0);
    io_outputs_1_aw_payload_id : out unsigned(3 downto 0);
    io_outputs_1_aw_payload_region : out std_logic_vector(3 downto 0);
    io_outputs_1_aw_payload_len : out unsigned(7 downto 0);
    io_outputs_1_aw_payload_size : out unsigned(2 downto 0);
    io_outputs_1_aw_payload_burst : out std_logic_vector(1 downto 0);
    io_outputs_1_aw_payload_lock : out std_logic_vector(0 downto 0);
    io_outputs_1_aw_payload_cache : out std_logic_vector(3 downto 0);
    io_outputs_1_aw_payload_qos : out std_logic_vector(3 downto 0);
    io_outputs_1_aw_payload_prot : out std_logic_vector(2 downto 0);
    io_outputs_1_w_valid : out std_logic;
    io_outputs_1_w_ready : in std_logic;
    io_outputs_1_w_payload_data : out std_logic_vector(31 downto 0);
    io_outputs_1_w_payload_strb : out std_logic_vector(3 downto 0);
    io_outputs_1_w_payload_last : out std_logic;
    io_outputs_1_b_valid : in std_logic;
    io_outputs_1_b_ready : out std_logic;
    io_outputs_1_b_payload_id : in unsigned(3 downto 0);
    io_outputs_1_b_payload_resp : in std_logic_vector(1 downto 0);
    io_outputs_2_aw_valid : out std_logic;
    io_outputs_2_aw_ready : in std_logic;
    io_outputs_2_aw_payload_addr : out unsigned(12 downto 0);
    io_outputs_2_aw_payload_id : out unsigned(3 downto 0);
    io_outputs_2_aw_payload_region : out std_logic_vector(3 downto 0);
    io_outputs_2_aw_payload_len : out unsigned(7 downto 0);
    io_outputs_2_aw_payload_size : out unsigned(2 downto 0);
    io_outputs_2_aw_payload_burst : out std_logic_vector(1 downto 0);
    io_outputs_2_aw_payload_lock : out std_logic_vector(0 downto 0);
    io_outputs_2_aw_payload_cache : out std_logic_vector(3 downto 0);
    io_outputs_2_aw_payload_qos : out std_logic_vector(3 downto 0);
    io_outputs_2_aw_payload_prot : out std_logic_vector(2 downto 0);
    io_outputs_2_w_valid : out std_logic;
    io_outputs_2_w_ready : in std_logic;
    io_outputs_2_w_payload_data : out std_logic_vector(31 downto 0);
    io_outputs_2_w_payload_strb : out std_logic_vector(3 downto 0);
    io_outputs_2_w_payload_last : out std_logic;
    io_outputs_2_b_valid : in std_logic;
    io_outputs_2_b_ready : out std_logic;
    io_outputs_2_b_payload_id : in unsigned(3 downto 0);
    io_outputs_2_b_payload_resp : in std_logic_vector(1 downto 0);
    clk : in std_logic;
    reset : in std_logic
  );
end Axi4WriteOnlyDecoder;

architecture arch of Axi4WriteOnlyDecoder is
  signal zz_4 : std_logic;
  signal zz_5 : std_logic;
  signal zz_6 : std_logic;
  signal zz_7 : std_logic;
  signal zz_8 : std_logic;
  signal zz_9 : unsigned(3 downto 0);
  signal zz_10 : std_logic_vector(1 downto 0);
  signal errorSlave_io_axi_aw_ready : std_logic;
  signal errorSlave_io_axi_w_ready : std_logic;
  signal errorSlave_io_axi_b_valid : std_logic;
  signal errorSlave_io_axi_b_payload_id : unsigned(3 downto 0);
  signal errorSlave_io_axi_b_payload_resp : std_logic_vector(1 downto 0);

  signal cmdAllowedStart : std_logic;
  signal pendingCmdCounter_incrementIt : std_logic;
  signal pendingCmdCounter_decrementIt : std_logic;
  signal pendingCmdCounter_valueNext : unsigned(2 downto 0);
  signal pendingCmdCounter_value : unsigned(2 downto 0);
  signal pendingCmdCounter_willOverflowIfInc : std_logic;
  signal pendingCmdCounter_willOverflow : std_logic;
  signal pendingCmdCounter_finalIncrement : unsigned(2 downto 0);
  signal pendingDataCounter_incrementIt : std_logic;
  signal pendingDataCounter_decrementIt : std_logic;
  signal pendingDataCounter_valueNext : unsigned(2 downto 0);
  signal pendingDataCounter_value : unsigned(2 downto 0);
  signal pendingDataCounter_willOverflowIfInc : std_logic;
  signal pendingDataCounter_willOverflow : std_logic;
  signal pendingDataCounter_finalIncrement : unsigned(2 downto 0);
  signal decodedCmdSels : std_logic_vector(2 downto 0);
  signal decodedCmdError : std_logic;
  signal pendingSels : std_logic_vector(2 downto 0);
  signal pendingError : std_logic;
  signal allowCmd : std_logic;
  signal allowData : std_logic;
  signal zz_1 : std_logic;
  signal zz_2 : std_logic;
  signal zz_3 : std_logic;
  signal writeRspIndex : unsigned(1 downto 0);
begin
  io_input_aw_ready <= zz_6;
  io_input_b_valid <= zz_7;
  io_input_w_ready <= zz_8;
  errorSlave : entity work.Axi4WriteOnlyErrorSlave
    port map ( 
      io_axi_aw_valid => zz_4,
      io_axi_aw_ready => errorSlave_io_axi_aw_ready,
      io_axi_aw_payload_addr => io_input_aw_payload_addr,
      io_axi_aw_payload_id => io_input_aw_payload_id,
      io_axi_aw_payload_region => io_input_aw_payload_region,
      io_axi_aw_payload_len => io_input_aw_payload_len,
      io_axi_aw_payload_size => io_input_aw_payload_size,
      io_axi_aw_payload_burst => io_input_aw_payload_burst,
      io_axi_aw_payload_lock => io_input_aw_payload_lock,
      io_axi_aw_payload_cache => io_input_aw_payload_cache,
      io_axi_aw_payload_qos => io_input_aw_payload_qos,
      io_axi_aw_payload_prot => io_input_aw_payload_prot,
      io_axi_w_valid => zz_5,
      io_axi_w_ready => errorSlave_io_axi_w_ready,
      io_axi_w_payload_data => io_input_w_payload_data,
      io_axi_w_payload_strb => io_input_w_payload_strb,
      io_axi_w_payload_last => io_input_w_payload_last,
      io_axi_b_valid => errorSlave_io_axi_b_valid,
      io_axi_b_ready => io_input_b_ready,
      io_axi_b_payload_id => errorSlave_io_axi_b_payload_id,
      io_axi_b_payload_resp => errorSlave_io_axi_b_payload_resp,
      clk => clk,
      reset => reset 
    );
  process(writeRspIndex,io_outputs_0_b_payload_id,io_outputs_0_b_payload_resp,io_outputs_1_b_payload_id,io_outputs_1_b_payload_resp,io_outputs_2_b_payload_id,io_outputs_2_b_payload_resp)
  begin
    case writeRspIndex is
      when "00" =>
        zz_9 <= io_outputs_0_b_payload_id;
        zz_10 <= io_outputs_0_b_payload_resp;
      when "01" =>
        zz_9 <= io_outputs_1_b_payload_id;
        zz_10 <= io_outputs_1_b_payload_resp;
      when others =>
        zz_9 <= io_outputs_2_b_payload_id;
        zz_10 <= io_outputs_2_b_payload_resp;
    end case;
  end process;

  process(io_input_aw_valid,zz_6)
  begin
    pendingCmdCounter_incrementIt <= pkg_toStdLogic(false);
    if (io_input_aw_valid and zz_6) = '1' then
      pendingCmdCounter_incrementIt <= pkg_toStdLogic(true);
    end if;
  end process;

  process(zz_7,io_input_b_ready)
  begin
    pendingCmdCounter_decrementIt <= pkg_toStdLogic(false);
    if (zz_7 and io_input_b_ready) = '1' then
      pendingCmdCounter_decrementIt <= pkg_toStdLogic(true);
    end if;
  end process;

  pendingCmdCounter_willOverflowIfInc <= (pkg_toStdLogic(pendingCmdCounter_value = pkg_unsigned("111")) and (not pendingCmdCounter_decrementIt));
  pendingCmdCounter_willOverflow <= (pendingCmdCounter_willOverflowIfInc and pendingCmdCounter_incrementIt);
  process(pendingCmdCounter_incrementIt,pendingCmdCounter_decrementIt)
  begin
    if (pendingCmdCounter_incrementIt and (not pendingCmdCounter_decrementIt)) = '1' then
      pendingCmdCounter_finalIncrement <= pkg_unsigned("001");
    else
      if ((not pendingCmdCounter_incrementIt) and pendingCmdCounter_decrementIt) = '1' then
        pendingCmdCounter_finalIncrement <= pkg_unsigned("111");
      else
        pendingCmdCounter_finalIncrement <= pkg_unsigned("000");
      end if;
    end if;
  end process;

  pendingCmdCounter_valueNext <= (pendingCmdCounter_value + pendingCmdCounter_finalIncrement);
  process(cmdAllowedStart)
  begin
    pendingDataCounter_incrementIt <= pkg_toStdLogic(false);
    if cmdAllowedStart = '1' then
      pendingDataCounter_incrementIt <= pkg_toStdLogic(true);
    end if;
  end process;

  process(io_input_w_valid,zz_8,io_input_w_payload_last)
  begin
    pendingDataCounter_decrementIt <= pkg_toStdLogic(false);
    if ((io_input_w_valid and zz_8) and io_input_w_payload_last) = '1' then
      pendingDataCounter_decrementIt <= pkg_toStdLogic(true);
    end if;
  end process;

  pendingDataCounter_willOverflowIfInc <= (pkg_toStdLogic(pendingDataCounter_value = pkg_unsigned("111")) and (not pendingDataCounter_decrementIt));
  pendingDataCounter_willOverflow <= (pendingDataCounter_willOverflowIfInc and pendingDataCounter_incrementIt);
  process(pendingDataCounter_incrementIt,pendingDataCounter_decrementIt)
  begin
    if (pendingDataCounter_incrementIt and (not pendingDataCounter_decrementIt)) = '1' then
      pendingDataCounter_finalIncrement <= pkg_unsigned("001");
    else
      if ((not pendingDataCounter_incrementIt) and pendingDataCounter_decrementIt) = '1' then
        pendingDataCounter_finalIncrement <= pkg_unsigned("111");
      else
        pendingDataCounter_finalIncrement <= pkg_unsigned("000");
      end if;
    end if;
  end process;

  pendingDataCounter_valueNext <= (pendingDataCounter_value + pendingDataCounter_finalIncrement);
  decodedCmdSels <= pkg_cat(pkg_toStdLogicVector((pkg_toStdLogic((io_input_aw_payload_addr and pkg_not(pkg_unsigned("0001111111111"))) = pkg_unsigned("0110000000000")) and io_input_aw_valid)),pkg_cat(pkg_toStdLogicVector((pkg_toStdLogic((io_input_aw_payload_addr and pkg_not(pkg_unsigned("0001111111111"))) = pkg_unsigned("0100000000000")) and io_input_aw_valid)),pkg_toStdLogicVector((pkg_toStdLogic((io_input_aw_payload_addr and pkg_not(pkg_unsigned("0001111111111"))) = pkg_unsigned("0010000000000")) and io_input_aw_valid))));
  decodedCmdError <= pkg_toStdLogic(decodedCmdSels = pkg_stdLogicVector("000"));
  allowCmd <= (pkg_toStdLogic(pendingCmdCounter_value = pkg_unsigned("000")) or (pkg_toStdLogic(pendingCmdCounter_value /= pkg_unsigned("111")) and pkg_toStdLogic(pendingSels = decodedCmdSels)));
  allowData <= pkg_toStdLogic(pendingDataCounter_value /= pkg_unsigned("000"));
  cmdAllowedStart <= ((io_input_aw_valid and allowCmd) and zz_1);
  zz_6 <= ((pkg_toStdLogic((decodedCmdSels and pkg_cat(pkg_toStdLogicVector(io_outputs_2_aw_ready),pkg_cat(pkg_toStdLogicVector(io_outputs_1_aw_ready),pkg_toStdLogicVector(io_outputs_0_aw_ready)))) /= pkg_stdLogicVector("000")) or (decodedCmdError and errorSlave_io_axi_aw_ready)) and allowCmd);
  zz_4 <= ((io_input_aw_valid and decodedCmdError) and allowCmd);
  io_outputs_0_aw_valid <= ((io_input_aw_valid and pkg_extract(decodedCmdSels,0)) and allowCmd);
  io_outputs_0_aw_payload_addr <= io_input_aw_payload_addr;
  io_outputs_0_aw_payload_id <= io_input_aw_payload_id;
  io_outputs_0_aw_payload_region <= io_input_aw_payload_region;
  io_outputs_0_aw_payload_len <= io_input_aw_payload_len;
  io_outputs_0_aw_payload_size <= io_input_aw_payload_size;
  io_outputs_0_aw_payload_burst <= io_input_aw_payload_burst;
  io_outputs_0_aw_payload_lock <= io_input_aw_payload_lock;
  io_outputs_0_aw_payload_cache <= io_input_aw_payload_cache;
  io_outputs_0_aw_payload_qos <= io_input_aw_payload_qos;
  io_outputs_0_aw_payload_prot <= io_input_aw_payload_prot;
  io_outputs_1_aw_valid <= ((io_input_aw_valid and pkg_extract(decodedCmdSels,1)) and allowCmd);
  io_outputs_1_aw_payload_addr <= io_input_aw_payload_addr;
  io_outputs_1_aw_payload_id <= io_input_aw_payload_id;
  io_outputs_1_aw_payload_region <= io_input_aw_payload_region;
  io_outputs_1_aw_payload_len <= io_input_aw_payload_len;
  io_outputs_1_aw_payload_size <= io_input_aw_payload_size;
  io_outputs_1_aw_payload_burst <= io_input_aw_payload_burst;
  io_outputs_1_aw_payload_lock <= io_input_aw_payload_lock;
  io_outputs_1_aw_payload_cache <= io_input_aw_payload_cache;
  io_outputs_1_aw_payload_qos <= io_input_aw_payload_qos;
  io_outputs_1_aw_payload_prot <= io_input_aw_payload_prot;
  io_outputs_2_aw_valid <= ((io_input_aw_valid and pkg_extract(decodedCmdSels,2)) and allowCmd);
  io_outputs_2_aw_payload_addr <= io_input_aw_payload_addr;
  io_outputs_2_aw_payload_id <= io_input_aw_payload_id;
  io_outputs_2_aw_payload_region <= io_input_aw_payload_region;
  io_outputs_2_aw_payload_len <= io_input_aw_payload_len;
  io_outputs_2_aw_payload_size <= io_input_aw_payload_size;
  io_outputs_2_aw_payload_burst <= io_input_aw_payload_burst;
  io_outputs_2_aw_payload_lock <= io_input_aw_payload_lock;
  io_outputs_2_aw_payload_cache <= io_input_aw_payload_cache;
  io_outputs_2_aw_payload_qos <= io_input_aw_payload_qos;
  io_outputs_2_aw_payload_prot <= io_input_aw_payload_prot;
  zz_8 <= ((pkg_toStdLogic((pendingSels and pkg_cat(pkg_toStdLogicVector(io_outputs_2_w_ready),pkg_cat(pkg_toStdLogicVector(io_outputs_1_w_ready),pkg_toStdLogicVector(io_outputs_0_w_ready)))) /= pkg_stdLogicVector("000")) or (pendingError and errorSlave_io_axi_w_ready)) and allowData);
  zz_5 <= ((io_input_w_valid and pendingError) and allowData);
  zz_2 <= pkg_extract(pendingSels,1);
  zz_3 <= pkg_extract(pendingSels,2);
  io_outputs_0_w_valid <= ((io_input_w_valid and pkg_extract(pendingSels,0)) and allowData);
  io_outputs_0_w_payload_data <= io_input_w_payload_data;
  io_outputs_0_w_payload_strb <= io_input_w_payload_strb;
  io_outputs_0_w_payload_last <= io_input_w_payload_last;
  io_outputs_1_w_valid <= ((io_input_w_valid and zz_2) and allowData);
  io_outputs_1_w_payload_data <= io_input_w_payload_data;
  io_outputs_1_w_payload_strb <= io_input_w_payload_strb;
  io_outputs_1_w_payload_last <= io_input_w_payload_last;
  io_outputs_2_w_valid <= ((io_input_w_valid and zz_3) and allowData);
  io_outputs_2_w_payload_data <= io_input_w_payload_data;
  io_outputs_2_w_payload_strb <= io_input_w_payload_strb;
  io_outputs_2_w_payload_last <= io_input_w_payload_last;
  writeRspIndex <= unsigned(pkg_cat(pkg_toStdLogicVector(zz_3),pkg_toStdLogicVector(zz_2)));
  zz_7 <= (pkg_toStdLogic(pkg_cat(pkg_toStdLogicVector(io_outputs_2_b_valid),pkg_cat(pkg_toStdLogicVector(io_outputs_1_b_valid),pkg_toStdLogicVector(io_outputs_0_b_valid))) /= pkg_stdLogicVector("000")) or errorSlave_io_axi_b_valid);
  process(zz_9,pendingError,errorSlave_io_axi_b_payload_id)
  begin
    io_input_b_payload_id <= zz_9;
    if pendingError = '1' then
      io_input_b_payload_id <= errorSlave_io_axi_b_payload_id;
    end if;
  end process;

  process(zz_10,pendingError,errorSlave_io_axi_b_payload_resp)
  begin
    io_input_b_payload_resp <= zz_10;
    if pendingError = '1' then
      io_input_b_payload_resp <= errorSlave_io_axi_b_payload_resp;
    end if;
  end process;

  io_outputs_0_b_ready <= io_input_b_ready;
  io_outputs_1_b_ready <= io_input_b_ready;
  io_outputs_2_b_ready <= io_input_b_ready;
  process(clk, reset)
  begin
    if reset = '1' then
      pendingCmdCounter_value <= pkg_unsigned("000");
      pendingDataCounter_value <= pkg_unsigned("000");
      pendingSels <= pkg_stdLogicVector("000");
      pendingError <= pkg_toStdLogic(false);
      zz_1 <= pkg_toStdLogic(true);
    elsif rising_edge(clk) then
      pendingCmdCounter_value <= pendingCmdCounter_valueNext;
      pendingDataCounter_value <= pendingDataCounter_valueNext;
      if cmdAllowedStart = '1' then
        pendingSels <= decodedCmdSels;
      end if;
      if cmdAllowedStart = '1' then
        pendingError <= decodedCmdError;
      end if;
      if cmdAllowedStart = '1' then
        zz_1 <= pkg_toStdLogic(false);
      end if;
      if zz_6 = '1' then
        zz_1 <= pkg_toStdLogic(true);
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


entity Axi4ReadOnlyDecoder_1 is
  port(
    io_input_ar_valid : in std_logic;
    io_input_ar_ready : out std_logic;
    io_input_ar_payload_addr : in unsigned(12 downto 0);
    io_input_ar_payload_id : in unsigned(3 downto 0);
    io_input_ar_payload_region : in std_logic_vector(3 downto 0);
    io_input_ar_payload_len : in unsigned(7 downto 0);
    io_input_ar_payload_size : in unsigned(2 downto 0);
    io_input_ar_payload_burst : in std_logic_vector(1 downto 0);
    io_input_ar_payload_lock : in std_logic_vector(0 downto 0);
    io_input_ar_payload_cache : in std_logic_vector(3 downto 0);
    io_input_ar_payload_qos : in std_logic_vector(3 downto 0);
    io_input_ar_payload_prot : in std_logic_vector(2 downto 0);
    io_input_r_valid : out std_logic;
    io_input_r_ready : in std_logic;
    io_input_r_payload_data : out std_logic_vector(31 downto 0);
    io_input_r_payload_id : out unsigned(3 downto 0);
    io_input_r_payload_resp : out std_logic_vector(1 downto 0);
    io_input_r_payload_last : out std_logic;
    io_outputs_0_ar_valid : out std_logic;
    io_outputs_0_ar_ready : in std_logic;
    io_outputs_0_ar_payload_addr : out unsigned(12 downto 0);
    io_outputs_0_ar_payload_id : out unsigned(3 downto 0);
    io_outputs_0_ar_payload_region : out std_logic_vector(3 downto 0);
    io_outputs_0_ar_payload_len : out unsigned(7 downto 0);
    io_outputs_0_ar_payload_size : out unsigned(2 downto 0);
    io_outputs_0_ar_payload_burst : out std_logic_vector(1 downto 0);
    io_outputs_0_ar_payload_lock : out std_logic_vector(0 downto 0);
    io_outputs_0_ar_payload_cache : out std_logic_vector(3 downto 0);
    io_outputs_0_ar_payload_qos : out std_logic_vector(3 downto 0);
    io_outputs_0_ar_payload_prot : out std_logic_vector(2 downto 0);
    io_outputs_0_r_valid : in std_logic;
    io_outputs_0_r_ready : out std_logic;
    io_outputs_0_r_payload_data : in std_logic_vector(31 downto 0);
    io_outputs_0_r_payload_id : in unsigned(3 downto 0);
    io_outputs_0_r_payload_resp : in std_logic_vector(1 downto 0);
    io_outputs_0_r_payload_last : in std_logic;
    io_outputs_1_ar_valid : out std_logic;
    io_outputs_1_ar_ready : in std_logic;
    io_outputs_1_ar_payload_addr : out unsigned(12 downto 0);
    io_outputs_1_ar_payload_id : out unsigned(3 downto 0);
    io_outputs_1_ar_payload_region : out std_logic_vector(3 downto 0);
    io_outputs_1_ar_payload_len : out unsigned(7 downto 0);
    io_outputs_1_ar_payload_size : out unsigned(2 downto 0);
    io_outputs_1_ar_payload_burst : out std_logic_vector(1 downto 0);
    io_outputs_1_ar_payload_lock : out std_logic_vector(0 downto 0);
    io_outputs_1_ar_payload_cache : out std_logic_vector(3 downto 0);
    io_outputs_1_ar_payload_qos : out std_logic_vector(3 downto 0);
    io_outputs_1_ar_payload_prot : out std_logic_vector(2 downto 0);
    io_outputs_1_r_valid : in std_logic;
    io_outputs_1_r_ready : out std_logic;
    io_outputs_1_r_payload_data : in std_logic_vector(31 downto 0);
    io_outputs_1_r_payload_id : in unsigned(3 downto 0);
    io_outputs_1_r_payload_resp : in std_logic_vector(1 downto 0);
    io_outputs_1_r_payload_last : in std_logic;
    io_outputs_2_ar_valid : out std_logic;
    io_outputs_2_ar_ready : in std_logic;
    io_outputs_2_ar_payload_addr : out unsigned(12 downto 0);
    io_outputs_2_ar_payload_id : out unsigned(3 downto 0);
    io_outputs_2_ar_payload_region : out std_logic_vector(3 downto 0);
    io_outputs_2_ar_payload_len : out unsigned(7 downto 0);
    io_outputs_2_ar_payload_size : out unsigned(2 downto 0);
    io_outputs_2_ar_payload_burst : out std_logic_vector(1 downto 0);
    io_outputs_2_ar_payload_lock : out std_logic_vector(0 downto 0);
    io_outputs_2_ar_payload_cache : out std_logic_vector(3 downto 0);
    io_outputs_2_ar_payload_qos : out std_logic_vector(3 downto 0);
    io_outputs_2_ar_payload_prot : out std_logic_vector(2 downto 0);
    io_outputs_2_r_valid : in std_logic;
    io_outputs_2_r_ready : out std_logic;
    io_outputs_2_r_payload_data : in std_logic_vector(31 downto 0);
    io_outputs_2_r_payload_id : in unsigned(3 downto 0);
    io_outputs_2_r_payload_resp : in std_logic_vector(1 downto 0);
    io_outputs_2_r_payload_last : in std_logic;
    clk : in std_logic;
    reset : in std_logic
  );
end Axi4ReadOnlyDecoder_1;

architecture arch of Axi4ReadOnlyDecoder_1 is
  signal zz_3 : std_logic;
  signal zz_4 : std_logic;
  signal zz_5 : std_logic;
  signal zz_6 : std_logic;
  signal zz_7 : std_logic_vector(31 downto 0);
  signal zz_8 : unsigned(3 downto 0);
  signal zz_9 : std_logic_vector(1 downto 0);
  signal zz_10 : std_logic;
  signal errorSlave_io_axi_ar_ready : std_logic;
  signal errorSlave_io_axi_r_valid : std_logic;
  signal errorSlave_io_axi_r_payload_data : std_logic_vector(31 downto 0);
  signal errorSlave_io_axi_r_payload_id : unsigned(3 downto 0);
  signal errorSlave_io_axi_r_payload_resp : std_logic_vector(1 downto 0);
  signal errorSlave_io_axi_r_payload_last : std_logic;

  signal pendingCmdCounter_incrementIt : std_logic;
  signal pendingCmdCounter_decrementIt : std_logic;
  signal pendingCmdCounter_valueNext : unsigned(2 downto 0);
  signal pendingCmdCounter_value : unsigned(2 downto 0);
  signal pendingCmdCounter_willOverflowIfInc : std_logic;
  signal pendingCmdCounter_willOverflow : std_logic;
  signal pendingCmdCounter_finalIncrement : unsigned(2 downto 0);
  signal decodedCmdSels : std_logic_vector(2 downto 0);
  signal decodedCmdError : std_logic;
  signal pendingSels : std_logic_vector(2 downto 0);
  signal pendingError : std_logic;
  signal allowCmd : std_logic;
  signal zz_1 : std_logic;
  signal zz_2 : std_logic;
  signal readRspIndex : unsigned(1 downto 0);
begin
  io_input_ar_ready <= zz_4;
  io_input_r_valid <= zz_5;
  io_input_r_payload_last <= zz_6;
  errorSlave : entity work.Axi4ReadOnlyErrorSlave
    port map ( 
      io_axi_ar_valid => zz_3,
      io_axi_ar_ready => errorSlave_io_axi_ar_ready,
      io_axi_ar_payload_addr => io_input_ar_payload_addr,
      io_axi_ar_payload_id => io_input_ar_payload_id,
      io_axi_ar_payload_region => io_input_ar_payload_region,
      io_axi_ar_payload_len => io_input_ar_payload_len,
      io_axi_ar_payload_size => io_input_ar_payload_size,
      io_axi_ar_payload_burst => io_input_ar_payload_burst,
      io_axi_ar_payload_lock => io_input_ar_payload_lock,
      io_axi_ar_payload_cache => io_input_ar_payload_cache,
      io_axi_ar_payload_qos => io_input_ar_payload_qos,
      io_axi_ar_payload_prot => io_input_ar_payload_prot,
      io_axi_r_valid => errorSlave_io_axi_r_valid,
      io_axi_r_ready => io_input_r_ready,
      io_axi_r_payload_data => errorSlave_io_axi_r_payload_data,
      io_axi_r_payload_id => errorSlave_io_axi_r_payload_id,
      io_axi_r_payload_resp => errorSlave_io_axi_r_payload_resp,
      io_axi_r_payload_last => errorSlave_io_axi_r_payload_last,
      clk => clk,
      reset => reset 
    );
  process(readRspIndex,io_outputs_0_r_payload_data,io_outputs_0_r_payload_id,io_outputs_0_r_payload_resp,io_outputs_0_r_payload_last,io_outputs_1_r_payload_data,io_outputs_1_r_payload_id,io_outputs_1_r_payload_resp,io_outputs_1_r_payload_last,io_outputs_2_r_payload_data,io_outputs_2_r_payload_id,io_outputs_2_r_payload_resp,io_outputs_2_r_payload_last)
  begin
    case readRspIndex is
      when "00" =>
        zz_7 <= io_outputs_0_r_payload_data;
        zz_8 <= io_outputs_0_r_payload_id;
        zz_9 <= io_outputs_0_r_payload_resp;
        zz_10 <= io_outputs_0_r_payload_last;
      when "01" =>
        zz_7 <= io_outputs_1_r_payload_data;
        zz_8 <= io_outputs_1_r_payload_id;
        zz_9 <= io_outputs_1_r_payload_resp;
        zz_10 <= io_outputs_1_r_payload_last;
      when others =>
        zz_7 <= io_outputs_2_r_payload_data;
        zz_8 <= io_outputs_2_r_payload_id;
        zz_9 <= io_outputs_2_r_payload_resp;
        zz_10 <= io_outputs_2_r_payload_last;
    end case;
  end process;

  process(io_input_ar_valid,zz_4)
  begin
    pendingCmdCounter_incrementIt <= pkg_toStdLogic(false);
    if (io_input_ar_valid and zz_4) = '1' then
      pendingCmdCounter_incrementIt <= pkg_toStdLogic(true);
    end if;
  end process;

  process(zz_5,io_input_r_ready,zz_6)
  begin
    pendingCmdCounter_decrementIt <= pkg_toStdLogic(false);
    if ((zz_5 and io_input_r_ready) and zz_6) = '1' then
      pendingCmdCounter_decrementIt <= pkg_toStdLogic(true);
    end if;
  end process;

  pendingCmdCounter_willOverflowIfInc <= (pkg_toStdLogic(pendingCmdCounter_value = pkg_unsigned("111")) and (not pendingCmdCounter_decrementIt));
  pendingCmdCounter_willOverflow <= (pendingCmdCounter_willOverflowIfInc and pendingCmdCounter_incrementIt);
  process(pendingCmdCounter_incrementIt,pendingCmdCounter_decrementIt)
  begin
    if (pendingCmdCounter_incrementIt and (not pendingCmdCounter_decrementIt)) = '1' then
      pendingCmdCounter_finalIncrement <= pkg_unsigned("001");
    else
      if ((not pendingCmdCounter_incrementIt) and pendingCmdCounter_decrementIt) = '1' then
        pendingCmdCounter_finalIncrement <= pkg_unsigned("111");
      else
        pendingCmdCounter_finalIncrement <= pkg_unsigned("000");
      end if;
    end if;
  end process;

  pendingCmdCounter_valueNext <= (pendingCmdCounter_value + pendingCmdCounter_finalIncrement);
  decodedCmdSels <= pkg_cat(pkg_toStdLogicVector((pkg_toStdLogic((io_input_ar_payload_addr and pkg_not(pkg_unsigned("0001111111111"))) = pkg_unsigned("0110000000000")) and io_input_ar_valid)),pkg_cat(pkg_toStdLogicVector((pkg_toStdLogic((io_input_ar_payload_addr and pkg_not(pkg_unsigned("0001111111111"))) = pkg_unsigned("0100000000000")) and io_input_ar_valid)),pkg_toStdLogicVector((pkg_toStdLogic((io_input_ar_payload_addr and pkg_not(pkg_unsigned("0001111111111"))) = pkg_unsigned("0000000000000")) and io_input_ar_valid))));
  decodedCmdError <= pkg_toStdLogic(decodedCmdSels = pkg_stdLogicVector("000"));
  allowCmd <= (pkg_toStdLogic(pendingCmdCounter_value = pkg_unsigned("000")) or (pkg_toStdLogic(pendingCmdCounter_value /= pkg_unsigned("111")) and pkg_toStdLogic(pendingSels = decodedCmdSels)));
  zz_4 <= ((pkg_toStdLogic((decodedCmdSels and pkg_cat(pkg_toStdLogicVector(io_outputs_2_ar_ready),pkg_cat(pkg_toStdLogicVector(io_outputs_1_ar_ready),pkg_toStdLogicVector(io_outputs_0_ar_ready)))) /= pkg_stdLogicVector("000")) or (decodedCmdError and errorSlave_io_axi_ar_ready)) and allowCmd);
  zz_3 <= ((io_input_ar_valid and decodedCmdError) and allowCmd);
  io_outputs_0_ar_valid <= ((io_input_ar_valid and pkg_extract(decodedCmdSels,0)) and allowCmd);
  io_outputs_0_ar_payload_addr <= io_input_ar_payload_addr;
  io_outputs_0_ar_payload_id <= io_input_ar_payload_id;
  io_outputs_0_ar_payload_region <= io_input_ar_payload_region;
  io_outputs_0_ar_payload_len <= io_input_ar_payload_len;
  io_outputs_0_ar_payload_size <= io_input_ar_payload_size;
  io_outputs_0_ar_payload_burst <= io_input_ar_payload_burst;
  io_outputs_0_ar_payload_lock <= io_input_ar_payload_lock;
  io_outputs_0_ar_payload_cache <= io_input_ar_payload_cache;
  io_outputs_0_ar_payload_qos <= io_input_ar_payload_qos;
  io_outputs_0_ar_payload_prot <= io_input_ar_payload_prot;
  io_outputs_1_ar_valid <= ((io_input_ar_valid and pkg_extract(decodedCmdSels,1)) and allowCmd);
  io_outputs_1_ar_payload_addr <= io_input_ar_payload_addr;
  io_outputs_1_ar_payload_id <= io_input_ar_payload_id;
  io_outputs_1_ar_payload_region <= io_input_ar_payload_region;
  io_outputs_1_ar_payload_len <= io_input_ar_payload_len;
  io_outputs_1_ar_payload_size <= io_input_ar_payload_size;
  io_outputs_1_ar_payload_burst <= io_input_ar_payload_burst;
  io_outputs_1_ar_payload_lock <= io_input_ar_payload_lock;
  io_outputs_1_ar_payload_cache <= io_input_ar_payload_cache;
  io_outputs_1_ar_payload_qos <= io_input_ar_payload_qos;
  io_outputs_1_ar_payload_prot <= io_input_ar_payload_prot;
  io_outputs_2_ar_valid <= ((io_input_ar_valid and pkg_extract(decodedCmdSels,2)) and allowCmd);
  io_outputs_2_ar_payload_addr <= io_input_ar_payload_addr;
  io_outputs_2_ar_payload_id <= io_input_ar_payload_id;
  io_outputs_2_ar_payload_region <= io_input_ar_payload_region;
  io_outputs_2_ar_payload_len <= io_input_ar_payload_len;
  io_outputs_2_ar_payload_size <= io_input_ar_payload_size;
  io_outputs_2_ar_payload_burst <= io_input_ar_payload_burst;
  io_outputs_2_ar_payload_lock <= io_input_ar_payload_lock;
  io_outputs_2_ar_payload_cache <= io_input_ar_payload_cache;
  io_outputs_2_ar_payload_qos <= io_input_ar_payload_qos;
  io_outputs_2_ar_payload_prot <= io_input_ar_payload_prot;
  zz_1 <= pkg_extract(pendingSels,1);
  zz_2 <= pkg_extract(pendingSels,2);
  readRspIndex <= unsigned(pkg_cat(pkg_toStdLogicVector(zz_2),pkg_toStdLogicVector(zz_1)));
  process(io_outputs_2_r_valid,io_outputs_1_r_valid,io_outputs_0_r_valid,errorSlave_io_axi_r_valid)
  begin
    zz_5 <= pkg_toStdLogic(pkg_cat(pkg_toStdLogicVector(io_outputs_2_r_valid),pkg_cat(pkg_toStdLogicVector(io_outputs_1_r_valid),pkg_toStdLogicVector(io_outputs_0_r_valid))) /= pkg_stdLogicVector("000"));
    if errorSlave_io_axi_r_valid = '1' then
      zz_5 <= pkg_toStdLogic(true);
    end if;
  end process;

  io_input_r_payload_data <= zz_7;
  process(zz_8,pendingError,errorSlave_io_axi_r_payload_id)
  begin
    io_input_r_payload_id <= zz_8;
    if pendingError = '1' then
      io_input_r_payload_id <= errorSlave_io_axi_r_payload_id;
    end if;
  end process;

  process(zz_9,pendingError,errorSlave_io_axi_r_payload_resp)
  begin
    io_input_r_payload_resp <= zz_9;
    if pendingError = '1' then
      io_input_r_payload_resp <= errorSlave_io_axi_r_payload_resp;
    end if;
  end process;

  process(zz_10,pendingError,errorSlave_io_axi_r_payload_last)
  begin
    zz_6 <= zz_10;
    if pendingError = '1' then
      zz_6 <= errorSlave_io_axi_r_payload_last;
    end if;
  end process;

  io_outputs_0_r_ready <= io_input_r_ready;
  io_outputs_1_r_ready <= io_input_r_ready;
  io_outputs_2_r_ready <= io_input_r_ready;
  process(clk, reset)
  begin
    if reset = '1' then
      pendingCmdCounter_value <= pkg_unsigned("000");
      pendingSels <= pkg_stdLogicVector("000");
      pendingError <= pkg_toStdLogic(false);
    elsif rising_edge(clk) then
      pendingCmdCounter_value <= pendingCmdCounter_valueNext;
      if zz_4 = '1' then
        pendingSels <= decodedCmdSels;
      end if;
      if zz_4 = '1' then
        pendingError <= decodedCmdError;
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


entity Axi4WriteOnlyDecoder_1 is
  port(
    io_input_aw_valid : in std_logic;
    io_input_aw_ready : out std_logic;
    io_input_aw_payload_addr : in unsigned(12 downto 0);
    io_input_aw_payload_id : in unsigned(3 downto 0);
    io_input_aw_payload_region : in std_logic_vector(3 downto 0);
    io_input_aw_payload_len : in unsigned(7 downto 0);
    io_input_aw_payload_size : in unsigned(2 downto 0);
    io_input_aw_payload_burst : in std_logic_vector(1 downto 0);
    io_input_aw_payload_lock : in std_logic_vector(0 downto 0);
    io_input_aw_payload_cache : in std_logic_vector(3 downto 0);
    io_input_aw_payload_qos : in std_logic_vector(3 downto 0);
    io_input_aw_payload_prot : in std_logic_vector(2 downto 0);
    io_input_w_valid : in std_logic;
    io_input_w_ready : out std_logic;
    io_input_w_payload_data : in std_logic_vector(31 downto 0);
    io_input_w_payload_strb : in std_logic_vector(3 downto 0);
    io_input_w_payload_last : in std_logic;
    io_input_b_valid : out std_logic;
    io_input_b_ready : in std_logic;
    io_input_b_payload_id : out unsigned(3 downto 0);
    io_input_b_payload_resp : out std_logic_vector(1 downto 0);
    io_outputs_0_aw_valid : out std_logic;
    io_outputs_0_aw_ready : in std_logic;
    io_outputs_0_aw_payload_addr : out unsigned(12 downto 0);
    io_outputs_0_aw_payload_id : out unsigned(3 downto 0);
    io_outputs_0_aw_payload_region : out std_logic_vector(3 downto 0);
    io_outputs_0_aw_payload_len : out unsigned(7 downto 0);
    io_outputs_0_aw_payload_size : out unsigned(2 downto 0);
    io_outputs_0_aw_payload_burst : out std_logic_vector(1 downto 0);
    io_outputs_0_aw_payload_lock : out std_logic_vector(0 downto 0);
    io_outputs_0_aw_payload_cache : out std_logic_vector(3 downto 0);
    io_outputs_0_aw_payload_qos : out std_logic_vector(3 downto 0);
    io_outputs_0_aw_payload_prot : out std_logic_vector(2 downto 0);
    io_outputs_0_w_valid : out std_logic;
    io_outputs_0_w_ready : in std_logic;
    io_outputs_0_w_payload_data : out std_logic_vector(31 downto 0);
    io_outputs_0_w_payload_strb : out std_logic_vector(3 downto 0);
    io_outputs_0_w_payload_last : out std_logic;
    io_outputs_0_b_valid : in std_logic;
    io_outputs_0_b_ready : out std_logic;
    io_outputs_0_b_payload_id : in unsigned(3 downto 0);
    io_outputs_0_b_payload_resp : in std_logic_vector(1 downto 0);
    io_outputs_1_aw_valid : out std_logic;
    io_outputs_1_aw_ready : in std_logic;
    io_outputs_1_aw_payload_addr : out unsigned(12 downto 0);
    io_outputs_1_aw_payload_id : out unsigned(3 downto 0);
    io_outputs_1_aw_payload_region : out std_logic_vector(3 downto 0);
    io_outputs_1_aw_payload_len : out unsigned(7 downto 0);
    io_outputs_1_aw_payload_size : out unsigned(2 downto 0);
    io_outputs_1_aw_payload_burst : out std_logic_vector(1 downto 0);
    io_outputs_1_aw_payload_lock : out std_logic_vector(0 downto 0);
    io_outputs_1_aw_payload_cache : out std_logic_vector(3 downto 0);
    io_outputs_1_aw_payload_qos : out std_logic_vector(3 downto 0);
    io_outputs_1_aw_payload_prot : out std_logic_vector(2 downto 0);
    io_outputs_1_w_valid : out std_logic;
    io_outputs_1_w_ready : in std_logic;
    io_outputs_1_w_payload_data : out std_logic_vector(31 downto 0);
    io_outputs_1_w_payload_strb : out std_logic_vector(3 downto 0);
    io_outputs_1_w_payload_last : out std_logic;
    io_outputs_1_b_valid : in std_logic;
    io_outputs_1_b_ready : out std_logic;
    io_outputs_1_b_payload_id : in unsigned(3 downto 0);
    io_outputs_1_b_payload_resp : in std_logic_vector(1 downto 0);
    io_outputs_2_aw_valid : out std_logic;
    io_outputs_2_aw_ready : in std_logic;
    io_outputs_2_aw_payload_addr : out unsigned(12 downto 0);
    io_outputs_2_aw_payload_id : out unsigned(3 downto 0);
    io_outputs_2_aw_payload_region : out std_logic_vector(3 downto 0);
    io_outputs_2_aw_payload_len : out unsigned(7 downto 0);
    io_outputs_2_aw_payload_size : out unsigned(2 downto 0);
    io_outputs_2_aw_payload_burst : out std_logic_vector(1 downto 0);
    io_outputs_2_aw_payload_lock : out std_logic_vector(0 downto 0);
    io_outputs_2_aw_payload_cache : out std_logic_vector(3 downto 0);
    io_outputs_2_aw_payload_qos : out std_logic_vector(3 downto 0);
    io_outputs_2_aw_payload_prot : out std_logic_vector(2 downto 0);
    io_outputs_2_w_valid : out std_logic;
    io_outputs_2_w_ready : in std_logic;
    io_outputs_2_w_payload_data : out std_logic_vector(31 downto 0);
    io_outputs_2_w_payload_strb : out std_logic_vector(3 downto 0);
    io_outputs_2_w_payload_last : out std_logic;
    io_outputs_2_b_valid : in std_logic;
    io_outputs_2_b_ready : out std_logic;
    io_outputs_2_b_payload_id : in unsigned(3 downto 0);
    io_outputs_2_b_payload_resp : in std_logic_vector(1 downto 0);
    clk : in std_logic;
    reset : in std_logic
  );
end Axi4WriteOnlyDecoder_1;

architecture arch of Axi4WriteOnlyDecoder_1 is
  signal zz_4 : std_logic;
  signal zz_5 : std_logic;
  signal zz_6 : std_logic;
  signal zz_7 : std_logic;
  signal zz_8 : std_logic;
  signal zz_9 : unsigned(3 downto 0);
  signal zz_10 : std_logic_vector(1 downto 0);
  signal errorSlave_io_axi_aw_ready : std_logic;
  signal errorSlave_io_axi_w_ready : std_logic;
  signal errorSlave_io_axi_b_valid : std_logic;
  signal errorSlave_io_axi_b_payload_id : unsigned(3 downto 0);
  signal errorSlave_io_axi_b_payload_resp : std_logic_vector(1 downto 0);

  signal cmdAllowedStart : std_logic;
  signal pendingCmdCounter_incrementIt : std_logic;
  signal pendingCmdCounter_decrementIt : std_logic;
  signal pendingCmdCounter_valueNext : unsigned(2 downto 0);
  signal pendingCmdCounter_value : unsigned(2 downto 0);
  signal pendingCmdCounter_willOverflowIfInc : std_logic;
  signal pendingCmdCounter_willOverflow : std_logic;
  signal pendingCmdCounter_finalIncrement : unsigned(2 downto 0);
  signal pendingDataCounter_incrementIt : std_logic;
  signal pendingDataCounter_decrementIt : std_logic;
  signal pendingDataCounter_valueNext : unsigned(2 downto 0);
  signal pendingDataCounter_value : unsigned(2 downto 0);
  signal pendingDataCounter_willOverflowIfInc : std_logic;
  signal pendingDataCounter_willOverflow : std_logic;
  signal pendingDataCounter_finalIncrement : unsigned(2 downto 0);
  signal decodedCmdSels : std_logic_vector(2 downto 0);
  signal decodedCmdError : std_logic;
  signal pendingSels : std_logic_vector(2 downto 0);
  signal pendingError : std_logic;
  signal allowCmd : std_logic;
  signal allowData : std_logic;
  signal zz_1 : std_logic;
  signal zz_2 : std_logic;
  signal zz_3 : std_logic;
  signal writeRspIndex : unsigned(1 downto 0);
begin
  io_input_aw_ready <= zz_6;
  io_input_b_valid <= zz_7;
  io_input_w_ready <= zz_8;
  errorSlave : entity work.Axi4WriteOnlyErrorSlave
    port map ( 
      io_axi_aw_valid => zz_4,
      io_axi_aw_ready => errorSlave_io_axi_aw_ready,
      io_axi_aw_payload_addr => io_input_aw_payload_addr,
      io_axi_aw_payload_id => io_input_aw_payload_id,
      io_axi_aw_payload_region => io_input_aw_payload_region,
      io_axi_aw_payload_len => io_input_aw_payload_len,
      io_axi_aw_payload_size => io_input_aw_payload_size,
      io_axi_aw_payload_burst => io_input_aw_payload_burst,
      io_axi_aw_payload_lock => io_input_aw_payload_lock,
      io_axi_aw_payload_cache => io_input_aw_payload_cache,
      io_axi_aw_payload_qos => io_input_aw_payload_qos,
      io_axi_aw_payload_prot => io_input_aw_payload_prot,
      io_axi_w_valid => zz_5,
      io_axi_w_ready => errorSlave_io_axi_w_ready,
      io_axi_w_payload_data => io_input_w_payload_data,
      io_axi_w_payload_strb => io_input_w_payload_strb,
      io_axi_w_payload_last => io_input_w_payload_last,
      io_axi_b_valid => errorSlave_io_axi_b_valid,
      io_axi_b_ready => io_input_b_ready,
      io_axi_b_payload_id => errorSlave_io_axi_b_payload_id,
      io_axi_b_payload_resp => errorSlave_io_axi_b_payload_resp,
      clk => clk,
      reset => reset 
    );
  process(writeRspIndex,io_outputs_0_b_payload_id,io_outputs_0_b_payload_resp,io_outputs_1_b_payload_id,io_outputs_1_b_payload_resp,io_outputs_2_b_payload_id,io_outputs_2_b_payload_resp)
  begin
    case writeRspIndex is
      when "00" =>
        zz_9 <= io_outputs_0_b_payload_id;
        zz_10 <= io_outputs_0_b_payload_resp;
      when "01" =>
        zz_9 <= io_outputs_1_b_payload_id;
        zz_10 <= io_outputs_1_b_payload_resp;
      when others =>
        zz_9 <= io_outputs_2_b_payload_id;
        zz_10 <= io_outputs_2_b_payload_resp;
    end case;
  end process;

  process(io_input_aw_valid,zz_6)
  begin
    pendingCmdCounter_incrementIt <= pkg_toStdLogic(false);
    if (io_input_aw_valid and zz_6) = '1' then
      pendingCmdCounter_incrementIt <= pkg_toStdLogic(true);
    end if;
  end process;

  process(zz_7,io_input_b_ready)
  begin
    pendingCmdCounter_decrementIt <= pkg_toStdLogic(false);
    if (zz_7 and io_input_b_ready) = '1' then
      pendingCmdCounter_decrementIt <= pkg_toStdLogic(true);
    end if;
  end process;

  pendingCmdCounter_willOverflowIfInc <= (pkg_toStdLogic(pendingCmdCounter_value = pkg_unsigned("111")) and (not pendingCmdCounter_decrementIt));
  pendingCmdCounter_willOverflow <= (pendingCmdCounter_willOverflowIfInc and pendingCmdCounter_incrementIt);
  process(pendingCmdCounter_incrementIt,pendingCmdCounter_decrementIt)
  begin
    if (pendingCmdCounter_incrementIt and (not pendingCmdCounter_decrementIt)) = '1' then
      pendingCmdCounter_finalIncrement <= pkg_unsigned("001");
    else
      if ((not pendingCmdCounter_incrementIt) and pendingCmdCounter_decrementIt) = '1' then
        pendingCmdCounter_finalIncrement <= pkg_unsigned("111");
      else
        pendingCmdCounter_finalIncrement <= pkg_unsigned("000");
      end if;
    end if;
  end process;

  pendingCmdCounter_valueNext <= (pendingCmdCounter_value + pendingCmdCounter_finalIncrement);
  process(cmdAllowedStart)
  begin
    pendingDataCounter_incrementIt <= pkg_toStdLogic(false);
    if cmdAllowedStart = '1' then
      pendingDataCounter_incrementIt <= pkg_toStdLogic(true);
    end if;
  end process;

  process(io_input_w_valid,zz_8,io_input_w_payload_last)
  begin
    pendingDataCounter_decrementIt <= pkg_toStdLogic(false);
    if ((io_input_w_valid and zz_8) and io_input_w_payload_last) = '1' then
      pendingDataCounter_decrementIt <= pkg_toStdLogic(true);
    end if;
  end process;

  pendingDataCounter_willOverflowIfInc <= (pkg_toStdLogic(pendingDataCounter_value = pkg_unsigned("111")) and (not pendingDataCounter_decrementIt));
  pendingDataCounter_willOverflow <= (pendingDataCounter_willOverflowIfInc and pendingDataCounter_incrementIt);
  process(pendingDataCounter_incrementIt,pendingDataCounter_decrementIt)
  begin
    if (pendingDataCounter_incrementIt and (not pendingDataCounter_decrementIt)) = '1' then
      pendingDataCounter_finalIncrement <= pkg_unsigned("001");
    else
      if ((not pendingDataCounter_incrementIt) and pendingDataCounter_decrementIt) = '1' then
        pendingDataCounter_finalIncrement <= pkg_unsigned("111");
      else
        pendingDataCounter_finalIncrement <= pkg_unsigned("000");
      end if;
    end if;
  end process;

  pendingDataCounter_valueNext <= (pendingDataCounter_value + pendingDataCounter_finalIncrement);
  decodedCmdSels <= pkg_cat(pkg_toStdLogicVector((pkg_toStdLogic((io_input_aw_payload_addr and pkg_not(pkg_unsigned("0001111111111"))) = pkg_unsigned("0110000000000")) and io_input_aw_valid)),pkg_cat(pkg_toStdLogicVector((pkg_toStdLogic((io_input_aw_payload_addr and pkg_not(pkg_unsigned("0001111111111"))) = pkg_unsigned("0100000000000")) and io_input_aw_valid)),pkg_toStdLogicVector((pkg_toStdLogic((io_input_aw_payload_addr and pkg_not(pkg_unsigned("0001111111111"))) = pkg_unsigned("0000000000000")) and io_input_aw_valid))));
  decodedCmdError <= pkg_toStdLogic(decodedCmdSels = pkg_stdLogicVector("000"));
  allowCmd <= (pkg_toStdLogic(pendingCmdCounter_value = pkg_unsigned("000")) or (pkg_toStdLogic(pendingCmdCounter_value /= pkg_unsigned("111")) and pkg_toStdLogic(pendingSels = decodedCmdSels)));
  allowData <= pkg_toStdLogic(pendingDataCounter_value /= pkg_unsigned("000"));
  cmdAllowedStart <= ((io_input_aw_valid and allowCmd) and zz_1);
  zz_6 <= ((pkg_toStdLogic((decodedCmdSels and pkg_cat(pkg_toStdLogicVector(io_outputs_2_aw_ready),pkg_cat(pkg_toStdLogicVector(io_outputs_1_aw_ready),pkg_toStdLogicVector(io_outputs_0_aw_ready)))) /= pkg_stdLogicVector("000")) or (decodedCmdError and errorSlave_io_axi_aw_ready)) and allowCmd);
  zz_4 <= ((io_input_aw_valid and decodedCmdError) and allowCmd);
  io_outputs_0_aw_valid <= ((io_input_aw_valid and pkg_extract(decodedCmdSels,0)) and allowCmd);
  io_outputs_0_aw_payload_addr <= io_input_aw_payload_addr;
  io_outputs_0_aw_payload_id <= io_input_aw_payload_id;
  io_outputs_0_aw_payload_region <= io_input_aw_payload_region;
  io_outputs_0_aw_payload_len <= io_input_aw_payload_len;
  io_outputs_0_aw_payload_size <= io_input_aw_payload_size;
  io_outputs_0_aw_payload_burst <= io_input_aw_payload_burst;
  io_outputs_0_aw_payload_lock <= io_input_aw_payload_lock;
  io_outputs_0_aw_payload_cache <= io_input_aw_payload_cache;
  io_outputs_0_aw_payload_qos <= io_input_aw_payload_qos;
  io_outputs_0_aw_payload_prot <= io_input_aw_payload_prot;
  io_outputs_1_aw_valid <= ((io_input_aw_valid and pkg_extract(decodedCmdSels,1)) and allowCmd);
  io_outputs_1_aw_payload_addr <= io_input_aw_payload_addr;
  io_outputs_1_aw_payload_id <= io_input_aw_payload_id;
  io_outputs_1_aw_payload_region <= io_input_aw_payload_region;
  io_outputs_1_aw_payload_len <= io_input_aw_payload_len;
  io_outputs_1_aw_payload_size <= io_input_aw_payload_size;
  io_outputs_1_aw_payload_burst <= io_input_aw_payload_burst;
  io_outputs_1_aw_payload_lock <= io_input_aw_payload_lock;
  io_outputs_1_aw_payload_cache <= io_input_aw_payload_cache;
  io_outputs_1_aw_payload_qos <= io_input_aw_payload_qos;
  io_outputs_1_aw_payload_prot <= io_input_aw_payload_prot;
  io_outputs_2_aw_valid <= ((io_input_aw_valid and pkg_extract(decodedCmdSels,2)) and allowCmd);
  io_outputs_2_aw_payload_addr <= io_input_aw_payload_addr;
  io_outputs_2_aw_payload_id <= io_input_aw_payload_id;
  io_outputs_2_aw_payload_region <= io_input_aw_payload_region;
  io_outputs_2_aw_payload_len <= io_input_aw_payload_len;
  io_outputs_2_aw_payload_size <= io_input_aw_payload_size;
  io_outputs_2_aw_payload_burst <= io_input_aw_payload_burst;
  io_outputs_2_aw_payload_lock <= io_input_aw_payload_lock;
  io_outputs_2_aw_payload_cache <= io_input_aw_payload_cache;
  io_outputs_2_aw_payload_qos <= io_input_aw_payload_qos;
  io_outputs_2_aw_payload_prot <= io_input_aw_payload_prot;
  zz_8 <= ((pkg_toStdLogic((pendingSels and pkg_cat(pkg_toStdLogicVector(io_outputs_2_w_ready),pkg_cat(pkg_toStdLogicVector(io_outputs_1_w_ready),pkg_toStdLogicVector(io_outputs_0_w_ready)))) /= pkg_stdLogicVector("000")) or (pendingError and errorSlave_io_axi_w_ready)) and allowData);
  zz_5 <= ((io_input_w_valid and pendingError) and allowData);
  zz_2 <= pkg_extract(pendingSels,1);
  zz_3 <= pkg_extract(pendingSels,2);
  io_outputs_0_w_valid <= ((io_input_w_valid and pkg_extract(pendingSels,0)) and allowData);
  io_outputs_0_w_payload_data <= io_input_w_payload_data;
  io_outputs_0_w_payload_strb <= io_input_w_payload_strb;
  io_outputs_0_w_payload_last <= io_input_w_payload_last;
  io_outputs_1_w_valid <= ((io_input_w_valid and zz_2) and allowData);
  io_outputs_1_w_payload_data <= io_input_w_payload_data;
  io_outputs_1_w_payload_strb <= io_input_w_payload_strb;
  io_outputs_1_w_payload_last <= io_input_w_payload_last;
  io_outputs_2_w_valid <= ((io_input_w_valid and zz_3) and allowData);
  io_outputs_2_w_payload_data <= io_input_w_payload_data;
  io_outputs_2_w_payload_strb <= io_input_w_payload_strb;
  io_outputs_2_w_payload_last <= io_input_w_payload_last;
  writeRspIndex <= unsigned(pkg_cat(pkg_toStdLogicVector(zz_3),pkg_toStdLogicVector(zz_2)));
  zz_7 <= (pkg_toStdLogic(pkg_cat(pkg_toStdLogicVector(io_outputs_2_b_valid),pkg_cat(pkg_toStdLogicVector(io_outputs_1_b_valid),pkg_toStdLogicVector(io_outputs_0_b_valid))) /= pkg_stdLogicVector("000")) or errorSlave_io_axi_b_valid);
  process(zz_9,pendingError,errorSlave_io_axi_b_payload_id)
  begin
    io_input_b_payload_id <= zz_9;
    if pendingError = '1' then
      io_input_b_payload_id <= errorSlave_io_axi_b_payload_id;
    end if;
  end process;

  process(zz_10,pendingError,errorSlave_io_axi_b_payload_resp)
  begin
    io_input_b_payload_resp <= zz_10;
    if pendingError = '1' then
      io_input_b_payload_resp <= errorSlave_io_axi_b_payload_resp;
    end if;
  end process;

  io_outputs_0_b_ready <= io_input_b_ready;
  io_outputs_1_b_ready <= io_input_b_ready;
  io_outputs_2_b_ready <= io_input_b_ready;
  process(clk, reset)
  begin
    if reset = '1' then
      pendingCmdCounter_value <= pkg_unsigned("000");
      pendingDataCounter_value <= pkg_unsigned("000");
      pendingSels <= pkg_stdLogicVector("000");
      pendingError <= pkg_toStdLogic(false);
      zz_1 <= pkg_toStdLogic(true);
    elsif rising_edge(clk) then
      pendingCmdCounter_value <= pendingCmdCounter_valueNext;
      pendingDataCounter_value <= pendingDataCounter_valueNext;
      if cmdAllowedStart = '1' then
        pendingSels <= decodedCmdSels;
      end if;
      if cmdAllowedStart = '1' then
        pendingError <= decodedCmdError;
      end if;
      if cmdAllowedStart = '1' then
        zz_1 <= pkg_toStdLogic(false);
      end if;
      if zz_6 = '1' then
        zz_1 <= pkg_toStdLogic(true);
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


entity Axi4ReadOnlyDecoder_2 is
  port(
    io_input_ar_valid : in std_logic;
    io_input_ar_ready : out std_logic;
    io_input_ar_payload_addr : in unsigned(12 downto 0);
    io_input_ar_payload_id : in unsigned(3 downto 0);
    io_input_ar_payload_region : in std_logic_vector(3 downto 0);
    io_input_ar_payload_len : in unsigned(7 downto 0);
    io_input_ar_payload_size : in unsigned(2 downto 0);
    io_input_ar_payload_burst : in std_logic_vector(1 downto 0);
    io_input_ar_payload_lock : in std_logic_vector(0 downto 0);
    io_input_ar_payload_cache : in std_logic_vector(3 downto 0);
    io_input_ar_payload_qos : in std_logic_vector(3 downto 0);
    io_input_ar_payload_prot : in std_logic_vector(2 downto 0);
    io_input_r_valid : out std_logic;
    io_input_r_ready : in std_logic;
    io_input_r_payload_data : out std_logic_vector(31 downto 0);
    io_input_r_payload_id : out unsigned(3 downto 0);
    io_input_r_payload_resp : out std_logic_vector(1 downto 0);
    io_input_r_payload_last : out std_logic;
    io_outputs_0_ar_valid : out std_logic;
    io_outputs_0_ar_ready : in std_logic;
    io_outputs_0_ar_payload_addr : out unsigned(12 downto 0);
    io_outputs_0_ar_payload_id : out unsigned(3 downto 0);
    io_outputs_0_ar_payload_region : out std_logic_vector(3 downto 0);
    io_outputs_0_ar_payload_len : out unsigned(7 downto 0);
    io_outputs_0_ar_payload_size : out unsigned(2 downto 0);
    io_outputs_0_ar_payload_burst : out std_logic_vector(1 downto 0);
    io_outputs_0_ar_payload_lock : out std_logic_vector(0 downto 0);
    io_outputs_0_ar_payload_cache : out std_logic_vector(3 downto 0);
    io_outputs_0_ar_payload_qos : out std_logic_vector(3 downto 0);
    io_outputs_0_ar_payload_prot : out std_logic_vector(2 downto 0);
    io_outputs_0_r_valid : in std_logic;
    io_outputs_0_r_ready : out std_logic;
    io_outputs_0_r_payload_data : in std_logic_vector(31 downto 0);
    io_outputs_0_r_payload_id : in unsigned(3 downto 0);
    io_outputs_0_r_payload_resp : in std_logic_vector(1 downto 0);
    io_outputs_0_r_payload_last : in std_logic;
    io_outputs_1_ar_valid : out std_logic;
    io_outputs_1_ar_ready : in std_logic;
    io_outputs_1_ar_payload_addr : out unsigned(12 downto 0);
    io_outputs_1_ar_payload_id : out unsigned(3 downto 0);
    io_outputs_1_ar_payload_region : out std_logic_vector(3 downto 0);
    io_outputs_1_ar_payload_len : out unsigned(7 downto 0);
    io_outputs_1_ar_payload_size : out unsigned(2 downto 0);
    io_outputs_1_ar_payload_burst : out std_logic_vector(1 downto 0);
    io_outputs_1_ar_payload_lock : out std_logic_vector(0 downto 0);
    io_outputs_1_ar_payload_cache : out std_logic_vector(3 downto 0);
    io_outputs_1_ar_payload_qos : out std_logic_vector(3 downto 0);
    io_outputs_1_ar_payload_prot : out std_logic_vector(2 downto 0);
    io_outputs_1_r_valid : in std_logic;
    io_outputs_1_r_ready : out std_logic;
    io_outputs_1_r_payload_data : in std_logic_vector(31 downto 0);
    io_outputs_1_r_payload_id : in unsigned(3 downto 0);
    io_outputs_1_r_payload_resp : in std_logic_vector(1 downto 0);
    io_outputs_1_r_payload_last : in std_logic;
    io_outputs_2_ar_valid : out std_logic;
    io_outputs_2_ar_ready : in std_logic;
    io_outputs_2_ar_payload_addr : out unsigned(12 downto 0);
    io_outputs_2_ar_payload_id : out unsigned(3 downto 0);
    io_outputs_2_ar_payload_region : out std_logic_vector(3 downto 0);
    io_outputs_2_ar_payload_len : out unsigned(7 downto 0);
    io_outputs_2_ar_payload_size : out unsigned(2 downto 0);
    io_outputs_2_ar_payload_burst : out std_logic_vector(1 downto 0);
    io_outputs_2_ar_payload_lock : out std_logic_vector(0 downto 0);
    io_outputs_2_ar_payload_cache : out std_logic_vector(3 downto 0);
    io_outputs_2_ar_payload_qos : out std_logic_vector(3 downto 0);
    io_outputs_2_ar_payload_prot : out std_logic_vector(2 downto 0);
    io_outputs_2_r_valid : in std_logic;
    io_outputs_2_r_ready : out std_logic;
    io_outputs_2_r_payload_data : in std_logic_vector(31 downto 0);
    io_outputs_2_r_payload_id : in unsigned(3 downto 0);
    io_outputs_2_r_payload_resp : in std_logic_vector(1 downto 0);
    io_outputs_2_r_payload_last : in std_logic;
    clk : in std_logic;
    reset : in std_logic
  );
end Axi4ReadOnlyDecoder_2;

architecture arch of Axi4ReadOnlyDecoder_2 is
  signal zz_3 : std_logic;
  signal zz_4 : std_logic;
  signal zz_5 : std_logic;
  signal zz_6 : std_logic;
  signal zz_7 : std_logic_vector(31 downto 0);
  signal zz_8 : unsigned(3 downto 0);
  signal zz_9 : std_logic_vector(1 downto 0);
  signal zz_10 : std_logic;
  signal errorSlave_io_axi_ar_ready : std_logic;
  signal errorSlave_io_axi_r_valid : std_logic;
  signal errorSlave_io_axi_r_payload_data : std_logic_vector(31 downto 0);
  signal errorSlave_io_axi_r_payload_id : unsigned(3 downto 0);
  signal errorSlave_io_axi_r_payload_resp : std_logic_vector(1 downto 0);
  signal errorSlave_io_axi_r_payload_last : std_logic;

  signal pendingCmdCounter_incrementIt : std_logic;
  signal pendingCmdCounter_decrementIt : std_logic;
  signal pendingCmdCounter_valueNext : unsigned(2 downto 0);
  signal pendingCmdCounter_value : unsigned(2 downto 0);
  signal pendingCmdCounter_willOverflowIfInc : std_logic;
  signal pendingCmdCounter_willOverflow : std_logic;
  signal pendingCmdCounter_finalIncrement : unsigned(2 downto 0);
  signal decodedCmdSels : std_logic_vector(2 downto 0);
  signal decodedCmdError : std_logic;
  signal pendingSels : std_logic_vector(2 downto 0);
  signal pendingError : std_logic;
  signal allowCmd : std_logic;
  signal zz_1 : std_logic;
  signal zz_2 : std_logic;
  signal readRspIndex : unsigned(1 downto 0);
begin
  io_input_ar_ready <= zz_4;
  io_input_r_valid <= zz_5;
  io_input_r_payload_last <= zz_6;
  errorSlave : entity work.Axi4ReadOnlyErrorSlave
    port map ( 
      io_axi_ar_valid => zz_3,
      io_axi_ar_ready => errorSlave_io_axi_ar_ready,
      io_axi_ar_payload_addr => io_input_ar_payload_addr,
      io_axi_ar_payload_id => io_input_ar_payload_id,
      io_axi_ar_payload_region => io_input_ar_payload_region,
      io_axi_ar_payload_len => io_input_ar_payload_len,
      io_axi_ar_payload_size => io_input_ar_payload_size,
      io_axi_ar_payload_burst => io_input_ar_payload_burst,
      io_axi_ar_payload_lock => io_input_ar_payload_lock,
      io_axi_ar_payload_cache => io_input_ar_payload_cache,
      io_axi_ar_payload_qos => io_input_ar_payload_qos,
      io_axi_ar_payload_prot => io_input_ar_payload_prot,
      io_axi_r_valid => errorSlave_io_axi_r_valid,
      io_axi_r_ready => io_input_r_ready,
      io_axi_r_payload_data => errorSlave_io_axi_r_payload_data,
      io_axi_r_payload_id => errorSlave_io_axi_r_payload_id,
      io_axi_r_payload_resp => errorSlave_io_axi_r_payload_resp,
      io_axi_r_payload_last => errorSlave_io_axi_r_payload_last,
      clk => clk,
      reset => reset 
    );
  process(readRspIndex,io_outputs_0_r_payload_data,io_outputs_0_r_payload_id,io_outputs_0_r_payload_resp,io_outputs_0_r_payload_last,io_outputs_1_r_payload_data,io_outputs_1_r_payload_id,io_outputs_1_r_payload_resp,io_outputs_1_r_payload_last,io_outputs_2_r_payload_data,io_outputs_2_r_payload_id,io_outputs_2_r_payload_resp,io_outputs_2_r_payload_last)
  begin
    case readRspIndex is
      when "00" =>
        zz_7 <= io_outputs_0_r_payload_data;
        zz_8 <= io_outputs_0_r_payload_id;
        zz_9 <= io_outputs_0_r_payload_resp;
        zz_10 <= io_outputs_0_r_payload_last;
      when "01" =>
        zz_7 <= io_outputs_1_r_payload_data;
        zz_8 <= io_outputs_1_r_payload_id;
        zz_9 <= io_outputs_1_r_payload_resp;
        zz_10 <= io_outputs_1_r_payload_last;
      when others =>
        zz_7 <= io_outputs_2_r_payload_data;
        zz_8 <= io_outputs_2_r_payload_id;
        zz_9 <= io_outputs_2_r_payload_resp;
        zz_10 <= io_outputs_2_r_payload_last;
    end case;
  end process;

  process(io_input_ar_valid,zz_4)
  begin
    pendingCmdCounter_incrementIt <= pkg_toStdLogic(false);
    if (io_input_ar_valid and zz_4) = '1' then
      pendingCmdCounter_incrementIt <= pkg_toStdLogic(true);
    end if;
  end process;

  process(zz_5,io_input_r_ready,zz_6)
  begin
    pendingCmdCounter_decrementIt <= pkg_toStdLogic(false);
    if ((zz_5 and io_input_r_ready) and zz_6) = '1' then
      pendingCmdCounter_decrementIt <= pkg_toStdLogic(true);
    end if;
  end process;

  pendingCmdCounter_willOverflowIfInc <= (pkg_toStdLogic(pendingCmdCounter_value = pkg_unsigned("111")) and (not pendingCmdCounter_decrementIt));
  pendingCmdCounter_willOverflow <= (pendingCmdCounter_willOverflowIfInc and pendingCmdCounter_incrementIt);
  process(pendingCmdCounter_incrementIt,pendingCmdCounter_decrementIt)
  begin
    if (pendingCmdCounter_incrementIt and (not pendingCmdCounter_decrementIt)) = '1' then
      pendingCmdCounter_finalIncrement <= pkg_unsigned("001");
    else
      if ((not pendingCmdCounter_incrementIt) and pendingCmdCounter_decrementIt) = '1' then
        pendingCmdCounter_finalIncrement <= pkg_unsigned("111");
      else
        pendingCmdCounter_finalIncrement <= pkg_unsigned("000");
      end if;
    end if;
  end process;

  pendingCmdCounter_valueNext <= (pendingCmdCounter_value + pendingCmdCounter_finalIncrement);
  decodedCmdSels <= pkg_cat(pkg_toStdLogicVector((pkg_toStdLogic((io_input_ar_payload_addr and pkg_not(pkg_unsigned("0001111111111"))) = pkg_unsigned("0110000000000")) and io_input_ar_valid)),pkg_cat(pkg_toStdLogicVector((pkg_toStdLogic((io_input_ar_payload_addr and pkg_not(pkg_unsigned("0001111111111"))) = pkg_unsigned("0010000000000")) and io_input_ar_valid)),pkg_toStdLogicVector((pkg_toStdLogic((io_input_ar_payload_addr and pkg_not(pkg_unsigned("0001111111111"))) = pkg_unsigned("0000000000000")) and io_input_ar_valid))));
  decodedCmdError <= pkg_toStdLogic(decodedCmdSels = pkg_stdLogicVector("000"));
  allowCmd <= (pkg_toStdLogic(pendingCmdCounter_value = pkg_unsigned("000")) or (pkg_toStdLogic(pendingCmdCounter_value /= pkg_unsigned("111")) and pkg_toStdLogic(pendingSels = decodedCmdSels)));
  zz_4 <= ((pkg_toStdLogic((decodedCmdSels and pkg_cat(pkg_toStdLogicVector(io_outputs_2_ar_ready),pkg_cat(pkg_toStdLogicVector(io_outputs_1_ar_ready),pkg_toStdLogicVector(io_outputs_0_ar_ready)))) /= pkg_stdLogicVector("000")) or (decodedCmdError and errorSlave_io_axi_ar_ready)) and allowCmd);
  zz_3 <= ((io_input_ar_valid and decodedCmdError) and allowCmd);
  io_outputs_0_ar_valid <= ((io_input_ar_valid and pkg_extract(decodedCmdSels,0)) and allowCmd);
  io_outputs_0_ar_payload_addr <= io_input_ar_payload_addr;
  io_outputs_0_ar_payload_id <= io_input_ar_payload_id;
  io_outputs_0_ar_payload_region <= io_input_ar_payload_region;
  io_outputs_0_ar_payload_len <= io_input_ar_payload_len;
  io_outputs_0_ar_payload_size <= io_input_ar_payload_size;
  io_outputs_0_ar_payload_burst <= io_input_ar_payload_burst;
  io_outputs_0_ar_payload_lock <= io_input_ar_payload_lock;
  io_outputs_0_ar_payload_cache <= io_input_ar_payload_cache;
  io_outputs_0_ar_payload_qos <= io_input_ar_payload_qos;
  io_outputs_0_ar_payload_prot <= io_input_ar_payload_prot;
  io_outputs_1_ar_valid <= ((io_input_ar_valid and pkg_extract(decodedCmdSels,1)) and allowCmd);
  io_outputs_1_ar_payload_addr <= io_input_ar_payload_addr;
  io_outputs_1_ar_payload_id <= io_input_ar_payload_id;
  io_outputs_1_ar_payload_region <= io_input_ar_payload_region;
  io_outputs_1_ar_payload_len <= io_input_ar_payload_len;
  io_outputs_1_ar_payload_size <= io_input_ar_payload_size;
  io_outputs_1_ar_payload_burst <= io_input_ar_payload_burst;
  io_outputs_1_ar_payload_lock <= io_input_ar_payload_lock;
  io_outputs_1_ar_payload_cache <= io_input_ar_payload_cache;
  io_outputs_1_ar_payload_qos <= io_input_ar_payload_qos;
  io_outputs_1_ar_payload_prot <= io_input_ar_payload_prot;
  io_outputs_2_ar_valid <= ((io_input_ar_valid and pkg_extract(decodedCmdSels,2)) and allowCmd);
  io_outputs_2_ar_payload_addr <= io_input_ar_payload_addr;
  io_outputs_2_ar_payload_id <= io_input_ar_payload_id;
  io_outputs_2_ar_payload_region <= io_input_ar_payload_region;
  io_outputs_2_ar_payload_len <= io_input_ar_payload_len;
  io_outputs_2_ar_payload_size <= io_input_ar_payload_size;
  io_outputs_2_ar_payload_burst <= io_input_ar_payload_burst;
  io_outputs_2_ar_payload_lock <= io_input_ar_payload_lock;
  io_outputs_2_ar_payload_cache <= io_input_ar_payload_cache;
  io_outputs_2_ar_payload_qos <= io_input_ar_payload_qos;
  io_outputs_2_ar_payload_prot <= io_input_ar_payload_prot;
  zz_1 <= pkg_extract(pendingSels,1);
  zz_2 <= pkg_extract(pendingSels,2);
  readRspIndex <= unsigned(pkg_cat(pkg_toStdLogicVector(zz_2),pkg_toStdLogicVector(zz_1)));
  process(io_outputs_2_r_valid,io_outputs_1_r_valid,io_outputs_0_r_valid,errorSlave_io_axi_r_valid)
  begin
    zz_5 <= pkg_toStdLogic(pkg_cat(pkg_toStdLogicVector(io_outputs_2_r_valid),pkg_cat(pkg_toStdLogicVector(io_outputs_1_r_valid),pkg_toStdLogicVector(io_outputs_0_r_valid))) /= pkg_stdLogicVector("000"));
    if errorSlave_io_axi_r_valid = '1' then
      zz_5 <= pkg_toStdLogic(true);
    end if;
  end process;

  io_input_r_payload_data <= zz_7;
  process(zz_8,pendingError,errorSlave_io_axi_r_payload_id)
  begin
    io_input_r_payload_id <= zz_8;
    if pendingError = '1' then
      io_input_r_payload_id <= errorSlave_io_axi_r_payload_id;
    end if;
  end process;

  process(zz_9,pendingError,errorSlave_io_axi_r_payload_resp)
  begin
    io_input_r_payload_resp <= zz_9;
    if pendingError = '1' then
      io_input_r_payload_resp <= errorSlave_io_axi_r_payload_resp;
    end if;
  end process;

  process(zz_10,pendingError,errorSlave_io_axi_r_payload_last)
  begin
    zz_6 <= zz_10;
    if pendingError = '1' then
      zz_6 <= errorSlave_io_axi_r_payload_last;
    end if;
  end process;

  io_outputs_0_r_ready <= io_input_r_ready;
  io_outputs_1_r_ready <= io_input_r_ready;
  io_outputs_2_r_ready <= io_input_r_ready;
  process(clk, reset)
  begin
    if reset = '1' then
      pendingCmdCounter_value <= pkg_unsigned("000");
      pendingSels <= pkg_stdLogicVector("000");
      pendingError <= pkg_toStdLogic(false);
    elsif rising_edge(clk) then
      pendingCmdCounter_value <= pendingCmdCounter_valueNext;
      if zz_4 = '1' then
        pendingSels <= decodedCmdSels;
      end if;
      if zz_4 = '1' then
        pendingError <= decodedCmdError;
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


entity Axi4WriteOnlyDecoder_2 is
  port(
    io_input_aw_valid : in std_logic;
    io_input_aw_ready : out std_logic;
    io_input_aw_payload_addr : in unsigned(12 downto 0);
    io_input_aw_payload_id : in unsigned(3 downto 0);
    io_input_aw_payload_region : in std_logic_vector(3 downto 0);
    io_input_aw_payload_len : in unsigned(7 downto 0);
    io_input_aw_payload_size : in unsigned(2 downto 0);
    io_input_aw_payload_burst : in std_logic_vector(1 downto 0);
    io_input_aw_payload_lock : in std_logic_vector(0 downto 0);
    io_input_aw_payload_cache : in std_logic_vector(3 downto 0);
    io_input_aw_payload_qos : in std_logic_vector(3 downto 0);
    io_input_aw_payload_prot : in std_logic_vector(2 downto 0);
    io_input_w_valid : in std_logic;
    io_input_w_ready : out std_logic;
    io_input_w_payload_data : in std_logic_vector(31 downto 0);
    io_input_w_payload_strb : in std_logic_vector(3 downto 0);
    io_input_w_payload_last : in std_logic;
    io_input_b_valid : out std_logic;
    io_input_b_ready : in std_logic;
    io_input_b_payload_id : out unsigned(3 downto 0);
    io_input_b_payload_resp : out std_logic_vector(1 downto 0);
    io_outputs_0_aw_valid : out std_logic;
    io_outputs_0_aw_ready : in std_logic;
    io_outputs_0_aw_payload_addr : out unsigned(12 downto 0);
    io_outputs_0_aw_payload_id : out unsigned(3 downto 0);
    io_outputs_0_aw_payload_region : out std_logic_vector(3 downto 0);
    io_outputs_0_aw_payload_len : out unsigned(7 downto 0);
    io_outputs_0_aw_payload_size : out unsigned(2 downto 0);
    io_outputs_0_aw_payload_burst : out std_logic_vector(1 downto 0);
    io_outputs_0_aw_payload_lock : out std_logic_vector(0 downto 0);
    io_outputs_0_aw_payload_cache : out std_logic_vector(3 downto 0);
    io_outputs_0_aw_payload_qos : out std_logic_vector(3 downto 0);
    io_outputs_0_aw_payload_prot : out std_logic_vector(2 downto 0);
    io_outputs_0_w_valid : out std_logic;
    io_outputs_0_w_ready : in std_logic;
    io_outputs_0_w_payload_data : out std_logic_vector(31 downto 0);
    io_outputs_0_w_payload_strb : out std_logic_vector(3 downto 0);
    io_outputs_0_w_payload_last : out std_logic;
    io_outputs_0_b_valid : in std_logic;
    io_outputs_0_b_ready : out std_logic;
    io_outputs_0_b_payload_id : in unsigned(3 downto 0);
    io_outputs_0_b_payload_resp : in std_logic_vector(1 downto 0);
    io_outputs_1_aw_valid : out std_logic;
    io_outputs_1_aw_ready : in std_logic;
    io_outputs_1_aw_payload_addr : out unsigned(12 downto 0);
    io_outputs_1_aw_payload_id : out unsigned(3 downto 0);
    io_outputs_1_aw_payload_region : out std_logic_vector(3 downto 0);
    io_outputs_1_aw_payload_len : out unsigned(7 downto 0);
    io_outputs_1_aw_payload_size : out unsigned(2 downto 0);
    io_outputs_1_aw_payload_burst : out std_logic_vector(1 downto 0);
    io_outputs_1_aw_payload_lock : out std_logic_vector(0 downto 0);
    io_outputs_1_aw_payload_cache : out std_logic_vector(3 downto 0);
    io_outputs_1_aw_payload_qos : out std_logic_vector(3 downto 0);
    io_outputs_1_aw_payload_prot : out std_logic_vector(2 downto 0);
    io_outputs_1_w_valid : out std_logic;
    io_outputs_1_w_ready : in std_logic;
    io_outputs_1_w_payload_data : out std_logic_vector(31 downto 0);
    io_outputs_1_w_payload_strb : out std_logic_vector(3 downto 0);
    io_outputs_1_w_payload_last : out std_logic;
    io_outputs_1_b_valid : in std_logic;
    io_outputs_1_b_ready : out std_logic;
    io_outputs_1_b_payload_id : in unsigned(3 downto 0);
    io_outputs_1_b_payload_resp : in std_logic_vector(1 downto 0);
    io_outputs_2_aw_valid : out std_logic;
    io_outputs_2_aw_ready : in std_logic;
    io_outputs_2_aw_payload_addr : out unsigned(12 downto 0);
    io_outputs_2_aw_payload_id : out unsigned(3 downto 0);
    io_outputs_2_aw_payload_region : out std_logic_vector(3 downto 0);
    io_outputs_2_aw_payload_len : out unsigned(7 downto 0);
    io_outputs_2_aw_payload_size : out unsigned(2 downto 0);
    io_outputs_2_aw_payload_burst : out std_logic_vector(1 downto 0);
    io_outputs_2_aw_payload_lock : out std_logic_vector(0 downto 0);
    io_outputs_2_aw_payload_cache : out std_logic_vector(3 downto 0);
    io_outputs_2_aw_payload_qos : out std_logic_vector(3 downto 0);
    io_outputs_2_aw_payload_prot : out std_logic_vector(2 downto 0);
    io_outputs_2_w_valid : out std_logic;
    io_outputs_2_w_ready : in std_logic;
    io_outputs_2_w_payload_data : out std_logic_vector(31 downto 0);
    io_outputs_2_w_payload_strb : out std_logic_vector(3 downto 0);
    io_outputs_2_w_payload_last : out std_logic;
    io_outputs_2_b_valid : in std_logic;
    io_outputs_2_b_ready : out std_logic;
    io_outputs_2_b_payload_id : in unsigned(3 downto 0);
    io_outputs_2_b_payload_resp : in std_logic_vector(1 downto 0);
    clk : in std_logic;
    reset : in std_logic
  );
end Axi4WriteOnlyDecoder_2;

architecture arch of Axi4WriteOnlyDecoder_2 is
  signal zz_4 : std_logic;
  signal zz_5 : std_logic;
  signal zz_6 : std_logic;
  signal zz_7 : std_logic;
  signal zz_8 : std_logic;
  signal zz_9 : unsigned(3 downto 0);
  signal zz_10 : std_logic_vector(1 downto 0);
  signal errorSlave_io_axi_aw_ready : std_logic;
  signal errorSlave_io_axi_w_ready : std_logic;
  signal errorSlave_io_axi_b_valid : std_logic;
  signal errorSlave_io_axi_b_payload_id : unsigned(3 downto 0);
  signal errorSlave_io_axi_b_payload_resp : std_logic_vector(1 downto 0);

  signal cmdAllowedStart : std_logic;
  signal pendingCmdCounter_incrementIt : std_logic;
  signal pendingCmdCounter_decrementIt : std_logic;
  signal pendingCmdCounter_valueNext : unsigned(2 downto 0);
  signal pendingCmdCounter_value : unsigned(2 downto 0);
  signal pendingCmdCounter_willOverflowIfInc : std_logic;
  signal pendingCmdCounter_willOverflow : std_logic;
  signal pendingCmdCounter_finalIncrement : unsigned(2 downto 0);
  signal pendingDataCounter_incrementIt : std_logic;
  signal pendingDataCounter_decrementIt : std_logic;
  signal pendingDataCounter_valueNext : unsigned(2 downto 0);
  signal pendingDataCounter_value : unsigned(2 downto 0);
  signal pendingDataCounter_willOverflowIfInc : std_logic;
  signal pendingDataCounter_willOverflow : std_logic;
  signal pendingDataCounter_finalIncrement : unsigned(2 downto 0);
  signal decodedCmdSels : std_logic_vector(2 downto 0);
  signal decodedCmdError : std_logic;
  signal pendingSels : std_logic_vector(2 downto 0);
  signal pendingError : std_logic;
  signal allowCmd : std_logic;
  signal allowData : std_logic;
  signal zz_1 : std_logic;
  signal zz_2 : std_logic;
  signal zz_3 : std_logic;
  signal writeRspIndex : unsigned(1 downto 0);
begin
  io_input_aw_ready <= zz_6;
  io_input_b_valid <= zz_7;
  io_input_w_ready <= zz_8;
  errorSlave : entity work.Axi4WriteOnlyErrorSlave
    port map ( 
      io_axi_aw_valid => zz_4,
      io_axi_aw_ready => errorSlave_io_axi_aw_ready,
      io_axi_aw_payload_addr => io_input_aw_payload_addr,
      io_axi_aw_payload_id => io_input_aw_payload_id,
      io_axi_aw_payload_region => io_input_aw_payload_region,
      io_axi_aw_payload_len => io_input_aw_payload_len,
      io_axi_aw_payload_size => io_input_aw_payload_size,
      io_axi_aw_payload_burst => io_input_aw_payload_burst,
      io_axi_aw_payload_lock => io_input_aw_payload_lock,
      io_axi_aw_payload_cache => io_input_aw_payload_cache,
      io_axi_aw_payload_qos => io_input_aw_payload_qos,
      io_axi_aw_payload_prot => io_input_aw_payload_prot,
      io_axi_w_valid => zz_5,
      io_axi_w_ready => errorSlave_io_axi_w_ready,
      io_axi_w_payload_data => io_input_w_payload_data,
      io_axi_w_payload_strb => io_input_w_payload_strb,
      io_axi_w_payload_last => io_input_w_payload_last,
      io_axi_b_valid => errorSlave_io_axi_b_valid,
      io_axi_b_ready => io_input_b_ready,
      io_axi_b_payload_id => errorSlave_io_axi_b_payload_id,
      io_axi_b_payload_resp => errorSlave_io_axi_b_payload_resp,
      clk => clk,
      reset => reset 
    );
  process(writeRspIndex,io_outputs_0_b_payload_id,io_outputs_0_b_payload_resp,io_outputs_1_b_payload_id,io_outputs_1_b_payload_resp,io_outputs_2_b_payload_id,io_outputs_2_b_payload_resp)
  begin
    case writeRspIndex is
      when "00" =>
        zz_9 <= io_outputs_0_b_payload_id;
        zz_10 <= io_outputs_0_b_payload_resp;
      when "01" =>
        zz_9 <= io_outputs_1_b_payload_id;
        zz_10 <= io_outputs_1_b_payload_resp;
      when others =>
        zz_9 <= io_outputs_2_b_payload_id;
        zz_10 <= io_outputs_2_b_payload_resp;
    end case;
  end process;

  process(io_input_aw_valid,zz_6)
  begin
    pendingCmdCounter_incrementIt <= pkg_toStdLogic(false);
    if (io_input_aw_valid and zz_6) = '1' then
      pendingCmdCounter_incrementIt <= pkg_toStdLogic(true);
    end if;
  end process;

  process(zz_7,io_input_b_ready)
  begin
    pendingCmdCounter_decrementIt <= pkg_toStdLogic(false);
    if (zz_7 and io_input_b_ready) = '1' then
      pendingCmdCounter_decrementIt <= pkg_toStdLogic(true);
    end if;
  end process;

  pendingCmdCounter_willOverflowIfInc <= (pkg_toStdLogic(pendingCmdCounter_value = pkg_unsigned("111")) and (not pendingCmdCounter_decrementIt));
  pendingCmdCounter_willOverflow <= (pendingCmdCounter_willOverflowIfInc and pendingCmdCounter_incrementIt);
  process(pendingCmdCounter_incrementIt,pendingCmdCounter_decrementIt)
  begin
    if (pendingCmdCounter_incrementIt and (not pendingCmdCounter_decrementIt)) = '1' then
      pendingCmdCounter_finalIncrement <= pkg_unsigned("001");
    else
      if ((not pendingCmdCounter_incrementIt) and pendingCmdCounter_decrementIt) = '1' then
        pendingCmdCounter_finalIncrement <= pkg_unsigned("111");
      else
        pendingCmdCounter_finalIncrement <= pkg_unsigned("000");
      end if;
    end if;
  end process;

  pendingCmdCounter_valueNext <= (pendingCmdCounter_value + pendingCmdCounter_finalIncrement);
  process(cmdAllowedStart)
  begin
    pendingDataCounter_incrementIt <= pkg_toStdLogic(false);
    if cmdAllowedStart = '1' then
      pendingDataCounter_incrementIt <= pkg_toStdLogic(true);
    end if;
  end process;

  process(io_input_w_valid,zz_8,io_input_w_payload_last)
  begin
    pendingDataCounter_decrementIt <= pkg_toStdLogic(false);
    if ((io_input_w_valid and zz_8) and io_input_w_payload_last) = '1' then
      pendingDataCounter_decrementIt <= pkg_toStdLogic(true);
    end if;
  end process;

  pendingDataCounter_willOverflowIfInc <= (pkg_toStdLogic(pendingDataCounter_value = pkg_unsigned("111")) and (not pendingDataCounter_decrementIt));
  pendingDataCounter_willOverflow <= (pendingDataCounter_willOverflowIfInc and pendingDataCounter_incrementIt);
  process(pendingDataCounter_incrementIt,pendingDataCounter_decrementIt)
  begin
    if (pendingDataCounter_incrementIt and (not pendingDataCounter_decrementIt)) = '1' then
      pendingDataCounter_finalIncrement <= pkg_unsigned("001");
    else
      if ((not pendingDataCounter_incrementIt) and pendingDataCounter_decrementIt) = '1' then
        pendingDataCounter_finalIncrement <= pkg_unsigned("111");
      else
        pendingDataCounter_finalIncrement <= pkg_unsigned("000");
      end if;
    end if;
  end process;

  pendingDataCounter_valueNext <= (pendingDataCounter_value + pendingDataCounter_finalIncrement);
  decodedCmdSels <= pkg_cat(pkg_toStdLogicVector((pkg_toStdLogic((io_input_aw_payload_addr and pkg_not(pkg_unsigned("0001111111111"))) = pkg_unsigned("0110000000000")) and io_input_aw_valid)),pkg_cat(pkg_toStdLogicVector((pkg_toStdLogic((io_input_aw_payload_addr and pkg_not(pkg_unsigned("0001111111111"))) = pkg_unsigned("0010000000000")) and io_input_aw_valid)),pkg_toStdLogicVector((pkg_toStdLogic((io_input_aw_payload_addr and pkg_not(pkg_unsigned("0001111111111"))) = pkg_unsigned("0000000000000")) and io_input_aw_valid))));
  decodedCmdError <= pkg_toStdLogic(decodedCmdSels = pkg_stdLogicVector("000"));
  allowCmd <= (pkg_toStdLogic(pendingCmdCounter_value = pkg_unsigned("000")) or (pkg_toStdLogic(pendingCmdCounter_value /= pkg_unsigned("111")) and pkg_toStdLogic(pendingSels = decodedCmdSels)));
  allowData <= pkg_toStdLogic(pendingDataCounter_value /= pkg_unsigned("000"));
  cmdAllowedStart <= ((io_input_aw_valid and allowCmd) and zz_1);
  zz_6 <= ((pkg_toStdLogic((decodedCmdSels and pkg_cat(pkg_toStdLogicVector(io_outputs_2_aw_ready),pkg_cat(pkg_toStdLogicVector(io_outputs_1_aw_ready),pkg_toStdLogicVector(io_outputs_0_aw_ready)))) /= pkg_stdLogicVector("000")) or (decodedCmdError and errorSlave_io_axi_aw_ready)) and allowCmd);
  zz_4 <= ((io_input_aw_valid and decodedCmdError) and allowCmd);
  io_outputs_0_aw_valid <= ((io_input_aw_valid and pkg_extract(decodedCmdSels,0)) and allowCmd);
  io_outputs_0_aw_payload_addr <= io_input_aw_payload_addr;
  io_outputs_0_aw_payload_id <= io_input_aw_payload_id;
  io_outputs_0_aw_payload_region <= io_input_aw_payload_region;
  io_outputs_0_aw_payload_len <= io_input_aw_payload_len;
  io_outputs_0_aw_payload_size <= io_input_aw_payload_size;
  io_outputs_0_aw_payload_burst <= io_input_aw_payload_burst;
  io_outputs_0_aw_payload_lock <= io_input_aw_payload_lock;
  io_outputs_0_aw_payload_cache <= io_input_aw_payload_cache;
  io_outputs_0_aw_payload_qos <= io_input_aw_payload_qos;
  io_outputs_0_aw_payload_prot <= io_input_aw_payload_prot;
  io_outputs_1_aw_valid <= ((io_input_aw_valid and pkg_extract(decodedCmdSels,1)) and allowCmd);
  io_outputs_1_aw_payload_addr <= io_input_aw_payload_addr;
  io_outputs_1_aw_payload_id <= io_input_aw_payload_id;
  io_outputs_1_aw_payload_region <= io_input_aw_payload_region;
  io_outputs_1_aw_payload_len <= io_input_aw_payload_len;
  io_outputs_1_aw_payload_size <= io_input_aw_payload_size;
  io_outputs_1_aw_payload_burst <= io_input_aw_payload_burst;
  io_outputs_1_aw_payload_lock <= io_input_aw_payload_lock;
  io_outputs_1_aw_payload_cache <= io_input_aw_payload_cache;
  io_outputs_1_aw_payload_qos <= io_input_aw_payload_qos;
  io_outputs_1_aw_payload_prot <= io_input_aw_payload_prot;
  io_outputs_2_aw_valid <= ((io_input_aw_valid and pkg_extract(decodedCmdSels,2)) and allowCmd);
  io_outputs_2_aw_payload_addr <= io_input_aw_payload_addr;
  io_outputs_2_aw_payload_id <= io_input_aw_payload_id;
  io_outputs_2_aw_payload_region <= io_input_aw_payload_region;
  io_outputs_2_aw_payload_len <= io_input_aw_payload_len;
  io_outputs_2_aw_payload_size <= io_input_aw_payload_size;
  io_outputs_2_aw_payload_burst <= io_input_aw_payload_burst;
  io_outputs_2_aw_payload_lock <= io_input_aw_payload_lock;
  io_outputs_2_aw_payload_cache <= io_input_aw_payload_cache;
  io_outputs_2_aw_payload_qos <= io_input_aw_payload_qos;
  io_outputs_2_aw_payload_prot <= io_input_aw_payload_prot;
  zz_8 <= ((pkg_toStdLogic((pendingSels and pkg_cat(pkg_toStdLogicVector(io_outputs_2_w_ready),pkg_cat(pkg_toStdLogicVector(io_outputs_1_w_ready),pkg_toStdLogicVector(io_outputs_0_w_ready)))) /= pkg_stdLogicVector("000")) or (pendingError and errorSlave_io_axi_w_ready)) and allowData);
  zz_5 <= ((io_input_w_valid and pendingError) and allowData);
  zz_2 <= pkg_extract(pendingSels,1);
  zz_3 <= pkg_extract(pendingSels,2);
  io_outputs_0_w_valid <= ((io_input_w_valid and pkg_extract(pendingSels,0)) and allowData);
  io_outputs_0_w_payload_data <= io_input_w_payload_data;
  io_outputs_0_w_payload_strb <= io_input_w_payload_strb;
  io_outputs_0_w_payload_last <= io_input_w_payload_last;
  io_outputs_1_w_valid <= ((io_input_w_valid and zz_2) and allowData);
  io_outputs_1_w_payload_data <= io_input_w_payload_data;
  io_outputs_1_w_payload_strb <= io_input_w_payload_strb;
  io_outputs_1_w_payload_last <= io_input_w_payload_last;
  io_outputs_2_w_valid <= ((io_input_w_valid and zz_3) and allowData);
  io_outputs_2_w_payload_data <= io_input_w_payload_data;
  io_outputs_2_w_payload_strb <= io_input_w_payload_strb;
  io_outputs_2_w_payload_last <= io_input_w_payload_last;
  writeRspIndex <= unsigned(pkg_cat(pkg_toStdLogicVector(zz_3),pkg_toStdLogicVector(zz_2)));
  zz_7 <= (pkg_toStdLogic(pkg_cat(pkg_toStdLogicVector(io_outputs_2_b_valid),pkg_cat(pkg_toStdLogicVector(io_outputs_1_b_valid),pkg_toStdLogicVector(io_outputs_0_b_valid))) /= pkg_stdLogicVector("000")) or errorSlave_io_axi_b_valid);
  process(zz_9,pendingError,errorSlave_io_axi_b_payload_id)
  begin
    io_input_b_payload_id <= zz_9;
    if pendingError = '1' then
      io_input_b_payload_id <= errorSlave_io_axi_b_payload_id;
    end if;
  end process;

  process(zz_10,pendingError,errorSlave_io_axi_b_payload_resp)
  begin
    io_input_b_payload_resp <= zz_10;
    if pendingError = '1' then
      io_input_b_payload_resp <= errorSlave_io_axi_b_payload_resp;
    end if;
  end process;

  io_outputs_0_b_ready <= io_input_b_ready;
  io_outputs_1_b_ready <= io_input_b_ready;
  io_outputs_2_b_ready <= io_input_b_ready;
  process(clk, reset)
  begin
    if reset = '1' then
      pendingCmdCounter_value <= pkg_unsigned("000");
      pendingDataCounter_value <= pkg_unsigned("000");
      pendingSels <= pkg_stdLogicVector("000");
      pendingError <= pkg_toStdLogic(false);
      zz_1 <= pkg_toStdLogic(true);
    elsif rising_edge(clk) then
      pendingCmdCounter_value <= pendingCmdCounter_valueNext;
      pendingDataCounter_value <= pendingDataCounter_valueNext;
      if cmdAllowedStart = '1' then
        pendingSels <= decodedCmdSels;
      end if;
      if cmdAllowedStart = '1' then
        pendingError <= decodedCmdError;
      end if;
      if cmdAllowedStart = '1' then
        zz_1 <= pkg_toStdLogic(false);
      end if;
      if zz_6 = '1' then
        zz_1 <= pkg_toStdLogic(true);
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


entity Axi4ReadOnlyArbiter is
  port(
    io_inputs_0_ar_valid : in std_logic;
    io_inputs_0_ar_ready : out std_logic;
    io_inputs_0_ar_payload_addr : in unsigned(12 downto 0);
    io_inputs_0_ar_payload_id : in unsigned(4 downto 0);
    io_inputs_0_ar_payload_region : in std_logic_vector(3 downto 0);
    io_inputs_0_ar_payload_len : in unsigned(7 downto 0);
    io_inputs_0_ar_payload_size : in unsigned(2 downto 0);
    io_inputs_0_ar_payload_burst : in std_logic_vector(1 downto 0);
    io_inputs_0_ar_payload_lock : in std_logic_vector(0 downto 0);
    io_inputs_0_ar_payload_cache : in std_logic_vector(3 downto 0);
    io_inputs_0_ar_payload_qos : in std_logic_vector(3 downto 0);
    io_inputs_0_ar_payload_prot : in std_logic_vector(2 downto 0);
    io_inputs_0_r_valid : out std_logic;
    io_inputs_0_r_ready : in std_logic;
    io_inputs_0_r_payload_data : out std_logic_vector(31 downto 0);
    io_inputs_0_r_payload_id : out unsigned(4 downto 0);
    io_inputs_0_r_payload_resp : out std_logic_vector(1 downto 0);
    io_inputs_0_r_payload_last : out std_logic;
    io_inputs_1_ar_valid : in std_logic;
    io_inputs_1_ar_ready : out std_logic;
    io_inputs_1_ar_payload_addr : in unsigned(12 downto 0);
    io_inputs_1_ar_payload_id : in unsigned(4 downto 0);
    io_inputs_1_ar_payload_region : in std_logic_vector(3 downto 0);
    io_inputs_1_ar_payload_len : in unsigned(7 downto 0);
    io_inputs_1_ar_payload_size : in unsigned(2 downto 0);
    io_inputs_1_ar_payload_burst : in std_logic_vector(1 downto 0);
    io_inputs_1_ar_payload_lock : in std_logic_vector(0 downto 0);
    io_inputs_1_ar_payload_cache : in std_logic_vector(3 downto 0);
    io_inputs_1_ar_payload_qos : in std_logic_vector(3 downto 0);
    io_inputs_1_ar_payload_prot : in std_logic_vector(2 downto 0);
    io_inputs_1_r_valid : out std_logic;
    io_inputs_1_r_ready : in std_logic;
    io_inputs_1_r_payload_data : out std_logic_vector(31 downto 0);
    io_inputs_1_r_payload_id : out unsigned(4 downto 0);
    io_inputs_1_r_payload_resp : out std_logic_vector(1 downto 0);
    io_inputs_1_r_payload_last : out std_logic;
    io_output_ar_valid : out std_logic;
    io_output_ar_ready : in std_logic;
    io_output_ar_payload_addr : out unsigned(12 downto 0);
    io_output_ar_payload_id : out unsigned(5 downto 0);
    io_output_ar_payload_region : out std_logic_vector(3 downto 0);
    io_output_ar_payload_len : out unsigned(7 downto 0);
    io_output_ar_payload_size : out unsigned(2 downto 0);
    io_output_ar_payload_burst : out std_logic_vector(1 downto 0);
    io_output_ar_payload_lock : out std_logic_vector(0 downto 0);
    io_output_ar_payload_cache : out std_logic_vector(3 downto 0);
    io_output_ar_payload_qos : out std_logic_vector(3 downto 0);
    io_output_ar_payload_prot : out std_logic_vector(2 downto 0);
    io_output_r_valid : in std_logic;
    io_output_r_ready : out std_logic;
    io_output_r_payload_data : in std_logic_vector(31 downto 0);
    io_output_r_payload_id : in unsigned(5 downto 0);
    io_output_r_payload_resp : in std_logic_vector(1 downto 0);
    io_output_r_payload_last : in std_logic;
    clk : in std_logic;
    reset : in std_logic
  );
end Axi4ReadOnlyArbiter;

architecture arch of Axi4ReadOnlyArbiter is
  signal zz_1 : std_logic;
  signal cmdArbiter_io_inputs_0_ready : std_logic;
  signal cmdArbiter_io_inputs_1_ready : std_logic;
  signal cmdArbiter_io_output_valid : std_logic;
  signal cmdArbiter_io_output_payload_addr : unsigned(12 downto 0);
  signal cmdArbiter_io_output_payload_id : unsigned(4 downto 0);
  signal cmdArbiter_io_output_payload_region : std_logic_vector(3 downto 0);
  signal cmdArbiter_io_output_payload_len : unsigned(7 downto 0);
  signal cmdArbiter_io_output_payload_size : unsigned(2 downto 0);
  signal cmdArbiter_io_output_payload_burst : std_logic_vector(1 downto 0);
  signal cmdArbiter_io_output_payload_lock : std_logic_vector(0 downto 0);
  signal cmdArbiter_io_output_payload_cache : std_logic_vector(3 downto 0);
  signal cmdArbiter_io_output_payload_qos : std_logic_vector(3 downto 0);
  signal cmdArbiter_io_output_payload_prot : std_logic_vector(2 downto 0);
  signal cmdArbiter_io_chosen : unsigned(0 downto 0);
  signal cmdArbiter_io_chosenOH : std_logic_vector(1 downto 0);

  signal readRspIndex : unsigned(0 downto 0);
  signal readRspSels_0 : std_logic;
  signal readRspSels_1 : std_logic;
begin
  cmdArbiter : entity work.StreamArbiter
    port map ( 
      io_inputs_0_valid => io_inputs_0_ar_valid,
      io_inputs_0_ready => cmdArbiter_io_inputs_0_ready,
      io_inputs_0_payload_addr => io_inputs_0_ar_payload_addr,
      io_inputs_0_payload_id => io_inputs_0_ar_payload_id,
      io_inputs_0_payload_region => io_inputs_0_ar_payload_region,
      io_inputs_0_payload_len => io_inputs_0_ar_payload_len,
      io_inputs_0_payload_size => io_inputs_0_ar_payload_size,
      io_inputs_0_payload_burst => io_inputs_0_ar_payload_burst,
      io_inputs_0_payload_lock => io_inputs_0_ar_payload_lock,
      io_inputs_0_payload_cache => io_inputs_0_ar_payload_cache,
      io_inputs_0_payload_qos => io_inputs_0_ar_payload_qos,
      io_inputs_0_payload_prot => io_inputs_0_ar_payload_prot,
      io_inputs_1_valid => io_inputs_1_ar_valid,
      io_inputs_1_ready => cmdArbiter_io_inputs_1_ready,
      io_inputs_1_payload_addr => io_inputs_1_ar_payload_addr,
      io_inputs_1_payload_id => io_inputs_1_ar_payload_id,
      io_inputs_1_payload_region => io_inputs_1_ar_payload_region,
      io_inputs_1_payload_len => io_inputs_1_ar_payload_len,
      io_inputs_1_payload_size => io_inputs_1_ar_payload_size,
      io_inputs_1_payload_burst => io_inputs_1_ar_payload_burst,
      io_inputs_1_payload_lock => io_inputs_1_ar_payload_lock,
      io_inputs_1_payload_cache => io_inputs_1_ar_payload_cache,
      io_inputs_1_payload_qos => io_inputs_1_ar_payload_qos,
      io_inputs_1_payload_prot => io_inputs_1_ar_payload_prot,
      io_output_valid => cmdArbiter_io_output_valid,
      io_output_ready => io_output_ar_ready,
      io_output_payload_addr => cmdArbiter_io_output_payload_addr,
      io_output_payload_id => cmdArbiter_io_output_payload_id,
      io_output_payload_region => cmdArbiter_io_output_payload_region,
      io_output_payload_len => cmdArbiter_io_output_payload_len,
      io_output_payload_size => cmdArbiter_io_output_payload_size,
      io_output_payload_burst => cmdArbiter_io_output_payload_burst,
      io_output_payload_lock => cmdArbiter_io_output_payload_lock,
      io_output_payload_cache => cmdArbiter_io_output_payload_cache,
      io_output_payload_qos => cmdArbiter_io_output_payload_qos,
      io_output_payload_prot => cmdArbiter_io_output_payload_prot,
      io_chosen => cmdArbiter_io_chosen,
      io_chosenOH => cmdArbiter_io_chosenOH,
      clk => clk,
      reset => reset 
    );
  process(readRspIndex,io_inputs_0_r_ready,io_inputs_1_r_ready)
  begin
    case readRspIndex is
      when "0" =>
        zz_1 <= io_inputs_0_r_ready;
      when others =>
        zz_1 <= io_inputs_1_r_ready;
    end case;
  end process;

  io_inputs_0_ar_ready <= cmdArbiter_io_inputs_0_ready;
  io_inputs_1_ar_ready <= cmdArbiter_io_inputs_1_ready;
  io_output_ar_valid <= cmdArbiter_io_output_valid;
  io_output_ar_payload_addr <= cmdArbiter_io_output_payload_addr;
  io_output_ar_payload_region <= cmdArbiter_io_output_payload_region;
  io_output_ar_payload_len <= cmdArbiter_io_output_payload_len;
  io_output_ar_payload_size <= cmdArbiter_io_output_payload_size;
  io_output_ar_payload_burst <= cmdArbiter_io_output_payload_burst;
  io_output_ar_payload_lock <= cmdArbiter_io_output_payload_lock;
  io_output_ar_payload_cache <= cmdArbiter_io_output_payload_cache;
  io_output_ar_payload_qos <= cmdArbiter_io_output_payload_qos;
  io_output_ar_payload_prot <= cmdArbiter_io_output_payload_prot;
  io_output_ar_payload_id <= unsigned(pkg_cat(std_logic_vector(cmdArbiter_io_chosen),std_logic_vector(cmdArbiter_io_output_payload_id)));
  readRspIndex <= pkg_extract(io_output_r_payload_id,5,5);
  readRspSels_0 <= pkg_toStdLogic(readRspIndex = pkg_unsigned("0"));
  readRspSels_1 <= pkg_toStdLogic(readRspIndex = pkg_unsigned("1"));
  io_inputs_0_r_valid <= (io_output_r_valid and readRspSels_0);
  io_inputs_0_r_payload_data <= io_output_r_payload_data;
  io_inputs_0_r_payload_resp <= io_output_r_payload_resp;
  io_inputs_0_r_payload_last <= io_output_r_payload_last;
  io_inputs_0_r_payload_id <= pkg_extract(io_output_r_payload_id,4,0);
  io_inputs_1_r_valid <= (io_output_r_valid and readRspSels_1);
  io_inputs_1_r_payload_data <= io_output_r_payload_data;
  io_inputs_1_r_payload_resp <= io_output_r_payload_resp;
  io_inputs_1_r_payload_last <= io_output_r_payload_last;
  io_inputs_1_r_payload_id <= pkg_extract(io_output_r_payload_id,4,0);
  io_output_r_ready <= zz_1;
end arch;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.pkg_scala2hdl.all;
use work.all;
use work.pkg_enum.all;


entity Axi4WriteOnlyArbiter is
  port(
    io_inputs_0_aw_valid : in std_logic;
    io_inputs_0_aw_ready : out std_logic;
    io_inputs_0_aw_payload_addr : in unsigned(12 downto 0);
    io_inputs_0_aw_payload_id : in unsigned(4 downto 0);
    io_inputs_0_aw_payload_region : in std_logic_vector(3 downto 0);
    io_inputs_0_aw_payload_len : in unsigned(7 downto 0);
    io_inputs_0_aw_payload_size : in unsigned(2 downto 0);
    io_inputs_0_aw_payload_burst : in std_logic_vector(1 downto 0);
    io_inputs_0_aw_payload_lock : in std_logic_vector(0 downto 0);
    io_inputs_0_aw_payload_cache : in std_logic_vector(3 downto 0);
    io_inputs_0_aw_payload_qos : in std_logic_vector(3 downto 0);
    io_inputs_0_aw_payload_prot : in std_logic_vector(2 downto 0);
    io_inputs_0_w_valid : in std_logic;
    io_inputs_0_w_ready : out std_logic;
    io_inputs_0_w_payload_data : in std_logic_vector(31 downto 0);
    io_inputs_0_w_payload_strb : in std_logic_vector(3 downto 0);
    io_inputs_0_w_payload_last : in std_logic;
    io_inputs_0_b_valid : out std_logic;
    io_inputs_0_b_ready : in std_logic;
    io_inputs_0_b_payload_id : out unsigned(4 downto 0);
    io_inputs_0_b_payload_resp : out std_logic_vector(1 downto 0);
    io_inputs_1_aw_valid : in std_logic;
    io_inputs_1_aw_ready : out std_logic;
    io_inputs_1_aw_payload_addr : in unsigned(12 downto 0);
    io_inputs_1_aw_payload_id : in unsigned(4 downto 0);
    io_inputs_1_aw_payload_region : in std_logic_vector(3 downto 0);
    io_inputs_1_aw_payload_len : in unsigned(7 downto 0);
    io_inputs_1_aw_payload_size : in unsigned(2 downto 0);
    io_inputs_1_aw_payload_burst : in std_logic_vector(1 downto 0);
    io_inputs_1_aw_payload_lock : in std_logic_vector(0 downto 0);
    io_inputs_1_aw_payload_cache : in std_logic_vector(3 downto 0);
    io_inputs_1_aw_payload_qos : in std_logic_vector(3 downto 0);
    io_inputs_1_aw_payload_prot : in std_logic_vector(2 downto 0);
    io_inputs_1_w_valid : in std_logic;
    io_inputs_1_w_ready : out std_logic;
    io_inputs_1_w_payload_data : in std_logic_vector(31 downto 0);
    io_inputs_1_w_payload_strb : in std_logic_vector(3 downto 0);
    io_inputs_1_w_payload_last : in std_logic;
    io_inputs_1_b_valid : out std_logic;
    io_inputs_1_b_ready : in std_logic;
    io_inputs_1_b_payload_id : out unsigned(4 downto 0);
    io_inputs_1_b_payload_resp : out std_logic_vector(1 downto 0);
    io_output_aw_valid : out std_logic;
    io_output_aw_ready : in std_logic;
    io_output_aw_payload_addr : out unsigned(12 downto 0);
    io_output_aw_payload_id : out unsigned(5 downto 0);
    io_output_aw_payload_region : out std_logic_vector(3 downto 0);
    io_output_aw_payload_len : out unsigned(7 downto 0);
    io_output_aw_payload_size : out unsigned(2 downto 0);
    io_output_aw_payload_burst : out std_logic_vector(1 downto 0);
    io_output_aw_payload_lock : out std_logic_vector(0 downto 0);
    io_output_aw_payload_cache : out std_logic_vector(3 downto 0);
    io_output_aw_payload_qos : out std_logic_vector(3 downto 0);
    io_output_aw_payload_prot : out std_logic_vector(2 downto 0);
    io_output_w_valid : out std_logic;
    io_output_w_ready : in std_logic;
    io_output_w_payload_data : out std_logic_vector(31 downto 0);
    io_output_w_payload_strb : out std_logic_vector(3 downto 0);
    io_output_w_payload_last : out std_logic;
    io_output_b_valid : in std_logic;
    io_output_b_ready : out std_logic;
    io_output_b_payload_id : in unsigned(5 downto 0);
    io_output_b_payload_resp : in std_logic_vector(1 downto 0);
    clk : in std_logic;
    reset : in std_logic
  );
end Axi4WriteOnlyArbiter;

architecture arch of Axi4WriteOnlyArbiter is
  signal zz_1 : std_logic;
  signal zz_2 : std_logic;
  signal zz_3 : std_logic;
  signal zz_4 : std_logic;
  signal zz_5 : std_logic;
  signal zz_6 : std_logic_vector(31 downto 0);
  signal zz_7 : std_logic_vector(3 downto 0);
  signal zz_8 : std_logic;
  signal zz_9 : std_logic;
  signal cmdArbiter_io_inputs_0_ready : std_logic;
  signal cmdArbiter_io_inputs_1_ready : std_logic;
  signal cmdArbiter_io_output_valid : std_logic;
  signal cmdArbiter_io_output_payload_addr : unsigned(12 downto 0);
  signal cmdArbiter_io_output_payload_id : unsigned(4 downto 0);
  signal cmdArbiter_io_output_payload_region : std_logic_vector(3 downto 0);
  signal cmdArbiter_io_output_payload_len : unsigned(7 downto 0);
  signal cmdArbiter_io_output_payload_size : unsigned(2 downto 0);
  signal cmdArbiter_io_output_payload_burst : std_logic_vector(1 downto 0);
  signal cmdArbiter_io_output_payload_lock : std_logic_vector(0 downto 0);
  signal cmdArbiter_io_output_payload_cache : std_logic_vector(3 downto 0);
  signal cmdArbiter_io_output_payload_qos : std_logic_vector(3 downto 0);
  signal cmdArbiter_io_output_payload_prot : std_logic_vector(2 downto 0);
  signal cmdArbiter_io_chosen : unsigned(0 downto 0);
  signal cmdArbiter_io_chosenOH : std_logic_vector(1 downto 0);
  signal cmdArbiter_io_output_fork_io_input_ready : std_logic;
  signal cmdArbiter_io_output_fork_io_outputs_0_valid : std_logic;
  signal cmdArbiter_io_output_fork_io_outputs_0_payload_addr : unsigned(12 downto 0);
  signal cmdArbiter_io_output_fork_io_outputs_0_payload_id : unsigned(4 downto 0);
  signal cmdArbiter_io_output_fork_io_outputs_0_payload_region : std_logic_vector(3 downto 0);
  signal cmdArbiter_io_output_fork_io_outputs_0_payload_len : unsigned(7 downto 0);
  signal cmdArbiter_io_output_fork_io_outputs_0_payload_size : unsigned(2 downto 0);
  signal cmdArbiter_io_output_fork_io_outputs_0_payload_burst : std_logic_vector(1 downto 0);
  signal cmdArbiter_io_output_fork_io_outputs_0_payload_lock : std_logic_vector(0 downto 0);
  signal cmdArbiter_io_output_fork_io_outputs_0_payload_cache : std_logic_vector(3 downto 0);
  signal cmdArbiter_io_output_fork_io_outputs_0_payload_qos : std_logic_vector(3 downto 0);
  signal cmdArbiter_io_output_fork_io_outputs_0_payload_prot : std_logic_vector(2 downto 0);
  signal cmdArbiter_io_output_fork_io_outputs_1_valid : std_logic;
  signal cmdArbiter_io_output_fork_io_outputs_1_payload_addr : unsigned(12 downto 0);
  signal cmdArbiter_io_output_fork_io_outputs_1_payload_id : unsigned(4 downto 0);
  signal cmdArbiter_io_output_fork_io_outputs_1_payload_region : std_logic_vector(3 downto 0);
  signal cmdArbiter_io_output_fork_io_outputs_1_payload_len : unsigned(7 downto 0);
  signal cmdArbiter_io_output_fork_io_outputs_1_payload_size : unsigned(2 downto 0);
  signal cmdArbiter_io_output_fork_io_outputs_1_payload_burst : std_logic_vector(1 downto 0);
  signal cmdArbiter_io_output_fork_io_outputs_1_payload_lock : std_logic_vector(0 downto 0);
  signal cmdArbiter_io_output_fork_io_outputs_1_payload_cache : std_logic_vector(3 downto 0);
  signal cmdArbiter_io_output_fork_io_outputs_1_payload_qos : std_logic_vector(3 downto 0);
  signal cmdArbiter_io_output_fork_io_outputs_1_payload_prot : std_logic_vector(2 downto 0);
  signal cmdArbiter_io_output_fork_io_outputs_1_translated_fifo_io_push_ready : std_logic;
  signal cmdArbiter_io_output_fork_io_outputs_1_translated_fifo_io_pop_valid : std_logic;
  signal cmdArbiter_io_output_fork_io_outputs_1_translated_fifo_io_pop_payload : unsigned(0 downto 0);
  signal cmdArbiter_io_output_fork_io_outputs_1_translated_fifo_io_occupancy : unsigned(2 downto 0);

  signal cmdArbiter_io_output_fork_io_outputs_1_translated_valid : std_logic;
  signal cmdArbiter_io_output_fork_io_outputs_1_translated_ready : std_logic;
  signal cmdArbiter_io_output_fork_io_outputs_1_translated_payload : unsigned(0 downto 0);
  signal writeRspIndex : unsigned(0 downto 0);
  signal writeRspSels_0 : std_logic;
  signal writeRspSels_1 : std_logic;
begin
  io_output_w_valid <= zz_3;
  io_output_w_payload_last <= zz_4;
  cmdArbiter : entity work.StreamArbiter
    port map ( 
      io_inputs_0_valid => io_inputs_0_aw_valid,
      io_inputs_0_ready => cmdArbiter_io_inputs_0_ready,
      io_inputs_0_payload_addr => io_inputs_0_aw_payload_addr,
      io_inputs_0_payload_id => io_inputs_0_aw_payload_id,
      io_inputs_0_payload_region => io_inputs_0_aw_payload_region,
      io_inputs_0_payload_len => io_inputs_0_aw_payload_len,
      io_inputs_0_payload_size => io_inputs_0_aw_payload_size,
      io_inputs_0_payload_burst => io_inputs_0_aw_payload_burst,
      io_inputs_0_payload_lock => io_inputs_0_aw_payload_lock,
      io_inputs_0_payload_cache => io_inputs_0_aw_payload_cache,
      io_inputs_0_payload_qos => io_inputs_0_aw_payload_qos,
      io_inputs_0_payload_prot => io_inputs_0_aw_payload_prot,
      io_inputs_1_valid => io_inputs_1_aw_valid,
      io_inputs_1_ready => cmdArbiter_io_inputs_1_ready,
      io_inputs_1_payload_addr => io_inputs_1_aw_payload_addr,
      io_inputs_1_payload_id => io_inputs_1_aw_payload_id,
      io_inputs_1_payload_region => io_inputs_1_aw_payload_region,
      io_inputs_1_payload_len => io_inputs_1_aw_payload_len,
      io_inputs_1_payload_size => io_inputs_1_aw_payload_size,
      io_inputs_1_payload_burst => io_inputs_1_aw_payload_burst,
      io_inputs_1_payload_lock => io_inputs_1_aw_payload_lock,
      io_inputs_1_payload_cache => io_inputs_1_aw_payload_cache,
      io_inputs_1_payload_qos => io_inputs_1_aw_payload_qos,
      io_inputs_1_payload_prot => io_inputs_1_aw_payload_prot,
      io_output_valid => cmdArbiter_io_output_valid,
      io_output_ready => cmdArbiter_io_output_fork_io_input_ready,
      io_output_payload_addr => cmdArbiter_io_output_payload_addr,
      io_output_payload_id => cmdArbiter_io_output_payload_id,
      io_output_payload_region => cmdArbiter_io_output_payload_region,
      io_output_payload_len => cmdArbiter_io_output_payload_len,
      io_output_payload_size => cmdArbiter_io_output_payload_size,
      io_output_payload_burst => cmdArbiter_io_output_payload_burst,
      io_output_payload_lock => cmdArbiter_io_output_payload_lock,
      io_output_payload_cache => cmdArbiter_io_output_payload_cache,
      io_output_payload_qos => cmdArbiter_io_output_payload_qos,
      io_output_payload_prot => cmdArbiter_io_output_payload_prot,
      io_chosen => cmdArbiter_io_chosen,
      io_chosenOH => cmdArbiter_io_chosenOH,
      clk => clk,
      reset => reset 
    );
  cmdArbiter_io_output_fork : entity work.StreamFork
    port map ( 
      io_input_valid => cmdArbiter_io_output_valid,
      io_input_ready => cmdArbiter_io_output_fork_io_input_ready,
      io_input_payload_addr => cmdArbiter_io_output_payload_addr,
      io_input_payload_id => cmdArbiter_io_output_payload_id,
      io_input_payload_region => cmdArbiter_io_output_payload_region,
      io_input_payload_len => cmdArbiter_io_output_payload_len,
      io_input_payload_size => cmdArbiter_io_output_payload_size,
      io_input_payload_burst => cmdArbiter_io_output_payload_burst,
      io_input_payload_lock => cmdArbiter_io_output_payload_lock,
      io_input_payload_cache => cmdArbiter_io_output_payload_cache,
      io_input_payload_qos => cmdArbiter_io_output_payload_qos,
      io_input_payload_prot => cmdArbiter_io_output_payload_prot,
      io_outputs_0_valid => cmdArbiter_io_output_fork_io_outputs_0_valid,
      io_outputs_0_ready => io_output_aw_ready,
      io_outputs_0_payload_addr => cmdArbiter_io_output_fork_io_outputs_0_payload_addr,
      io_outputs_0_payload_id => cmdArbiter_io_output_fork_io_outputs_0_payload_id,
      io_outputs_0_payload_region => cmdArbiter_io_output_fork_io_outputs_0_payload_region,
      io_outputs_0_payload_len => cmdArbiter_io_output_fork_io_outputs_0_payload_len,
      io_outputs_0_payload_size => cmdArbiter_io_output_fork_io_outputs_0_payload_size,
      io_outputs_0_payload_burst => cmdArbiter_io_output_fork_io_outputs_0_payload_burst,
      io_outputs_0_payload_lock => cmdArbiter_io_output_fork_io_outputs_0_payload_lock,
      io_outputs_0_payload_cache => cmdArbiter_io_output_fork_io_outputs_0_payload_cache,
      io_outputs_0_payload_qos => cmdArbiter_io_output_fork_io_outputs_0_payload_qos,
      io_outputs_0_payload_prot => cmdArbiter_io_output_fork_io_outputs_0_payload_prot,
      io_outputs_1_valid => cmdArbiter_io_output_fork_io_outputs_1_valid,
      io_outputs_1_ready => cmdArbiter_io_output_fork_io_outputs_1_translated_ready,
      io_outputs_1_payload_addr => cmdArbiter_io_output_fork_io_outputs_1_payload_addr,
      io_outputs_1_payload_id => cmdArbiter_io_output_fork_io_outputs_1_payload_id,
      io_outputs_1_payload_region => cmdArbiter_io_output_fork_io_outputs_1_payload_region,
      io_outputs_1_payload_len => cmdArbiter_io_output_fork_io_outputs_1_payload_len,
      io_outputs_1_payload_size => cmdArbiter_io_output_fork_io_outputs_1_payload_size,
      io_outputs_1_payload_burst => cmdArbiter_io_output_fork_io_outputs_1_payload_burst,
      io_outputs_1_payload_lock => cmdArbiter_io_output_fork_io_outputs_1_payload_lock,
      io_outputs_1_payload_cache => cmdArbiter_io_output_fork_io_outputs_1_payload_cache,
      io_outputs_1_payload_qos => cmdArbiter_io_output_fork_io_outputs_1_payload_qos,
      io_outputs_1_payload_prot => cmdArbiter_io_output_fork_io_outputs_1_payload_prot,
      clk => clk,
      reset => reset 
    );
  cmdArbiter_io_output_fork_io_outputs_1_translated_fifo : entity work.StreamFifoLowLatency
    port map ( 
      io_push_valid => cmdArbiter_io_output_fork_io_outputs_1_translated_valid,
      io_push_ready => cmdArbiter_io_output_fork_io_outputs_1_translated_fifo_io_push_ready,
      io_push_payload => cmdArbiter_io_output_fork_io_outputs_1_translated_payload,
      io_pop_valid => cmdArbiter_io_output_fork_io_outputs_1_translated_fifo_io_pop_valid,
      io_pop_ready => zz_1,
      io_pop_payload => cmdArbiter_io_output_fork_io_outputs_1_translated_fifo_io_pop_payload,
      io_flush => zz_2,
      io_occupancy => cmdArbiter_io_output_fork_io_outputs_1_translated_fifo_io_occupancy,
      clk => clk,
      reset => reset 
    );
  process(cmdArbiter_io_output_fork_io_outputs_1_translated_fifo_io_pop_payload,io_inputs_0_w_valid,io_inputs_0_w_payload_data,io_inputs_0_w_payload_strb,io_inputs_0_w_payload_last,io_inputs_1_w_valid,io_inputs_1_w_payload_data,io_inputs_1_w_payload_strb,io_inputs_1_w_payload_last)
  begin
    case cmdArbiter_io_output_fork_io_outputs_1_translated_fifo_io_pop_payload is
      when "0" =>
        zz_5 <= io_inputs_0_w_valid;
        zz_6 <= io_inputs_0_w_payload_data;
        zz_7 <= io_inputs_0_w_payload_strb;
        zz_8 <= io_inputs_0_w_payload_last;
      when others =>
        zz_5 <= io_inputs_1_w_valid;
        zz_6 <= io_inputs_1_w_payload_data;
        zz_7 <= io_inputs_1_w_payload_strb;
        zz_8 <= io_inputs_1_w_payload_last;
    end case;
  end process;

  process(writeRspIndex,io_inputs_0_b_ready,io_inputs_1_b_ready)
  begin
    case writeRspIndex is
      when "0" =>
        zz_9 <= io_inputs_0_b_ready;
      when others =>
        zz_9 <= io_inputs_1_b_ready;
    end case;
  end process;

  io_inputs_0_aw_ready <= cmdArbiter_io_inputs_0_ready;
  io_inputs_1_aw_ready <= cmdArbiter_io_inputs_1_ready;
  io_output_aw_valid <= cmdArbiter_io_output_fork_io_outputs_0_valid;
  io_output_aw_payload_addr <= cmdArbiter_io_output_fork_io_outputs_0_payload_addr;
  io_output_aw_payload_region <= cmdArbiter_io_output_fork_io_outputs_0_payload_region;
  io_output_aw_payload_len <= cmdArbiter_io_output_fork_io_outputs_0_payload_len;
  io_output_aw_payload_size <= cmdArbiter_io_output_fork_io_outputs_0_payload_size;
  io_output_aw_payload_burst <= cmdArbiter_io_output_fork_io_outputs_0_payload_burst;
  io_output_aw_payload_lock <= cmdArbiter_io_output_fork_io_outputs_0_payload_lock;
  io_output_aw_payload_cache <= cmdArbiter_io_output_fork_io_outputs_0_payload_cache;
  io_output_aw_payload_qos <= cmdArbiter_io_output_fork_io_outputs_0_payload_qos;
  io_output_aw_payload_prot <= cmdArbiter_io_output_fork_io_outputs_0_payload_prot;
  io_output_aw_payload_id <= unsigned(pkg_cat(std_logic_vector(cmdArbiter_io_chosen),std_logic_vector(cmdArbiter_io_output_payload_id)));
  cmdArbiter_io_output_fork_io_outputs_1_translated_valid <= cmdArbiter_io_output_fork_io_outputs_1_valid;
  cmdArbiter_io_output_fork_io_outputs_1_translated_payload <= cmdArbiter_io_chosen;
  cmdArbiter_io_output_fork_io_outputs_1_translated_ready <= cmdArbiter_io_output_fork_io_outputs_1_translated_fifo_io_push_ready;
  zz_3 <= (cmdArbiter_io_output_fork_io_outputs_1_translated_fifo_io_pop_valid and zz_5);
  io_output_w_payload_data <= zz_6;
  io_output_w_payload_strb <= zz_7;
  zz_4 <= zz_8;
  io_inputs_0_w_ready <= ((cmdArbiter_io_output_fork_io_outputs_1_translated_fifo_io_pop_valid and io_output_w_ready) and pkg_toStdLogic(cmdArbiter_io_output_fork_io_outputs_1_translated_fifo_io_pop_payload = pkg_unsigned("0")));
  io_inputs_1_w_ready <= ((cmdArbiter_io_output_fork_io_outputs_1_translated_fifo_io_pop_valid and io_output_w_ready) and pkg_toStdLogic(cmdArbiter_io_output_fork_io_outputs_1_translated_fifo_io_pop_payload = pkg_unsigned("1")));
  zz_1 <= ((zz_3 and io_output_w_ready) and zz_4);
  writeRspIndex <= pkg_extract(io_output_b_payload_id,5,5);
  writeRspSels_0 <= pkg_toStdLogic(writeRspIndex = pkg_unsigned("0"));
  writeRspSels_1 <= pkg_toStdLogic(writeRspIndex = pkg_unsigned("1"));
  io_inputs_0_b_valid <= (io_output_b_valid and writeRspSels_0);
  io_inputs_0_b_payload_resp <= io_output_b_payload_resp;
  io_inputs_0_b_payload_id <= pkg_extract(io_output_b_payload_id,4,0);
  io_inputs_1_b_valid <= (io_output_b_valid and writeRspSels_1);
  io_inputs_1_b_payload_resp <= io_output_b_payload_resp;
  io_inputs_1_b_payload_id <= pkg_extract(io_output_b_payload_id,4,0);
  io_output_b_ready <= zz_9;
  zz_2 <= pkg_toStdLogic(false);
end arch;


--Axi4ReadOnlyArbiter_1 remplaced by Axi4ReadOnlyArbiter


--Axi4WriteOnlyArbiter_1 remplaced by Axi4WriteOnlyArbiter


--Axi4ReadOnlyArbiter_2 remplaced by Axi4ReadOnlyArbiter


--Axi4WriteOnlyArbiter_2 remplaced by Axi4WriteOnlyArbiter

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.pkg_scala2hdl.all;
use work.all;
use work.pkg_enum.all;


entity Axi4ReadOnlyArbiter_3 is
  port(
    io_inputs_0_ar_valid : in std_logic;
    io_inputs_0_ar_ready : out std_logic;
    io_inputs_0_ar_payload_addr : in unsigned(12 downto 0);
    io_inputs_0_ar_payload_id : in unsigned(3 downto 0);
    io_inputs_0_ar_payload_region : in std_logic_vector(3 downto 0);
    io_inputs_0_ar_payload_len : in unsigned(7 downto 0);
    io_inputs_0_ar_payload_size : in unsigned(2 downto 0);
    io_inputs_0_ar_payload_burst : in std_logic_vector(1 downto 0);
    io_inputs_0_ar_payload_lock : in std_logic_vector(0 downto 0);
    io_inputs_0_ar_payload_cache : in std_logic_vector(3 downto 0);
    io_inputs_0_ar_payload_qos : in std_logic_vector(3 downto 0);
    io_inputs_0_ar_payload_prot : in std_logic_vector(2 downto 0);
    io_inputs_0_r_valid : out std_logic;
    io_inputs_0_r_ready : in std_logic;
    io_inputs_0_r_payload_data : out std_logic_vector(31 downto 0);
    io_inputs_0_r_payload_id : out unsigned(3 downto 0);
    io_inputs_0_r_payload_resp : out std_logic_vector(1 downto 0);
    io_inputs_0_r_payload_last : out std_logic;
    io_inputs_1_ar_valid : in std_logic;
    io_inputs_1_ar_ready : out std_logic;
    io_inputs_1_ar_payload_addr : in unsigned(12 downto 0);
    io_inputs_1_ar_payload_id : in unsigned(3 downto 0);
    io_inputs_1_ar_payload_region : in std_logic_vector(3 downto 0);
    io_inputs_1_ar_payload_len : in unsigned(7 downto 0);
    io_inputs_1_ar_payload_size : in unsigned(2 downto 0);
    io_inputs_1_ar_payload_burst : in std_logic_vector(1 downto 0);
    io_inputs_1_ar_payload_lock : in std_logic_vector(0 downto 0);
    io_inputs_1_ar_payload_cache : in std_logic_vector(3 downto 0);
    io_inputs_1_ar_payload_qos : in std_logic_vector(3 downto 0);
    io_inputs_1_ar_payload_prot : in std_logic_vector(2 downto 0);
    io_inputs_1_r_valid : out std_logic;
    io_inputs_1_r_ready : in std_logic;
    io_inputs_1_r_payload_data : out std_logic_vector(31 downto 0);
    io_inputs_1_r_payload_id : out unsigned(3 downto 0);
    io_inputs_1_r_payload_resp : out std_logic_vector(1 downto 0);
    io_inputs_1_r_payload_last : out std_logic;
    io_inputs_2_ar_valid : in std_logic;
    io_inputs_2_ar_ready : out std_logic;
    io_inputs_2_ar_payload_addr : in unsigned(12 downto 0);
    io_inputs_2_ar_payload_id : in unsigned(3 downto 0);
    io_inputs_2_ar_payload_region : in std_logic_vector(3 downto 0);
    io_inputs_2_ar_payload_len : in unsigned(7 downto 0);
    io_inputs_2_ar_payload_size : in unsigned(2 downto 0);
    io_inputs_2_ar_payload_burst : in std_logic_vector(1 downto 0);
    io_inputs_2_ar_payload_lock : in std_logic_vector(0 downto 0);
    io_inputs_2_ar_payload_cache : in std_logic_vector(3 downto 0);
    io_inputs_2_ar_payload_qos : in std_logic_vector(3 downto 0);
    io_inputs_2_ar_payload_prot : in std_logic_vector(2 downto 0);
    io_inputs_2_r_valid : out std_logic;
    io_inputs_2_r_ready : in std_logic;
    io_inputs_2_r_payload_data : out std_logic_vector(31 downto 0);
    io_inputs_2_r_payload_id : out unsigned(3 downto 0);
    io_inputs_2_r_payload_resp : out std_logic_vector(1 downto 0);
    io_inputs_2_r_payload_last : out std_logic;
    io_output_ar_valid : out std_logic;
    io_output_ar_ready : in std_logic;
    io_output_ar_payload_addr : out unsigned(12 downto 0);
    io_output_ar_payload_id : out unsigned(5 downto 0);
    io_output_ar_payload_region : out std_logic_vector(3 downto 0);
    io_output_ar_payload_len : out unsigned(7 downto 0);
    io_output_ar_payload_size : out unsigned(2 downto 0);
    io_output_ar_payload_burst : out std_logic_vector(1 downto 0);
    io_output_ar_payload_lock : out std_logic_vector(0 downto 0);
    io_output_ar_payload_cache : out std_logic_vector(3 downto 0);
    io_output_ar_payload_qos : out std_logic_vector(3 downto 0);
    io_output_ar_payload_prot : out std_logic_vector(2 downto 0);
    io_output_r_valid : in std_logic;
    io_output_r_ready : out std_logic;
    io_output_r_payload_data : in std_logic_vector(31 downto 0);
    io_output_r_payload_id : in unsigned(5 downto 0);
    io_output_r_payload_resp : in std_logic_vector(1 downto 0);
    io_output_r_payload_last : in std_logic;
    clk : in std_logic;
    reset : in std_logic
  );
end Axi4ReadOnlyArbiter_3;

architecture arch of Axi4ReadOnlyArbiter_3 is
  signal zz_1 : std_logic;
  signal cmdArbiter_io_inputs_0_ready : std_logic;
  signal cmdArbiter_io_inputs_1_ready : std_logic;
  signal cmdArbiter_io_inputs_2_ready : std_logic;
  signal cmdArbiter_io_output_valid : std_logic;
  signal cmdArbiter_io_output_payload_addr : unsigned(12 downto 0);
  signal cmdArbiter_io_output_payload_id : unsigned(3 downto 0);
  signal cmdArbiter_io_output_payload_region : std_logic_vector(3 downto 0);
  signal cmdArbiter_io_output_payload_len : unsigned(7 downto 0);
  signal cmdArbiter_io_output_payload_size : unsigned(2 downto 0);
  signal cmdArbiter_io_output_payload_burst : std_logic_vector(1 downto 0);
  signal cmdArbiter_io_output_payload_lock : std_logic_vector(0 downto 0);
  signal cmdArbiter_io_output_payload_cache : std_logic_vector(3 downto 0);
  signal cmdArbiter_io_output_payload_qos : std_logic_vector(3 downto 0);
  signal cmdArbiter_io_output_payload_prot : std_logic_vector(2 downto 0);
  signal cmdArbiter_io_chosen : unsigned(1 downto 0);
  signal cmdArbiter_io_chosenOH : std_logic_vector(2 downto 0);

  signal readRspIndex : unsigned(1 downto 0);
  signal readRspSels_0 : std_logic;
  signal readRspSels_1 : std_logic;
  signal readRspSels_2 : std_logic;
begin
  cmdArbiter : entity work.StreamArbiter_6
    port map ( 
      io_inputs_0_valid => io_inputs_0_ar_valid,
      io_inputs_0_ready => cmdArbiter_io_inputs_0_ready,
      io_inputs_0_payload_addr => io_inputs_0_ar_payload_addr,
      io_inputs_0_payload_id => io_inputs_0_ar_payload_id,
      io_inputs_0_payload_region => io_inputs_0_ar_payload_region,
      io_inputs_0_payload_len => io_inputs_0_ar_payload_len,
      io_inputs_0_payload_size => io_inputs_0_ar_payload_size,
      io_inputs_0_payload_burst => io_inputs_0_ar_payload_burst,
      io_inputs_0_payload_lock => io_inputs_0_ar_payload_lock,
      io_inputs_0_payload_cache => io_inputs_0_ar_payload_cache,
      io_inputs_0_payload_qos => io_inputs_0_ar_payload_qos,
      io_inputs_0_payload_prot => io_inputs_0_ar_payload_prot,
      io_inputs_1_valid => io_inputs_1_ar_valid,
      io_inputs_1_ready => cmdArbiter_io_inputs_1_ready,
      io_inputs_1_payload_addr => io_inputs_1_ar_payload_addr,
      io_inputs_1_payload_id => io_inputs_1_ar_payload_id,
      io_inputs_1_payload_region => io_inputs_1_ar_payload_region,
      io_inputs_1_payload_len => io_inputs_1_ar_payload_len,
      io_inputs_1_payload_size => io_inputs_1_ar_payload_size,
      io_inputs_1_payload_burst => io_inputs_1_ar_payload_burst,
      io_inputs_1_payload_lock => io_inputs_1_ar_payload_lock,
      io_inputs_1_payload_cache => io_inputs_1_ar_payload_cache,
      io_inputs_1_payload_qos => io_inputs_1_ar_payload_qos,
      io_inputs_1_payload_prot => io_inputs_1_ar_payload_prot,
      io_inputs_2_valid => io_inputs_2_ar_valid,
      io_inputs_2_ready => cmdArbiter_io_inputs_2_ready,
      io_inputs_2_payload_addr => io_inputs_2_ar_payload_addr,
      io_inputs_2_payload_id => io_inputs_2_ar_payload_id,
      io_inputs_2_payload_region => io_inputs_2_ar_payload_region,
      io_inputs_2_payload_len => io_inputs_2_ar_payload_len,
      io_inputs_2_payload_size => io_inputs_2_ar_payload_size,
      io_inputs_2_payload_burst => io_inputs_2_ar_payload_burst,
      io_inputs_2_payload_lock => io_inputs_2_ar_payload_lock,
      io_inputs_2_payload_cache => io_inputs_2_ar_payload_cache,
      io_inputs_2_payload_qos => io_inputs_2_ar_payload_qos,
      io_inputs_2_payload_prot => io_inputs_2_ar_payload_prot,
      io_output_valid => cmdArbiter_io_output_valid,
      io_output_ready => io_output_ar_ready,
      io_output_payload_addr => cmdArbiter_io_output_payload_addr,
      io_output_payload_id => cmdArbiter_io_output_payload_id,
      io_output_payload_region => cmdArbiter_io_output_payload_region,
      io_output_payload_len => cmdArbiter_io_output_payload_len,
      io_output_payload_size => cmdArbiter_io_output_payload_size,
      io_output_payload_burst => cmdArbiter_io_output_payload_burst,
      io_output_payload_lock => cmdArbiter_io_output_payload_lock,
      io_output_payload_cache => cmdArbiter_io_output_payload_cache,
      io_output_payload_qos => cmdArbiter_io_output_payload_qos,
      io_output_payload_prot => cmdArbiter_io_output_payload_prot,
      io_chosen => cmdArbiter_io_chosen,
      io_chosenOH => cmdArbiter_io_chosenOH,
      clk => clk,
      reset => reset 
    );
  process(readRspIndex,io_inputs_0_r_ready,io_inputs_1_r_ready,io_inputs_2_r_ready)
  begin
    case readRspIndex is
      when "00" =>
        zz_1 <= io_inputs_0_r_ready;
      when "01" =>
        zz_1 <= io_inputs_1_r_ready;
      when others =>
        zz_1 <= io_inputs_2_r_ready;
    end case;
  end process;

  io_inputs_0_ar_ready <= cmdArbiter_io_inputs_0_ready;
  io_inputs_1_ar_ready <= cmdArbiter_io_inputs_1_ready;
  io_inputs_2_ar_ready <= cmdArbiter_io_inputs_2_ready;
  io_output_ar_valid <= cmdArbiter_io_output_valid;
  io_output_ar_payload_addr <= cmdArbiter_io_output_payload_addr;
  io_output_ar_payload_region <= cmdArbiter_io_output_payload_region;
  io_output_ar_payload_len <= cmdArbiter_io_output_payload_len;
  io_output_ar_payload_size <= cmdArbiter_io_output_payload_size;
  io_output_ar_payload_burst <= cmdArbiter_io_output_payload_burst;
  io_output_ar_payload_lock <= cmdArbiter_io_output_payload_lock;
  io_output_ar_payload_cache <= cmdArbiter_io_output_payload_cache;
  io_output_ar_payload_qos <= cmdArbiter_io_output_payload_qos;
  io_output_ar_payload_prot <= cmdArbiter_io_output_payload_prot;
  io_output_ar_payload_id <= unsigned(pkg_cat(std_logic_vector(cmdArbiter_io_chosen),std_logic_vector(cmdArbiter_io_output_payload_id)));
  readRspIndex <= pkg_extract(io_output_r_payload_id,5,4);
  readRspSels_0 <= pkg_toStdLogic(readRspIndex = pkg_unsigned("00"));
  readRspSels_1 <= pkg_toStdLogic(readRspIndex = pkg_unsigned("01"));
  readRspSels_2 <= pkg_toStdLogic(readRspIndex = pkg_unsigned("10"));
  io_inputs_0_r_valid <= (io_output_r_valid and readRspSels_0);
  io_inputs_0_r_payload_data <= io_output_r_payload_data;
  io_inputs_0_r_payload_resp <= io_output_r_payload_resp;
  io_inputs_0_r_payload_last <= io_output_r_payload_last;
  io_inputs_0_r_payload_id <= pkg_extract(io_output_r_payload_id,3,0);
  io_inputs_1_r_valid <= (io_output_r_valid and readRspSels_1);
  io_inputs_1_r_payload_data <= io_output_r_payload_data;
  io_inputs_1_r_payload_resp <= io_output_r_payload_resp;
  io_inputs_1_r_payload_last <= io_output_r_payload_last;
  io_inputs_1_r_payload_id <= pkg_extract(io_output_r_payload_id,3,0);
  io_inputs_2_r_valid <= (io_output_r_valid and readRspSels_2);
  io_inputs_2_r_payload_data <= io_output_r_payload_data;
  io_inputs_2_r_payload_resp <= io_output_r_payload_resp;
  io_inputs_2_r_payload_last <= io_output_r_payload_last;
  io_inputs_2_r_payload_id <= pkg_extract(io_output_r_payload_id,3,0);
  io_output_r_ready <= zz_1;
end arch;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.pkg_scala2hdl.all;
use work.all;
use work.pkg_enum.all;


entity Axi4WriteOnlyArbiter_3 is
  port(
    io_inputs_0_aw_valid : in std_logic;
    io_inputs_0_aw_ready : out std_logic;
    io_inputs_0_aw_payload_addr : in unsigned(12 downto 0);
    io_inputs_0_aw_payload_id : in unsigned(3 downto 0);
    io_inputs_0_aw_payload_region : in std_logic_vector(3 downto 0);
    io_inputs_0_aw_payload_len : in unsigned(7 downto 0);
    io_inputs_0_aw_payload_size : in unsigned(2 downto 0);
    io_inputs_0_aw_payload_burst : in std_logic_vector(1 downto 0);
    io_inputs_0_aw_payload_lock : in std_logic_vector(0 downto 0);
    io_inputs_0_aw_payload_cache : in std_logic_vector(3 downto 0);
    io_inputs_0_aw_payload_qos : in std_logic_vector(3 downto 0);
    io_inputs_0_aw_payload_prot : in std_logic_vector(2 downto 0);
    io_inputs_0_w_valid : in std_logic;
    io_inputs_0_w_ready : out std_logic;
    io_inputs_0_w_payload_data : in std_logic_vector(31 downto 0);
    io_inputs_0_w_payload_strb : in std_logic_vector(3 downto 0);
    io_inputs_0_w_payload_last : in std_logic;
    io_inputs_0_b_valid : out std_logic;
    io_inputs_0_b_ready : in std_logic;
    io_inputs_0_b_payload_id : out unsigned(3 downto 0);
    io_inputs_0_b_payload_resp : out std_logic_vector(1 downto 0);
    io_inputs_1_aw_valid : in std_logic;
    io_inputs_1_aw_ready : out std_logic;
    io_inputs_1_aw_payload_addr : in unsigned(12 downto 0);
    io_inputs_1_aw_payload_id : in unsigned(3 downto 0);
    io_inputs_1_aw_payload_region : in std_logic_vector(3 downto 0);
    io_inputs_1_aw_payload_len : in unsigned(7 downto 0);
    io_inputs_1_aw_payload_size : in unsigned(2 downto 0);
    io_inputs_1_aw_payload_burst : in std_logic_vector(1 downto 0);
    io_inputs_1_aw_payload_lock : in std_logic_vector(0 downto 0);
    io_inputs_1_aw_payload_cache : in std_logic_vector(3 downto 0);
    io_inputs_1_aw_payload_qos : in std_logic_vector(3 downto 0);
    io_inputs_1_aw_payload_prot : in std_logic_vector(2 downto 0);
    io_inputs_1_w_valid : in std_logic;
    io_inputs_1_w_ready : out std_logic;
    io_inputs_1_w_payload_data : in std_logic_vector(31 downto 0);
    io_inputs_1_w_payload_strb : in std_logic_vector(3 downto 0);
    io_inputs_1_w_payload_last : in std_logic;
    io_inputs_1_b_valid : out std_logic;
    io_inputs_1_b_ready : in std_logic;
    io_inputs_1_b_payload_id : out unsigned(3 downto 0);
    io_inputs_1_b_payload_resp : out std_logic_vector(1 downto 0);
    io_inputs_2_aw_valid : in std_logic;
    io_inputs_2_aw_ready : out std_logic;
    io_inputs_2_aw_payload_addr : in unsigned(12 downto 0);
    io_inputs_2_aw_payload_id : in unsigned(3 downto 0);
    io_inputs_2_aw_payload_region : in std_logic_vector(3 downto 0);
    io_inputs_2_aw_payload_len : in unsigned(7 downto 0);
    io_inputs_2_aw_payload_size : in unsigned(2 downto 0);
    io_inputs_2_aw_payload_burst : in std_logic_vector(1 downto 0);
    io_inputs_2_aw_payload_lock : in std_logic_vector(0 downto 0);
    io_inputs_2_aw_payload_cache : in std_logic_vector(3 downto 0);
    io_inputs_2_aw_payload_qos : in std_logic_vector(3 downto 0);
    io_inputs_2_aw_payload_prot : in std_logic_vector(2 downto 0);
    io_inputs_2_w_valid : in std_logic;
    io_inputs_2_w_ready : out std_logic;
    io_inputs_2_w_payload_data : in std_logic_vector(31 downto 0);
    io_inputs_2_w_payload_strb : in std_logic_vector(3 downto 0);
    io_inputs_2_w_payload_last : in std_logic;
    io_inputs_2_b_valid : out std_logic;
    io_inputs_2_b_ready : in std_logic;
    io_inputs_2_b_payload_id : out unsigned(3 downto 0);
    io_inputs_2_b_payload_resp : out std_logic_vector(1 downto 0);
    io_output_aw_valid : out std_logic;
    io_output_aw_ready : in std_logic;
    io_output_aw_payload_addr : out unsigned(12 downto 0);
    io_output_aw_payload_id : out unsigned(5 downto 0);
    io_output_aw_payload_region : out std_logic_vector(3 downto 0);
    io_output_aw_payload_len : out unsigned(7 downto 0);
    io_output_aw_payload_size : out unsigned(2 downto 0);
    io_output_aw_payload_burst : out std_logic_vector(1 downto 0);
    io_output_aw_payload_lock : out std_logic_vector(0 downto 0);
    io_output_aw_payload_cache : out std_logic_vector(3 downto 0);
    io_output_aw_payload_qos : out std_logic_vector(3 downto 0);
    io_output_aw_payload_prot : out std_logic_vector(2 downto 0);
    io_output_w_valid : out std_logic;
    io_output_w_ready : in std_logic;
    io_output_w_payload_data : out std_logic_vector(31 downto 0);
    io_output_w_payload_strb : out std_logic_vector(3 downto 0);
    io_output_w_payload_last : out std_logic;
    io_output_b_valid : in std_logic;
    io_output_b_ready : out std_logic;
    io_output_b_payload_id : in unsigned(5 downto 0);
    io_output_b_payload_resp : in std_logic_vector(1 downto 0);
    clk : in std_logic;
    reset : in std_logic
  );
end Axi4WriteOnlyArbiter_3;

architecture arch of Axi4WriteOnlyArbiter_3 is
  signal zz_1 : std_logic;
  signal zz_2 : std_logic;
  signal zz_3 : std_logic;
  signal zz_4 : std_logic;
  signal zz_5 : std_logic;
  signal zz_6 : std_logic_vector(31 downto 0);
  signal zz_7 : std_logic_vector(3 downto 0);
  signal zz_8 : std_logic;
  signal zz_9 : std_logic;
  signal cmdArbiter_io_inputs_0_ready : std_logic;
  signal cmdArbiter_io_inputs_1_ready : std_logic;
  signal cmdArbiter_io_inputs_2_ready : std_logic;
  signal cmdArbiter_io_output_valid : std_logic;
  signal cmdArbiter_io_output_payload_addr : unsigned(12 downto 0);
  signal cmdArbiter_io_output_payload_id : unsigned(3 downto 0);
  signal cmdArbiter_io_output_payload_region : std_logic_vector(3 downto 0);
  signal cmdArbiter_io_output_payload_len : unsigned(7 downto 0);
  signal cmdArbiter_io_output_payload_size : unsigned(2 downto 0);
  signal cmdArbiter_io_output_payload_burst : std_logic_vector(1 downto 0);
  signal cmdArbiter_io_output_payload_lock : std_logic_vector(0 downto 0);
  signal cmdArbiter_io_output_payload_cache : std_logic_vector(3 downto 0);
  signal cmdArbiter_io_output_payload_qos : std_logic_vector(3 downto 0);
  signal cmdArbiter_io_output_payload_prot : std_logic_vector(2 downto 0);
  signal cmdArbiter_io_chosen : unsigned(1 downto 0);
  signal cmdArbiter_io_chosenOH : std_logic_vector(2 downto 0);
  signal cmdArbiter_io_output_fork_io_input_ready : std_logic;
  signal cmdArbiter_io_output_fork_io_outputs_0_valid : std_logic;
  signal cmdArbiter_io_output_fork_io_outputs_0_payload_addr : unsigned(12 downto 0);
  signal cmdArbiter_io_output_fork_io_outputs_0_payload_id : unsigned(3 downto 0);
  signal cmdArbiter_io_output_fork_io_outputs_0_payload_region : std_logic_vector(3 downto 0);
  signal cmdArbiter_io_output_fork_io_outputs_0_payload_len : unsigned(7 downto 0);
  signal cmdArbiter_io_output_fork_io_outputs_0_payload_size : unsigned(2 downto 0);
  signal cmdArbiter_io_output_fork_io_outputs_0_payload_burst : std_logic_vector(1 downto 0);
  signal cmdArbiter_io_output_fork_io_outputs_0_payload_lock : std_logic_vector(0 downto 0);
  signal cmdArbiter_io_output_fork_io_outputs_0_payload_cache : std_logic_vector(3 downto 0);
  signal cmdArbiter_io_output_fork_io_outputs_0_payload_qos : std_logic_vector(3 downto 0);
  signal cmdArbiter_io_output_fork_io_outputs_0_payload_prot : std_logic_vector(2 downto 0);
  signal cmdArbiter_io_output_fork_io_outputs_1_valid : std_logic;
  signal cmdArbiter_io_output_fork_io_outputs_1_payload_addr : unsigned(12 downto 0);
  signal cmdArbiter_io_output_fork_io_outputs_1_payload_id : unsigned(3 downto 0);
  signal cmdArbiter_io_output_fork_io_outputs_1_payload_region : std_logic_vector(3 downto 0);
  signal cmdArbiter_io_output_fork_io_outputs_1_payload_len : unsigned(7 downto 0);
  signal cmdArbiter_io_output_fork_io_outputs_1_payload_size : unsigned(2 downto 0);
  signal cmdArbiter_io_output_fork_io_outputs_1_payload_burst : std_logic_vector(1 downto 0);
  signal cmdArbiter_io_output_fork_io_outputs_1_payload_lock : std_logic_vector(0 downto 0);
  signal cmdArbiter_io_output_fork_io_outputs_1_payload_cache : std_logic_vector(3 downto 0);
  signal cmdArbiter_io_output_fork_io_outputs_1_payload_qos : std_logic_vector(3 downto 0);
  signal cmdArbiter_io_output_fork_io_outputs_1_payload_prot : std_logic_vector(2 downto 0);
  signal cmdArbiter_io_output_fork_io_outputs_1_translated_fifo_io_push_ready : std_logic;
  signal cmdArbiter_io_output_fork_io_outputs_1_translated_fifo_io_pop_valid : std_logic;
  signal cmdArbiter_io_output_fork_io_outputs_1_translated_fifo_io_pop_payload : unsigned(1 downto 0);
  signal cmdArbiter_io_output_fork_io_outputs_1_translated_fifo_io_occupancy : unsigned(2 downto 0);

  signal cmdArbiter_io_output_fork_io_outputs_1_translated_valid : std_logic;
  signal cmdArbiter_io_output_fork_io_outputs_1_translated_ready : std_logic;
  signal cmdArbiter_io_output_fork_io_outputs_1_translated_payload : unsigned(1 downto 0);
  signal writeRspIndex : unsigned(1 downto 0);
  signal writeRspSels_0 : std_logic;
  signal writeRspSels_1 : std_logic;
  signal writeRspSels_2 : std_logic;
begin
  io_output_w_valid <= zz_3;
  io_output_w_payload_last <= zz_4;
  cmdArbiter : entity work.StreamArbiter_6
    port map ( 
      io_inputs_0_valid => io_inputs_0_aw_valid,
      io_inputs_0_ready => cmdArbiter_io_inputs_0_ready,
      io_inputs_0_payload_addr => io_inputs_0_aw_payload_addr,
      io_inputs_0_payload_id => io_inputs_0_aw_payload_id,
      io_inputs_0_payload_region => io_inputs_0_aw_payload_region,
      io_inputs_0_payload_len => io_inputs_0_aw_payload_len,
      io_inputs_0_payload_size => io_inputs_0_aw_payload_size,
      io_inputs_0_payload_burst => io_inputs_0_aw_payload_burst,
      io_inputs_0_payload_lock => io_inputs_0_aw_payload_lock,
      io_inputs_0_payload_cache => io_inputs_0_aw_payload_cache,
      io_inputs_0_payload_qos => io_inputs_0_aw_payload_qos,
      io_inputs_0_payload_prot => io_inputs_0_aw_payload_prot,
      io_inputs_1_valid => io_inputs_1_aw_valid,
      io_inputs_1_ready => cmdArbiter_io_inputs_1_ready,
      io_inputs_1_payload_addr => io_inputs_1_aw_payload_addr,
      io_inputs_1_payload_id => io_inputs_1_aw_payload_id,
      io_inputs_1_payload_region => io_inputs_1_aw_payload_region,
      io_inputs_1_payload_len => io_inputs_1_aw_payload_len,
      io_inputs_1_payload_size => io_inputs_1_aw_payload_size,
      io_inputs_1_payload_burst => io_inputs_1_aw_payload_burst,
      io_inputs_1_payload_lock => io_inputs_1_aw_payload_lock,
      io_inputs_1_payload_cache => io_inputs_1_aw_payload_cache,
      io_inputs_1_payload_qos => io_inputs_1_aw_payload_qos,
      io_inputs_1_payload_prot => io_inputs_1_aw_payload_prot,
      io_inputs_2_valid => io_inputs_2_aw_valid,
      io_inputs_2_ready => cmdArbiter_io_inputs_2_ready,
      io_inputs_2_payload_addr => io_inputs_2_aw_payload_addr,
      io_inputs_2_payload_id => io_inputs_2_aw_payload_id,
      io_inputs_2_payload_region => io_inputs_2_aw_payload_region,
      io_inputs_2_payload_len => io_inputs_2_aw_payload_len,
      io_inputs_2_payload_size => io_inputs_2_aw_payload_size,
      io_inputs_2_payload_burst => io_inputs_2_aw_payload_burst,
      io_inputs_2_payload_lock => io_inputs_2_aw_payload_lock,
      io_inputs_2_payload_cache => io_inputs_2_aw_payload_cache,
      io_inputs_2_payload_qos => io_inputs_2_aw_payload_qos,
      io_inputs_2_payload_prot => io_inputs_2_aw_payload_prot,
      io_output_valid => cmdArbiter_io_output_valid,
      io_output_ready => cmdArbiter_io_output_fork_io_input_ready,
      io_output_payload_addr => cmdArbiter_io_output_payload_addr,
      io_output_payload_id => cmdArbiter_io_output_payload_id,
      io_output_payload_region => cmdArbiter_io_output_payload_region,
      io_output_payload_len => cmdArbiter_io_output_payload_len,
      io_output_payload_size => cmdArbiter_io_output_payload_size,
      io_output_payload_burst => cmdArbiter_io_output_payload_burst,
      io_output_payload_lock => cmdArbiter_io_output_payload_lock,
      io_output_payload_cache => cmdArbiter_io_output_payload_cache,
      io_output_payload_qos => cmdArbiter_io_output_payload_qos,
      io_output_payload_prot => cmdArbiter_io_output_payload_prot,
      io_chosen => cmdArbiter_io_chosen,
      io_chosenOH => cmdArbiter_io_chosenOH,
      clk => clk,
      reset => reset 
    );
  cmdArbiter_io_output_fork : entity work.StreamFork_3
    port map ( 
      io_input_valid => cmdArbiter_io_output_valid,
      io_input_ready => cmdArbiter_io_output_fork_io_input_ready,
      io_input_payload_addr => cmdArbiter_io_output_payload_addr,
      io_input_payload_id => cmdArbiter_io_output_payload_id,
      io_input_payload_region => cmdArbiter_io_output_payload_region,
      io_input_payload_len => cmdArbiter_io_output_payload_len,
      io_input_payload_size => cmdArbiter_io_output_payload_size,
      io_input_payload_burst => cmdArbiter_io_output_payload_burst,
      io_input_payload_lock => cmdArbiter_io_output_payload_lock,
      io_input_payload_cache => cmdArbiter_io_output_payload_cache,
      io_input_payload_qos => cmdArbiter_io_output_payload_qos,
      io_input_payload_prot => cmdArbiter_io_output_payload_prot,
      io_outputs_0_valid => cmdArbiter_io_output_fork_io_outputs_0_valid,
      io_outputs_0_ready => io_output_aw_ready,
      io_outputs_0_payload_addr => cmdArbiter_io_output_fork_io_outputs_0_payload_addr,
      io_outputs_0_payload_id => cmdArbiter_io_output_fork_io_outputs_0_payload_id,
      io_outputs_0_payload_region => cmdArbiter_io_output_fork_io_outputs_0_payload_region,
      io_outputs_0_payload_len => cmdArbiter_io_output_fork_io_outputs_0_payload_len,
      io_outputs_0_payload_size => cmdArbiter_io_output_fork_io_outputs_0_payload_size,
      io_outputs_0_payload_burst => cmdArbiter_io_output_fork_io_outputs_0_payload_burst,
      io_outputs_0_payload_lock => cmdArbiter_io_output_fork_io_outputs_0_payload_lock,
      io_outputs_0_payload_cache => cmdArbiter_io_output_fork_io_outputs_0_payload_cache,
      io_outputs_0_payload_qos => cmdArbiter_io_output_fork_io_outputs_0_payload_qos,
      io_outputs_0_payload_prot => cmdArbiter_io_output_fork_io_outputs_0_payload_prot,
      io_outputs_1_valid => cmdArbiter_io_output_fork_io_outputs_1_valid,
      io_outputs_1_ready => cmdArbiter_io_output_fork_io_outputs_1_translated_ready,
      io_outputs_1_payload_addr => cmdArbiter_io_output_fork_io_outputs_1_payload_addr,
      io_outputs_1_payload_id => cmdArbiter_io_output_fork_io_outputs_1_payload_id,
      io_outputs_1_payload_region => cmdArbiter_io_output_fork_io_outputs_1_payload_region,
      io_outputs_1_payload_len => cmdArbiter_io_output_fork_io_outputs_1_payload_len,
      io_outputs_1_payload_size => cmdArbiter_io_output_fork_io_outputs_1_payload_size,
      io_outputs_1_payload_burst => cmdArbiter_io_output_fork_io_outputs_1_payload_burst,
      io_outputs_1_payload_lock => cmdArbiter_io_output_fork_io_outputs_1_payload_lock,
      io_outputs_1_payload_cache => cmdArbiter_io_output_fork_io_outputs_1_payload_cache,
      io_outputs_1_payload_qos => cmdArbiter_io_output_fork_io_outputs_1_payload_qos,
      io_outputs_1_payload_prot => cmdArbiter_io_output_fork_io_outputs_1_payload_prot,
      clk => clk,
      reset => reset 
    );
  cmdArbiter_io_output_fork_io_outputs_1_translated_fifo : entity work.StreamFifoLowLatency_3
    port map ( 
      io_push_valid => cmdArbiter_io_output_fork_io_outputs_1_translated_valid,
      io_push_ready => cmdArbiter_io_output_fork_io_outputs_1_translated_fifo_io_push_ready,
      io_push_payload => cmdArbiter_io_output_fork_io_outputs_1_translated_payload,
      io_pop_valid => cmdArbiter_io_output_fork_io_outputs_1_translated_fifo_io_pop_valid,
      io_pop_ready => zz_1,
      io_pop_payload => cmdArbiter_io_output_fork_io_outputs_1_translated_fifo_io_pop_payload,
      io_flush => zz_2,
      io_occupancy => cmdArbiter_io_output_fork_io_outputs_1_translated_fifo_io_occupancy,
      clk => clk,
      reset => reset 
    );
  process(cmdArbiter_io_output_fork_io_outputs_1_translated_fifo_io_pop_payload,io_inputs_0_w_valid,io_inputs_0_w_payload_data,io_inputs_0_w_payload_strb,io_inputs_0_w_payload_last,io_inputs_1_w_valid,io_inputs_1_w_payload_data,io_inputs_1_w_payload_strb,io_inputs_1_w_payload_last,io_inputs_2_w_valid,io_inputs_2_w_payload_data,io_inputs_2_w_payload_strb,io_inputs_2_w_payload_last)
  begin
    case cmdArbiter_io_output_fork_io_outputs_1_translated_fifo_io_pop_payload is
      when "00" =>
        zz_5 <= io_inputs_0_w_valid;
        zz_6 <= io_inputs_0_w_payload_data;
        zz_7 <= io_inputs_0_w_payload_strb;
        zz_8 <= io_inputs_0_w_payload_last;
      when "01" =>
        zz_5 <= io_inputs_1_w_valid;
        zz_6 <= io_inputs_1_w_payload_data;
        zz_7 <= io_inputs_1_w_payload_strb;
        zz_8 <= io_inputs_1_w_payload_last;
      when others =>
        zz_5 <= io_inputs_2_w_valid;
        zz_6 <= io_inputs_2_w_payload_data;
        zz_7 <= io_inputs_2_w_payload_strb;
        zz_8 <= io_inputs_2_w_payload_last;
    end case;
  end process;

  process(writeRspIndex,io_inputs_0_b_ready,io_inputs_1_b_ready,io_inputs_2_b_ready)
  begin
    case writeRspIndex is
      when "00" =>
        zz_9 <= io_inputs_0_b_ready;
      when "01" =>
        zz_9 <= io_inputs_1_b_ready;
      when others =>
        zz_9 <= io_inputs_2_b_ready;
    end case;
  end process;

  io_inputs_0_aw_ready <= cmdArbiter_io_inputs_0_ready;
  io_inputs_1_aw_ready <= cmdArbiter_io_inputs_1_ready;
  io_inputs_2_aw_ready <= cmdArbiter_io_inputs_2_ready;
  io_output_aw_valid <= cmdArbiter_io_output_fork_io_outputs_0_valid;
  io_output_aw_payload_addr <= cmdArbiter_io_output_fork_io_outputs_0_payload_addr;
  io_output_aw_payload_region <= cmdArbiter_io_output_fork_io_outputs_0_payload_region;
  io_output_aw_payload_len <= cmdArbiter_io_output_fork_io_outputs_0_payload_len;
  io_output_aw_payload_size <= cmdArbiter_io_output_fork_io_outputs_0_payload_size;
  io_output_aw_payload_burst <= cmdArbiter_io_output_fork_io_outputs_0_payload_burst;
  io_output_aw_payload_lock <= cmdArbiter_io_output_fork_io_outputs_0_payload_lock;
  io_output_aw_payload_cache <= cmdArbiter_io_output_fork_io_outputs_0_payload_cache;
  io_output_aw_payload_qos <= cmdArbiter_io_output_fork_io_outputs_0_payload_qos;
  io_output_aw_payload_prot <= cmdArbiter_io_output_fork_io_outputs_0_payload_prot;
  io_output_aw_payload_id <= unsigned(pkg_cat(std_logic_vector(cmdArbiter_io_chosen),std_logic_vector(cmdArbiter_io_output_payload_id)));
  cmdArbiter_io_output_fork_io_outputs_1_translated_valid <= cmdArbiter_io_output_fork_io_outputs_1_valid;
  cmdArbiter_io_output_fork_io_outputs_1_translated_payload <= cmdArbiter_io_chosen;
  cmdArbiter_io_output_fork_io_outputs_1_translated_ready <= cmdArbiter_io_output_fork_io_outputs_1_translated_fifo_io_push_ready;
  zz_3 <= (cmdArbiter_io_output_fork_io_outputs_1_translated_fifo_io_pop_valid and zz_5);
  io_output_w_payload_data <= zz_6;
  io_output_w_payload_strb <= zz_7;
  zz_4 <= zz_8;
  io_inputs_0_w_ready <= ((cmdArbiter_io_output_fork_io_outputs_1_translated_fifo_io_pop_valid and io_output_w_ready) and pkg_toStdLogic(cmdArbiter_io_output_fork_io_outputs_1_translated_fifo_io_pop_payload = pkg_unsigned("00")));
  io_inputs_1_w_ready <= ((cmdArbiter_io_output_fork_io_outputs_1_translated_fifo_io_pop_valid and io_output_w_ready) and pkg_toStdLogic(cmdArbiter_io_output_fork_io_outputs_1_translated_fifo_io_pop_payload = pkg_unsigned("01")));
  io_inputs_2_w_ready <= ((cmdArbiter_io_output_fork_io_outputs_1_translated_fifo_io_pop_valid and io_output_w_ready) and pkg_toStdLogic(cmdArbiter_io_output_fork_io_outputs_1_translated_fifo_io_pop_payload = pkg_unsigned("10")));
  zz_1 <= ((zz_3 and io_output_w_ready) and zz_4);
  writeRspIndex <= pkg_extract(io_output_b_payload_id,5,4);
  writeRspSels_0 <= pkg_toStdLogic(writeRspIndex = pkg_unsigned("00"));
  writeRspSels_1 <= pkg_toStdLogic(writeRspIndex = pkg_unsigned("01"));
  writeRspSels_2 <= pkg_toStdLogic(writeRspIndex = pkg_unsigned("10"));
  io_inputs_0_b_valid <= (io_output_b_valid and writeRspSels_0);
  io_inputs_0_b_payload_resp <= io_output_b_payload_resp;
  io_inputs_0_b_payload_id <= pkg_extract(io_output_b_payload_id,3,0);
  io_inputs_1_b_valid <= (io_output_b_valid and writeRspSels_1);
  io_inputs_1_b_payload_resp <= io_output_b_payload_resp;
  io_inputs_1_b_payload_id <= pkg_extract(io_output_b_payload_id,3,0);
  io_inputs_2_b_valid <= (io_output_b_valid and writeRspSels_2);
  io_inputs_2_b_payload_resp <= io_output_b_payload_resp;
  io_inputs_2_b_payload_id <= pkg_extract(io_output_b_payload_id,3,0);
  io_output_b_ready <= zz_9;
  zz_2 <= pkg_toStdLogic(false);
end arch;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.pkg_scala2hdl.all;
use work.all;
use work.pkg_enum.all;


entity Axi4CrossbarTester is
  port(
    axiMasters_0_aw_valid : in std_logic;
    axiMasters_0_aw_ready : out std_logic;
    axiMasters_0_aw_payload_addr : in unsigned(12 downto 0);
    axiMasters_0_aw_payload_id : in unsigned(3 downto 0);
    axiMasters_0_aw_payload_region : in std_logic_vector(3 downto 0);
    axiMasters_0_aw_payload_len : in unsigned(7 downto 0);
    axiMasters_0_aw_payload_size : in unsigned(2 downto 0);
    axiMasters_0_aw_payload_burst : in std_logic_vector(1 downto 0);
    axiMasters_0_aw_payload_lock : in std_logic_vector(0 downto 0);
    axiMasters_0_aw_payload_cache : in std_logic_vector(3 downto 0);
    axiMasters_0_aw_payload_qos : in std_logic_vector(3 downto 0);
    axiMasters_0_aw_payload_prot : in std_logic_vector(2 downto 0);
    axiMasters_0_w_valid : in std_logic;
    axiMasters_0_w_ready : out std_logic;
    axiMasters_0_w_payload_data : in std_logic_vector(31 downto 0);
    axiMasters_0_w_payload_strb : in std_logic_vector(3 downto 0);
    axiMasters_0_w_payload_last : in std_logic;
    axiMasters_0_b_valid : out std_logic;
    axiMasters_0_b_ready : in std_logic;
    axiMasters_0_b_payload_id : out unsigned(3 downto 0);
    axiMasters_0_b_payload_resp : out std_logic_vector(1 downto 0);
    axiMasters_0_ar_valid : in std_logic;
    axiMasters_0_ar_ready : out std_logic;
    axiMasters_0_ar_payload_addr : in unsigned(12 downto 0);
    axiMasters_0_ar_payload_id : in unsigned(3 downto 0);
    axiMasters_0_ar_payload_region : in std_logic_vector(3 downto 0);
    axiMasters_0_ar_payload_len : in unsigned(7 downto 0);
    axiMasters_0_ar_payload_size : in unsigned(2 downto 0);
    axiMasters_0_ar_payload_burst : in std_logic_vector(1 downto 0);
    axiMasters_0_ar_payload_lock : in std_logic_vector(0 downto 0);
    axiMasters_0_ar_payload_cache : in std_logic_vector(3 downto 0);
    axiMasters_0_ar_payload_qos : in std_logic_vector(3 downto 0);
    axiMasters_0_ar_payload_prot : in std_logic_vector(2 downto 0);
    axiMasters_0_r_valid : out std_logic;
    axiMasters_0_r_ready : in std_logic;
    axiMasters_0_r_payload_data : out std_logic_vector(31 downto 0);
    axiMasters_0_r_payload_id : out unsigned(3 downto 0);
    axiMasters_0_r_payload_resp : out std_logic_vector(1 downto 0);
    axiMasters_0_r_payload_last : out std_logic;
    axiMasters_1_aw_valid : in std_logic;
    axiMasters_1_aw_ready : out std_logic;
    axiMasters_1_aw_payload_addr : in unsigned(12 downto 0);
    axiMasters_1_aw_payload_id : in unsigned(3 downto 0);
    axiMasters_1_aw_payload_region : in std_logic_vector(3 downto 0);
    axiMasters_1_aw_payload_len : in unsigned(7 downto 0);
    axiMasters_1_aw_payload_size : in unsigned(2 downto 0);
    axiMasters_1_aw_payload_burst : in std_logic_vector(1 downto 0);
    axiMasters_1_aw_payload_lock : in std_logic_vector(0 downto 0);
    axiMasters_1_aw_payload_cache : in std_logic_vector(3 downto 0);
    axiMasters_1_aw_payload_qos : in std_logic_vector(3 downto 0);
    axiMasters_1_aw_payload_prot : in std_logic_vector(2 downto 0);
    axiMasters_1_w_valid : in std_logic;
    axiMasters_1_w_ready : out std_logic;
    axiMasters_1_w_payload_data : in std_logic_vector(31 downto 0);
    axiMasters_1_w_payload_strb : in std_logic_vector(3 downto 0);
    axiMasters_1_w_payload_last : in std_logic;
    axiMasters_1_b_valid : out std_logic;
    axiMasters_1_b_ready : in std_logic;
    axiMasters_1_b_payload_id : out unsigned(3 downto 0);
    axiMasters_1_b_payload_resp : out std_logic_vector(1 downto 0);
    axiMasters_1_ar_valid : in std_logic;
    axiMasters_1_ar_ready : out std_logic;
    axiMasters_1_ar_payload_addr : in unsigned(12 downto 0);
    axiMasters_1_ar_payload_id : in unsigned(3 downto 0);
    axiMasters_1_ar_payload_region : in std_logic_vector(3 downto 0);
    axiMasters_1_ar_payload_len : in unsigned(7 downto 0);
    axiMasters_1_ar_payload_size : in unsigned(2 downto 0);
    axiMasters_1_ar_payload_burst : in std_logic_vector(1 downto 0);
    axiMasters_1_ar_payload_lock : in std_logic_vector(0 downto 0);
    axiMasters_1_ar_payload_cache : in std_logic_vector(3 downto 0);
    axiMasters_1_ar_payload_qos : in std_logic_vector(3 downto 0);
    axiMasters_1_ar_payload_prot : in std_logic_vector(2 downto 0);
    axiMasters_1_r_valid : out std_logic;
    axiMasters_1_r_ready : in std_logic;
    axiMasters_1_r_payload_data : out std_logic_vector(31 downto 0);
    axiMasters_1_r_payload_id : out unsigned(3 downto 0);
    axiMasters_1_r_payload_resp : out std_logic_vector(1 downto 0);
    axiMasters_1_r_payload_last : out std_logic;
    axiMasters_2_aw_valid : in std_logic;
    axiMasters_2_aw_ready : out std_logic;
    axiMasters_2_aw_payload_addr : in unsigned(12 downto 0);
    axiMasters_2_aw_payload_id : in unsigned(3 downto 0);
    axiMasters_2_aw_payload_region : in std_logic_vector(3 downto 0);
    axiMasters_2_aw_payload_len : in unsigned(7 downto 0);
    axiMasters_2_aw_payload_size : in unsigned(2 downto 0);
    axiMasters_2_aw_payload_burst : in std_logic_vector(1 downto 0);
    axiMasters_2_aw_payload_lock : in std_logic_vector(0 downto 0);
    axiMasters_2_aw_payload_cache : in std_logic_vector(3 downto 0);
    axiMasters_2_aw_payload_qos : in std_logic_vector(3 downto 0);
    axiMasters_2_aw_payload_prot : in std_logic_vector(2 downto 0);
    axiMasters_2_w_valid : in std_logic;
    axiMasters_2_w_ready : out std_logic;
    axiMasters_2_w_payload_data : in std_logic_vector(31 downto 0);
    axiMasters_2_w_payload_strb : in std_logic_vector(3 downto 0);
    axiMasters_2_w_payload_last : in std_logic;
    axiMasters_2_b_valid : out std_logic;
    axiMasters_2_b_ready : in std_logic;
    axiMasters_2_b_payload_id : out unsigned(3 downto 0);
    axiMasters_2_b_payload_resp : out std_logic_vector(1 downto 0);
    axiMasters_2_ar_valid : in std_logic;
    axiMasters_2_ar_ready : out std_logic;
    axiMasters_2_ar_payload_addr : in unsigned(12 downto 0);
    axiMasters_2_ar_payload_id : in unsigned(3 downto 0);
    axiMasters_2_ar_payload_region : in std_logic_vector(3 downto 0);
    axiMasters_2_ar_payload_len : in unsigned(7 downto 0);
    axiMasters_2_ar_payload_size : in unsigned(2 downto 0);
    axiMasters_2_ar_payload_burst : in std_logic_vector(1 downto 0);
    axiMasters_2_ar_payload_lock : in std_logic_vector(0 downto 0);
    axiMasters_2_ar_payload_cache : in std_logic_vector(3 downto 0);
    axiMasters_2_ar_payload_qos : in std_logic_vector(3 downto 0);
    axiMasters_2_ar_payload_prot : in std_logic_vector(2 downto 0);
    axiMasters_2_r_valid : out std_logic;
    axiMasters_2_r_ready : in std_logic;
    axiMasters_2_r_payload_data : out std_logic_vector(31 downto 0);
    axiMasters_2_r_payload_id : out unsigned(3 downto 0);
    axiMasters_2_r_payload_resp : out std_logic_vector(1 downto 0);
    axiMasters_2_r_payload_last : out std_logic;
    axiSlaves_0_aw_valid : out std_logic;
    axiSlaves_0_aw_ready : in std_logic;
    axiSlaves_0_aw_payload_addr : out unsigned(12 downto 0);
    axiSlaves_0_aw_payload_id : out unsigned(5 downto 0);
    axiSlaves_0_aw_payload_region : out std_logic_vector(3 downto 0);
    axiSlaves_0_aw_payload_len : out unsigned(7 downto 0);
    axiSlaves_0_aw_payload_size : out unsigned(2 downto 0);
    axiSlaves_0_aw_payload_burst : out std_logic_vector(1 downto 0);
    axiSlaves_0_aw_payload_lock : out std_logic_vector(0 downto 0);
    axiSlaves_0_aw_payload_cache : out std_logic_vector(3 downto 0);
    axiSlaves_0_aw_payload_qos : out std_logic_vector(3 downto 0);
    axiSlaves_0_aw_payload_prot : out std_logic_vector(2 downto 0);
    axiSlaves_0_w_valid : out std_logic;
    axiSlaves_0_w_ready : in std_logic;
    axiSlaves_0_w_payload_data : out std_logic_vector(31 downto 0);
    axiSlaves_0_w_payload_strb : out std_logic_vector(3 downto 0);
    axiSlaves_0_w_payload_last : out std_logic;
    axiSlaves_0_b_valid : in std_logic;
    axiSlaves_0_b_ready : out std_logic;
    axiSlaves_0_b_payload_id : in unsigned(5 downto 0);
    axiSlaves_0_b_payload_resp : in std_logic_vector(1 downto 0);
    axiSlaves_0_ar_valid : out std_logic;
    axiSlaves_0_ar_ready : in std_logic;
    axiSlaves_0_ar_payload_addr : out unsigned(12 downto 0);
    axiSlaves_0_ar_payload_id : out unsigned(5 downto 0);
    axiSlaves_0_ar_payload_region : out std_logic_vector(3 downto 0);
    axiSlaves_0_ar_payload_len : out unsigned(7 downto 0);
    axiSlaves_0_ar_payload_size : out unsigned(2 downto 0);
    axiSlaves_0_ar_payload_burst : out std_logic_vector(1 downto 0);
    axiSlaves_0_ar_payload_lock : out std_logic_vector(0 downto 0);
    axiSlaves_0_ar_payload_cache : out std_logic_vector(3 downto 0);
    axiSlaves_0_ar_payload_qos : out std_logic_vector(3 downto 0);
    axiSlaves_0_ar_payload_prot : out std_logic_vector(2 downto 0);
    axiSlaves_0_r_valid : in std_logic;
    axiSlaves_0_r_ready : out std_logic;
    axiSlaves_0_r_payload_data : in std_logic_vector(31 downto 0);
    axiSlaves_0_r_payload_id : in unsigned(5 downto 0);
    axiSlaves_0_r_payload_resp : in std_logic_vector(1 downto 0);
    axiSlaves_0_r_payload_last : in std_logic;
    axiSlaves_1_aw_valid : out std_logic;
    axiSlaves_1_aw_ready : in std_logic;
    axiSlaves_1_aw_payload_addr : out unsigned(12 downto 0);
    axiSlaves_1_aw_payload_id : out unsigned(5 downto 0);
    axiSlaves_1_aw_payload_region : out std_logic_vector(3 downto 0);
    axiSlaves_1_aw_payload_len : out unsigned(7 downto 0);
    axiSlaves_1_aw_payload_size : out unsigned(2 downto 0);
    axiSlaves_1_aw_payload_burst : out std_logic_vector(1 downto 0);
    axiSlaves_1_aw_payload_lock : out std_logic_vector(0 downto 0);
    axiSlaves_1_aw_payload_cache : out std_logic_vector(3 downto 0);
    axiSlaves_1_aw_payload_qos : out std_logic_vector(3 downto 0);
    axiSlaves_1_aw_payload_prot : out std_logic_vector(2 downto 0);
    axiSlaves_1_w_valid : out std_logic;
    axiSlaves_1_w_ready : in std_logic;
    axiSlaves_1_w_payload_data : out std_logic_vector(31 downto 0);
    axiSlaves_1_w_payload_strb : out std_logic_vector(3 downto 0);
    axiSlaves_1_w_payload_last : out std_logic;
    axiSlaves_1_b_valid : in std_logic;
    axiSlaves_1_b_ready : out std_logic;
    axiSlaves_1_b_payload_id : in unsigned(5 downto 0);
    axiSlaves_1_b_payload_resp : in std_logic_vector(1 downto 0);
    axiSlaves_1_ar_valid : out std_logic;
    axiSlaves_1_ar_ready : in std_logic;
    axiSlaves_1_ar_payload_addr : out unsigned(12 downto 0);
    axiSlaves_1_ar_payload_id : out unsigned(5 downto 0);
    axiSlaves_1_ar_payload_region : out std_logic_vector(3 downto 0);
    axiSlaves_1_ar_payload_len : out unsigned(7 downto 0);
    axiSlaves_1_ar_payload_size : out unsigned(2 downto 0);
    axiSlaves_1_ar_payload_burst : out std_logic_vector(1 downto 0);
    axiSlaves_1_ar_payload_lock : out std_logic_vector(0 downto 0);
    axiSlaves_1_ar_payload_cache : out std_logic_vector(3 downto 0);
    axiSlaves_1_ar_payload_qos : out std_logic_vector(3 downto 0);
    axiSlaves_1_ar_payload_prot : out std_logic_vector(2 downto 0);
    axiSlaves_1_r_valid : in std_logic;
    axiSlaves_1_r_ready : out std_logic;
    axiSlaves_1_r_payload_data : in std_logic_vector(31 downto 0);
    axiSlaves_1_r_payload_id : in unsigned(5 downto 0);
    axiSlaves_1_r_payload_resp : in std_logic_vector(1 downto 0);
    axiSlaves_1_r_payload_last : in std_logic;
    axiSlaves_2_aw_valid : out std_logic;
    axiSlaves_2_aw_ready : in std_logic;
    axiSlaves_2_aw_payload_addr : out unsigned(12 downto 0);
    axiSlaves_2_aw_payload_id : out unsigned(5 downto 0);
    axiSlaves_2_aw_payload_region : out std_logic_vector(3 downto 0);
    axiSlaves_2_aw_payload_len : out unsigned(7 downto 0);
    axiSlaves_2_aw_payload_size : out unsigned(2 downto 0);
    axiSlaves_2_aw_payload_burst : out std_logic_vector(1 downto 0);
    axiSlaves_2_aw_payload_lock : out std_logic_vector(0 downto 0);
    axiSlaves_2_aw_payload_cache : out std_logic_vector(3 downto 0);
    axiSlaves_2_aw_payload_qos : out std_logic_vector(3 downto 0);
    axiSlaves_2_aw_payload_prot : out std_logic_vector(2 downto 0);
    axiSlaves_2_w_valid : out std_logic;
    axiSlaves_2_w_ready : in std_logic;
    axiSlaves_2_w_payload_data : out std_logic_vector(31 downto 0);
    axiSlaves_2_w_payload_strb : out std_logic_vector(3 downto 0);
    axiSlaves_2_w_payload_last : out std_logic;
    axiSlaves_2_b_valid : in std_logic;
    axiSlaves_2_b_ready : out std_logic;
    axiSlaves_2_b_payload_id : in unsigned(5 downto 0);
    axiSlaves_2_b_payload_resp : in std_logic_vector(1 downto 0);
    axiSlaves_2_ar_valid : out std_logic;
    axiSlaves_2_ar_ready : in std_logic;
    axiSlaves_2_ar_payload_addr : out unsigned(12 downto 0);
    axiSlaves_2_ar_payload_id : out unsigned(5 downto 0);
    axiSlaves_2_ar_payload_region : out std_logic_vector(3 downto 0);
    axiSlaves_2_ar_payload_len : out unsigned(7 downto 0);
    axiSlaves_2_ar_payload_size : out unsigned(2 downto 0);
    axiSlaves_2_ar_payload_burst : out std_logic_vector(1 downto 0);
    axiSlaves_2_ar_payload_lock : out std_logic_vector(0 downto 0);
    axiSlaves_2_ar_payload_cache : out std_logic_vector(3 downto 0);
    axiSlaves_2_ar_payload_qos : out std_logic_vector(3 downto 0);
    axiSlaves_2_ar_payload_prot : out std_logic_vector(2 downto 0);
    axiSlaves_2_r_valid : in std_logic;
    axiSlaves_2_r_ready : out std_logic;
    axiSlaves_2_r_payload_data : in std_logic_vector(31 downto 0);
    axiSlaves_2_r_payload_id : in unsigned(5 downto 0);
    axiSlaves_2_r_payload_resp : in std_logic_vector(1 downto 0);
    axiSlaves_2_r_payload_last : in std_logic;
    axiSlaves_3_aw_valid : out std_logic;
    axiSlaves_3_aw_ready : in std_logic;
    axiSlaves_3_aw_payload_addr : out unsigned(12 downto 0);
    axiSlaves_3_aw_payload_id : out unsigned(5 downto 0);
    axiSlaves_3_aw_payload_region : out std_logic_vector(3 downto 0);
    axiSlaves_3_aw_payload_len : out unsigned(7 downto 0);
    axiSlaves_3_aw_payload_size : out unsigned(2 downto 0);
    axiSlaves_3_aw_payload_burst : out std_logic_vector(1 downto 0);
    axiSlaves_3_aw_payload_lock : out std_logic_vector(0 downto 0);
    axiSlaves_3_aw_payload_cache : out std_logic_vector(3 downto 0);
    axiSlaves_3_aw_payload_qos : out std_logic_vector(3 downto 0);
    axiSlaves_3_aw_payload_prot : out std_logic_vector(2 downto 0);
    axiSlaves_3_w_valid : out std_logic;
    axiSlaves_3_w_ready : in std_logic;
    axiSlaves_3_w_payload_data : out std_logic_vector(31 downto 0);
    axiSlaves_3_w_payload_strb : out std_logic_vector(3 downto 0);
    axiSlaves_3_w_payload_last : out std_logic;
    axiSlaves_3_b_valid : in std_logic;
    axiSlaves_3_b_ready : out std_logic;
    axiSlaves_3_b_payload_id : in unsigned(5 downto 0);
    axiSlaves_3_b_payload_resp : in std_logic_vector(1 downto 0);
    axiSlaves_3_ar_valid : out std_logic;
    axiSlaves_3_ar_ready : in std_logic;
    axiSlaves_3_ar_payload_addr : out unsigned(12 downto 0);
    axiSlaves_3_ar_payload_id : out unsigned(5 downto 0);
    axiSlaves_3_ar_payload_region : out std_logic_vector(3 downto 0);
    axiSlaves_3_ar_payload_len : out unsigned(7 downto 0);
    axiSlaves_3_ar_payload_size : out unsigned(2 downto 0);
    axiSlaves_3_ar_payload_burst : out std_logic_vector(1 downto 0);
    axiSlaves_3_ar_payload_lock : out std_logic_vector(0 downto 0);
    axiSlaves_3_ar_payload_cache : out std_logic_vector(3 downto 0);
    axiSlaves_3_ar_payload_qos : out std_logic_vector(3 downto 0);
    axiSlaves_3_ar_payload_prot : out std_logic_vector(2 downto 0);
    axiSlaves_3_r_valid : in std_logic;
    axiSlaves_3_r_ready : out std_logic;
    axiSlaves_3_r_payload_data : in std_logic_vector(31 downto 0);
    axiSlaves_3_r_payload_id : in unsigned(5 downto 0);
    axiSlaves_3_r_payload_resp : in std_logic_vector(1 downto 0);
    axiSlaves_3_r_payload_last : in std_logic;
    clk : in std_logic;
    reset : in std_logic
  );
end Axi4CrossbarTester;

architecture arch of Axi4CrossbarTester is
  signal zz_55 : std_logic;
  signal zz_56 : unsigned(3 downto 0);
  signal zz_57 : std_logic;
  signal zz_58 : unsigned(3 downto 0);
  signal zz_59 : std_logic;
  signal zz_60 : std_logic;
  signal zz_61 : unsigned(3 downto 0);
  signal zz_62 : std_logic;
  signal zz_63 : unsigned(3 downto 0);
  signal zz_64 : std_logic;
  signal zz_65 : std_logic;
  signal zz_66 : unsigned(3 downto 0);
  signal zz_67 : std_logic;
  signal zz_68 : unsigned(3 downto 0);
  signal zz_69 : std_logic;
  signal zz_70 : std_logic;
  signal zz_71 : unsigned(3 downto 0);
  signal zz_72 : std_logic;
  signal zz_73 : unsigned(3 downto 0);
  signal zz_74 : std_logic;
  signal zz_75 : std_logic;
  signal zz_76 : unsigned(3 downto 0);
  signal zz_77 : std_logic;
  signal zz_78 : unsigned(3 downto 0);
  signal zz_79 : std_logic;
  signal zz_80 : std_logic;
  signal zz_81 : unsigned(3 downto 0);
  signal zz_82 : std_logic;
  signal zz_83 : unsigned(3 downto 0);
  signal zz_84 : std_logic;
  signal zz_85 : unsigned(4 downto 0);
  signal zz_86 : unsigned(4 downto 0);
  signal zz_87 : unsigned(4 downto 0);
  signal zz_88 : unsigned(4 downto 0);
  signal zz_89 : unsigned(4 downto 0);
  signal zz_90 : unsigned(4 downto 0);
  signal zz_91 : unsigned(4 downto 0);
  signal zz_92 : unsigned(4 downto 0);
  signal zz_93 : unsigned(4 downto 0);
  signal zz_94 : unsigned(4 downto 0);
  signal zz_95 : unsigned(4 downto 0);
  signal zz_96 : unsigned(4 downto 0);
  signal axiMasters_0_readOnly_decoder_io_input_ar_ready : std_logic;
  signal axiMasters_0_readOnly_decoder_io_input_r_valid : std_logic;
  signal axiMasters_0_readOnly_decoder_io_input_r_payload_data : std_logic_vector(31 downto 0);
  signal axiMasters_0_readOnly_decoder_io_input_r_payload_id : unsigned(3 downto 0);
  signal axiMasters_0_readOnly_decoder_io_input_r_payload_resp : std_logic_vector(1 downto 0);
  signal axiMasters_0_readOnly_decoder_io_input_r_payload_last : std_logic;
  signal axiMasters_0_readOnly_decoder_io_outputs_0_ar_valid : std_logic;
  signal axiMasters_0_readOnly_decoder_io_outputs_0_ar_payload_addr : unsigned(12 downto 0);
  signal axiMasters_0_readOnly_decoder_io_outputs_0_ar_payload_id : unsigned(3 downto 0);
  signal axiMasters_0_readOnly_decoder_io_outputs_0_ar_payload_region : std_logic_vector(3 downto 0);
  signal axiMasters_0_readOnly_decoder_io_outputs_0_ar_payload_len : unsigned(7 downto 0);
  signal axiMasters_0_readOnly_decoder_io_outputs_0_ar_payload_size : unsigned(2 downto 0);
  signal axiMasters_0_readOnly_decoder_io_outputs_0_ar_payload_burst : std_logic_vector(1 downto 0);
  signal axiMasters_0_readOnly_decoder_io_outputs_0_ar_payload_lock : std_logic_vector(0 downto 0);
  signal axiMasters_0_readOnly_decoder_io_outputs_0_ar_payload_cache : std_logic_vector(3 downto 0);
  signal axiMasters_0_readOnly_decoder_io_outputs_0_ar_payload_qos : std_logic_vector(3 downto 0);
  signal axiMasters_0_readOnly_decoder_io_outputs_0_ar_payload_prot : std_logic_vector(2 downto 0);
  signal axiMasters_0_readOnly_decoder_io_outputs_0_r_ready : std_logic;
  signal axiMasters_0_readOnly_decoder_io_outputs_1_ar_valid : std_logic;
  signal axiMasters_0_readOnly_decoder_io_outputs_1_ar_payload_addr : unsigned(12 downto 0);
  signal axiMasters_0_readOnly_decoder_io_outputs_1_ar_payload_id : unsigned(3 downto 0);
  signal axiMasters_0_readOnly_decoder_io_outputs_1_ar_payload_region : std_logic_vector(3 downto 0);
  signal axiMasters_0_readOnly_decoder_io_outputs_1_ar_payload_len : unsigned(7 downto 0);
  signal axiMasters_0_readOnly_decoder_io_outputs_1_ar_payload_size : unsigned(2 downto 0);
  signal axiMasters_0_readOnly_decoder_io_outputs_1_ar_payload_burst : std_logic_vector(1 downto 0);
  signal axiMasters_0_readOnly_decoder_io_outputs_1_ar_payload_lock : std_logic_vector(0 downto 0);
  signal axiMasters_0_readOnly_decoder_io_outputs_1_ar_payload_cache : std_logic_vector(3 downto 0);
  signal axiMasters_0_readOnly_decoder_io_outputs_1_ar_payload_qos : std_logic_vector(3 downto 0);
  signal axiMasters_0_readOnly_decoder_io_outputs_1_ar_payload_prot : std_logic_vector(2 downto 0);
  signal axiMasters_0_readOnly_decoder_io_outputs_1_r_ready : std_logic;
  signal axiMasters_0_readOnly_decoder_io_outputs_2_ar_valid : std_logic;
  signal axiMasters_0_readOnly_decoder_io_outputs_2_ar_payload_addr : unsigned(12 downto 0);
  signal axiMasters_0_readOnly_decoder_io_outputs_2_ar_payload_id : unsigned(3 downto 0);
  signal axiMasters_0_readOnly_decoder_io_outputs_2_ar_payload_region : std_logic_vector(3 downto 0);
  signal axiMasters_0_readOnly_decoder_io_outputs_2_ar_payload_len : unsigned(7 downto 0);
  signal axiMasters_0_readOnly_decoder_io_outputs_2_ar_payload_size : unsigned(2 downto 0);
  signal axiMasters_0_readOnly_decoder_io_outputs_2_ar_payload_burst : std_logic_vector(1 downto 0);
  signal axiMasters_0_readOnly_decoder_io_outputs_2_ar_payload_lock : std_logic_vector(0 downto 0);
  signal axiMasters_0_readOnly_decoder_io_outputs_2_ar_payload_cache : std_logic_vector(3 downto 0);
  signal axiMasters_0_readOnly_decoder_io_outputs_2_ar_payload_qos : std_logic_vector(3 downto 0);
  signal axiMasters_0_readOnly_decoder_io_outputs_2_ar_payload_prot : std_logic_vector(2 downto 0);
  signal axiMasters_0_readOnly_decoder_io_outputs_2_r_ready : std_logic;
  signal axiMasters_0_writeOnly_decoder_io_input_aw_ready : std_logic;
  signal axiMasters_0_writeOnly_decoder_io_input_w_ready : std_logic;
  signal axiMasters_0_writeOnly_decoder_io_input_b_valid : std_logic;
  signal axiMasters_0_writeOnly_decoder_io_input_b_payload_id : unsigned(3 downto 0);
  signal axiMasters_0_writeOnly_decoder_io_input_b_payload_resp : std_logic_vector(1 downto 0);
  signal axiMasters_0_writeOnly_decoder_io_outputs_0_aw_valid : std_logic;
  signal axiMasters_0_writeOnly_decoder_io_outputs_0_aw_payload_addr : unsigned(12 downto 0);
  signal axiMasters_0_writeOnly_decoder_io_outputs_0_aw_payload_id : unsigned(3 downto 0);
  signal axiMasters_0_writeOnly_decoder_io_outputs_0_aw_payload_region : std_logic_vector(3 downto 0);
  signal axiMasters_0_writeOnly_decoder_io_outputs_0_aw_payload_len : unsigned(7 downto 0);
  signal axiMasters_0_writeOnly_decoder_io_outputs_0_aw_payload_size : unsigned(2 downto 0);
  signal axiMasters_0_writeOnly_decoder_io_outputs_0_aw_payload_burst : std_logic_vector(1 downto 0);
  signal axiMasters_0_writeOnly_decoder_io_outputs_0_aw_payload_lock : std_logic_vector(0 downto 0);
  signal axiMasters_0_writeOnly_decoder_io_outputs_0_aw_payload_cache : std_logic_vector(3 downto 0);
  signal axiMasters_0_writeOnly_decoder_io_outputs_0_aw_payload_qos : std_logic_vector(3 downto 0);
  signal axiMasters_0_writeOnly_decoder_io_outputs_0_aw_payload_prot : std_logic_vector(2 downto 0);
  signal axiMasters_0_writeOnly_decoder_io_outputs_0_w_valid : std_logic;
  signal axiMasters_0_writeOnly_decoder_io_outputs_0_w_payload_data : std_logic_vector(31 downto 0);
  signal axiMasters_0_writeOnly_decoder_io_outputs_0_w_payload_strb : std_logic_vector(3 downto 0);
  signal axiMasters_0_writeOnly_decoder_io_outputs_0_w_payload_last : std_logic;
  signal axiMasters_0_writeOnly_decoder_io_outputs_0_b_ready : std_logic;
  signal axiMasters_0_writeOnly_decoder_io_outputs_1_aw_valid : std_logic;
  signal axiMasters_0_writeOnly_decoder_io_outputs_1_aw_payload_addr : unsigned(12 downto 0);
  signal axiMasters_0_writeOnly_decoder_io_outputs_1_aw_payload_id : unsigned(3 downto 0);
  signal axiMasters_0_writeOnly_decoder_io_outputs_1_aw_payload_region : std_logic_vector(3 downto 0);
  signal axiMasters_0_writeOnly_decoder_io_outputs_1_aw_payload_len : unsigned(7 downto 0);
  signal axiMasters_0_writeOnly_decoder_io_outputs_1_aw_payload_size : unsigned(2 downto 0);
  signal axiMasters_0_writeOnly_decoder_io_outputs_1_aw_payload_burst : std_logic_vector(1 downto 0);
  signal axiMasters_0_writeOnly_decoder_io_outputs_1_aw_payload_lock : std_logic_vector(0 downto 0);
  signal axiMasters_0_writeOnly_decoder_io_outputs_1_aw_payload_cache : std_logic_vector(3 downto 0);
  signal axiMasters_0_writeOnly_decoder_io_outputs_1_aw_payload_qos : std_logic_vector(3 downto 0);
  signal axiMasters_0_writeOnly_decoder_io_outputs_1_aw_payload_prot : std_logic_vector(2 downto 0);
  signal axiMasters_0_writeOnly_decoder_io_outputs_1_w_valid : std_logic;
  signal axiMasters_0_writeOnly_decoder_io_outputs_1_w_payload_data : std_logic_vector(31 downto 0);
  signal axiMasters_0_writeOnly_decoder_io_outputs_1_w_payload_strb : std_logic_vector(3 downto 0);
  signal axiMasters_0_writeOnly_decoder_io_outputs_1_w_payload_last : std_logic;
  signal axiMasters_0_writeOnly_decoder_io_outputs_1_b_ready : std_logic;
  signal axiMasters_0_writeOnly_decoder_io_outputs_2_aw_valid : std_logic;
  signal axiMasters_0_writeOnly_decoder_io_outputs_2_aw_payload_addr : unsigned(12 downto 0);
  signal axiMasters_0_writeOnly_decoder_io_outputs_2_aw_payload_id : unsigned(3 downto 0);
  signal axiMasters_0_writeOnly_decoder_io_outputs_2_aw_payload_region : std_logic_vector(3 downto 0);
  signal axiMasters_0_writeOnly_decoder_io_outputs_2_aw_payload_len : unsigned(7 downto 0);
  signal axiMasters_0_writeOnly_decoder_io_outputs_2_aw_payload_size : unsigned(2 downto 0);
  signal axiMasters_0_writeOnly_decoder_io_outputs_2_aw_payload_burst : std_logic_vector(1 downto 0);
  signal axiMasters_0_writeOnly_decoder_io_outputs_2_aw_payload_lock : std_logic_vector(0 downto 0);
  signal axiMasters_0_writeOnly_decoder_io_outputs_2_aw_payload_cache : std_logic_vector(3 downto 0);
  signal axiMasters_0_writeOnly_decoder_io_outputs_2_aw_payload_qos : std_logic_vector(3 downto 0);
  signal axiMasters_0_writeOnly_decoder_io_outputs_2_aw_payload_prot : std_logic_vector(2 downto 0);
  signal axiMasters_0_writeOnly_decoder_io_outputs_2_w_valid : std_logic;
  signal axiMasters_0_writeOnly_decoder_io_outputs_2_w_payload_data : std_logic_vector(31 downto 0);
  signal axiMasters_0_writeOnly_decoder_io_outputs_2_w_payload_strb : std_logic_vector(3 downto 0);
  signal axiMasters_0_writeOnly_decoder_io_outputs_2_w_payload_last : std_logic;
  signal axiMasters_0_writeOnly_decoder_io_outputs_2_b_ready : std_logic;
  signal axiMasters_1_readOnly_decoder_io_input_ar_ready : std_logic;
  signal axiMasters_1_readOnly_decoder_io_input_r_valid : std_logic;
  signal axiMasters_1_readOnly_decoder_io_input_r_payload_data : std_logic_vector(31 downto 0);
  signal axiMasters_1_readOnly_decoder_io_input_r_payload_id : unsigned(3 downto 0);
  signal axiMasters_1_readOnly_decoder_io_input_r_payload_resp : std_logic_vector(1 downto 0);
  signal axiMasters_1_readOnly_decoder_io_input_r_payload_last : std_logic;
  signal axiMasters_1_readOnly_decoder_io_outputs_0_ar_valid : std_logic;
  signal axiMasters_1_readOnly_decoder_io_outputs_0_ar_payload_addr : unsigned(12 downto 0);
  signal axiMasters_1_readOnly_decoder_io_outputs_0_ar_payload_id : unsigned(3 downto 0);
  signal axiMasters_1_readOnly_decoder_io_outputs_0_ar_payload_region : std_logic_vector(3 downto 0);
  signal axiMasters_1_readOnly_decoder_io_outputs_0_ar_payload_len : unsigned(7 downto 0);
  signal axiMasters_1_readOnly_decoder_io_outputs_0_ar_payload_size : unsigned(2 downto 0);
  signal axiMasters_1_readOnly_decoder_io_outputs_0_ar_payload_burst : std_logic_vector(1 downto 0);
  signal axiMasters_1_readOnly_decoder_io_outputs_0_ar_payload_lock : std_logic_vector(0 downto 0);
  signal axiMasters_1_readOnly_decoder_io_outputs_0_ar_payload_cache : std_logic_vector(3 downto 0);
  signal axiMasters_1_readOnly_decoder_io_outputs_0_ar_payload_qos : std_logic_vector(3 downto 0);
  signal axiMasters_1_readOnly_decoder_io_outputs_0_ar_payload_prot : std_logic_vector(2 downto 0);
  signal axiMasters_1_readOnly_decoder_io_outputs_0_r_ready : std_logic;
  signal axiMasters_1_readOnly_decoder_io_outputs_1_ar_valid : std_logic;
  signal axiMasters_1_readOnly_decoder_io_outputs_1_ar_payload_addr : unsigned(12 downto 0);
  signal axiMasters_1_readOnly_decoder_io_outputs_1_ar_payload_id : unsigned(3 downto 0);
  signal axiMasters_1_readOnly_decoder_io_outputs_1_ar_payload_region : std_logic_vector(3 downto 0);
  signal axiMasters_1_readOnly_decoder_io_outputs_1_ar_payload_len : unsigned(7 downto 0);
  signal axiMasters_1_readOnly_decoder_io_outputs_1_ar_payload_size : unsigned(2 downto 0);
  signal axiMasters_1_readOnly_decoder_io_outputs_1_ar_payload_burst : std_logic_vector(1 downto 0);
  signal axiMasters_1_readOnly_decoder_io_outputs_1_ar_payload_lock : std_logic_vector(0 downto 0);
  signal axiMasters_1_readOnly_decoder_io_outputs_1_ar_payload_cache : std_logic_vector(3 downto 0);
  signal axiMasters_1_readOnly_decoder_io_outputs_1_ar_payload_qos : std_logic_vector(3 downto 0);
  signal axiMasters_1_readOnly_decoder_io_outputs_1_ar_payload_prot : std_logic_vector(2 downto 0);
  signal axiMasters_1_readOnly_decoder_io_outputs_1_r_ready : std_logic;
  signal axiMasters_1_readOnly_decoder_io_outputs_2_ar_valid : std_logic;
  signal axiMasters_1_readOnly_decoder_io_outputs_2_ar_payload_addr : unsigned(12 downto 0);
  signal axiMasters_1_readOnly_decoder_io_outputs_2_ar_payload_id : unsigned(3 downto 0);
  signal axiMasters_1_readOnly_decoder_io_outputs_2_ar_payload_region : std_logic_vector(3 downto 0);
  signal axiMasters_1_readOnly_decoder_io_outputs_2_ar_payload_len : unsigned(7 downto 0);
  signal axiMasters_1_readOnly_decoder_io_outputs_2_ar_payload_size : unsigned(2 downto 0);
  signal axiMasters_1_readOnly_decoder_io_outputs_2_ar_payload_burst : std_logic_vector(1 downto 0);
  signal axiMasters_1_readOnly_decoder_io_outputs_2_ar_payload_lock : std_logic_vector(0 downto 0);
  signal axiMasters_1_readOnly_decoder_io_outputs_2_ar_payload_cache : std_logic_vector(3 downto 0);
  signal axiMasters_1_readOnly_decoder_io_outputs_2_ar_payload_qos : std_logic_vector(3 downto 0);
  signal axiMasters_1_readOnly_decoder_io_outputs_2_ar_payload_prot : std_logic_vector(2 downto 0);
  signal axiMasters_1_readOnly_decoder_io_outputs_2_r_ready : std_logic;
  signal axiMasters_1_writeOnly_decoder_io_input_aw_ready : std_logic;
  signal axiMasters_1_writeOnly_decoder_io_input_w_ready : std_logic;
  signal axiMasters_1_writeOnly_decoder_io_input_b_valid : std_logic;
  signal axiMasters_1_writeOnly_decoder_io_input_b_payload_id : unsigned(3 downto 0);
  signal axiMasters_1_writeOnly_decoder_io_input_b_payload_resp : std_logic_vector(1 downto 0);
  signal axiMasters_1_writeOnly_decoder_io_outputs_0_aw_valid : std_logic;
  signal axiMasters_1_writeOnly_decoder_io_outputs_0_aw_payload_addr : unsigned(12 downto 0);
  signal axiMasters_1_writeOnly_decoder_io_outputs_0_aw_payload_id : unsigned(3 downto 0);
  signal axiMasters_1_writeOnly_decoder_io_outputs_0_aw_payload_region : std_logic_vector(3 downto 0);
  signal axiMasters_1_writeOnly_decoder_io_outputs_0_aw_payload_len : unsigned(7 downto 0);
  signal axiMasters_1_writeOnly_decoder_io_outputs_0_aw_payload_size : unsigned(2 downto 0);
  signal axiMasters_1_writeOnly_decoder_io_outputs_0_aw_payload_burst : std_logic_vector(1 downto 0);
  signal axiMasters_1_writeOnly_decoder_io_outputs_0_aw_payload_lock : std_logic_vector(0 downto 0);
  signal axiMasters_1_writeOnly_decoder_io_outputs_0_aw_payload_cache : std_logic_vector(3 downto 0);
  signal axiMasters_1_writeOnly_decoder_io_outputs_0_aw_payload_qos : std_logic_vector(3 downto 0);
  signal axiMasters_1_writeOnly_decoder_io_outputs_0_aw_payload_prot : std_logic_vector(2 downto 0);
  signal axiMasters_1_writeOnly_decoder_io_outputs_0_w_valid : std_logic;
  signal axiMasters_1_writeOnly_decoder_io_outputs_0_w_payload_data : std_logic_vector(31 downto 0);
  signal axiMasters_1_writeOnly_decoder_io_outputs_0_w_payload_strb : std_logic_vector(3 downto 0);
  signal axiMasters_1_writeOnly_decoder_io_outputs_0_w_payload_last : std_logic;
  signal axiMasters_1_writeOnly_decoder_io_outputs_0_b_ready : std_logic;
  signal axiMasters_1_writeOnly_decoder_io_outputs_1_aw_valid : std_logic;
  signal axiMasters_1_writeOnly_decoder_io_outputs_1_aw_payload_addr : unsigned(12 downto 0);
  signal axiMasters_1_writeOnly_decoder_io_outputs_1_aw_payload_id : unsigned(3 downto 0);
  signal axiMasters_1_writeOnly_decoder_io_outputs_1_aw_payload_region : std_logic_vector(3 downto 0);
  signal axiMasters_1_writeOnly_decoder_io_outputs_1_aw_payload_len : unsigned(7 downto 0);
  signal axiMasters_1_writeOnly_decoder_io_outputs_1_aw_payload_size : unsigned(2 downto 0);
  signal axiMasters_1_writeOnly_decoder_io_outputs_1_aw_payload_burst : std_logic_vector(1 downto 0);
  signal axiMasters_1_writeOnly_decoder_io_outputs_1_aw_payload_lock : std_logic_vector(0 downto 0);
  signal axiMasters_1_writeOnly_decoder_io_outputs_1_aw_payload_cache : std_logic_vector(3 downto 0);
  signal axiMasters_1_writeOnly_decoder_io_outputs_1_aw_payload_qos : std_logic_vector(3 downto 0);
  signal axiMasters_1_writeOnly_decoder_io_outputs_1_aw_payload_prot : std_logic_vector(2 downto 0);
  signal axiMasters_1_writeOnly_decoder_io_outputs_1_w_valid : std_logic;
  signal axiMasters_1_writeOnly_decoder_io_outputs_1_w_payload_data : std_logic_vector(31 downto 0);
  signal axiMasters_1_writeOnly_decoder_io_outputs_1_w_payload_strb : std_logic_vector(3 downto 0);
  signal axiMasters_1_writeOnly_decoder_io_outputs_1_w_payload_last : std_logic;
  signal axiMasters_1_writeOnly_decoder_io_outputs_1_b_ready : std_logic;
  signal axiMasters_1_writeOnly_decoder_io_outputs_2_aw_valid : std_logic;
  signal axiMasters_1_writeOnly_decoder_io_outputs_2_aw_payload_addr : unsigned(12 downto 0);
  signal axiMasters_1_writeOnly_decoder_io_outputs_2_aw_payload_id : unsigned(3 downto 0);
  signal axiMasters_1_writeOnly_decoder_io_outputs_2_aw_payload_region : std_logic_vector(3 downto 0);
  signal axiMasters_1_writeOnly_decoder_io_outputs_2_aw_payload_len : unsigned(7 downto 0);
  signal axiMasters_1_writeOnly_decoder_io_outputs_2_aw_payload_size : unsigned(2 downto 0);
  signal axiMasters_1_writeOnly_decoder_io_outputs_2_aw_payload_burst : std_logic_vector(1 downto 0);
  signal axiMasters_1_writeOnly_decoder_io_outputs_2_aw_payload_lock : std_logic_vector(0 downto 0);
  signal axiMasters_1_writeOnly_decoder_io_outputs_2_aw_payload_cache : std_logic_vector(3 downto 0);
  signal axiMasters_1_writeOnly_decoder_io_outputs_2_aw_payload_qos : std_logic_vector(3 downto 0);
  signal axiMasters_1_writeOnly_decoder_io_outputs_2_aw_payload_prot : std_logic_vector(2 downto 0);
  signal axiMasters_1_writeOnly_decoder_io_outputs_2_w_valid : std_logic;
  signal axiMasters_1_writeOnly_decoder_io_outputs_2_w_payload_data : std_logic_vector(31 downto 0);
  signal axiMasters_1_writeOnly_decoder_io_outputs_2_w_payload_strb : std_logic_vector(3 downto 0);
  signal axiMasters_1_writeOnly_decoder_io_outputs_2_w_payload_last : std_logic;
  signal axiMasters_1_writeOnly_decoder_io_outputs_2_b_ready : std_logic;
  signal axiMasters_2_readOnly_decoder_io_input_ar_ready : std_logic;
  signal axiMasters_2_readOnly_decoder_io_input_r_valid : std_logic;
  signal axiMasters_2_readOnly_decoder_io_input_r_payload_data : std_logic_vector(31 downto 0);
  signal axiMasters_2_readOnly_decoder_io_input_r_payload_id : unsigned(3 downto 0);
  signal axiMasters_2_readOnly_decoder_io_input_r_payload_resp : std_logic_vector(1 downto 0);
  signal axiMasters_2_readOnly_decoder_io_input_r_payload_last : std_logic;
  signal axiMasters_2_readOnly_decoder_io_outputs_0_ar_valid : std_logic;
  signal axiMasters_2_readOnly_decoder_io_outputs_0_ar_payload_addr : unsigned(12 downto 0);
  signal axiMasters_2_readOnly_decoder_io_outputs_0_ar_payload_id : unsigned(3 downto 0);
  signal axiMasters_2_readOnly_decoder_io_outputs_0_ar_payload_region : std_logic_vector(3 downto 0);
  signal axiMasters_2_readOnly_decoder_io_outputs_0_ar_payload_len : unsigned(7 downto 0);
  signal axiMasters_2_readOnly_decoder_io_outputs_0_ar_payload_size : unsigned(2 downto 0);
  signal axiMasters_2_readOnly_decoder_io_outputs_0_ar_payload_burst : std_logic_vector(1 downto 0);
  signal axiMasters_2_readOnly_decoder_io_outputs_0_ar_payload_lock : std_logic_vector(0 downto 0);
  signal axiMasters_2_readOnly_decoder_io_outputs_0_ar_payload_cache : std_logic_vector(3 downto 0);
  signal axiMasters_2_readOnly_decoder_io_outputs_0_ar_payload_qos : std_logic_vector(3 downto 0);
  signal axiMasters_2_readOnly_decoder_io_outputs_0_ar_payload_prot : std_logic_vector(2 downto 0);
  signal axiMasters_2_readOnly_decoder_io_outputs_0_r_ready : std_logic;
  signal axiMasters_2_readOnly_decoder_io_outputs_1_ar_valid : std_logic;
  signal axiMasters_2_readOnly_decoder_io_outputs_1_ar_payload_addr : unsigned(12 downto 0);
  signal axiMasters_2_readOnly_decoder_io_outputs_1_ar_payload_id : unsigned(3 downto 0);
  signal axiMasters_2_readOnly_decoder_io_outputs_1_ar_payload_region : std_logic_vector(3 downto 0);
  signal axiMasters_2_readOnly_decoder_io_outputs_1_ar_payload_len : unsigned(7 downto 0);
  signal axiMasters_2_readOnly_decoder_io_outputs_1_ar_payload_size : unsigned(2 downto 0);
  signal axiMasters_2_readOnly_decoder_io_outputs_1_ar_payload_burst : std_logic_vector(1 downto 0);
  signal axiMasters_2_readOnly_decoder_io_outputs_1_ar_payload_lock : std_logic_vector(0 downto 0);
  signal axiMasters_2_readOnly_decoder_io_outputs_1_ar_payload_cache : std_logic_vector(3 downto 0);
  signal axiMasters_2_readOnly_decoder_io_outputs_1_ar_payload_qos : std_logic_vector(3 downto 0);
  signal axiMasters_2_readOnly_decoder_io_outputs_1_ar_payload_prot : std_logic_vector(2 downto 0);
  signal axiMasters_2_readOnly_decoder_io_outputs_1_r_ready : std_logic;
  signal axiMasters_2_readOnly_decoder_io_outputs_2_ar_valid : std_logic;
  signal axiMasters_2_readOnly_decoder_io_outputs_2_ar_payload_addr : unsigned(12 downto 0);
  signal axiMasters_2_readOnly_decoder_io_outputs_2_ar_payload_id : unsigned(3 downto 0);
  signal axiMasters_2_readOnly_decoder_io_outputs_2_ar_payload_region : std_logic_vector(3 downto 0);
  signal axiMasters_2_readOnly_decoder_io_outputs_2_ar_payload_len : unsigned(7 downto 0);
  signal axiMasters_2_readOnly_decoder_io_outputs_2_ar_payload_size : unsigned(2 downto 0);
  signal axiMasters_2_readOnly_decoder_io_outputs_2_ar_payload_burst : std_logic_vector(1 downto 0);
  signal axiMasters_2_readOnly_decoder_io_outputs_2_ar_payload_lock : std_logic_vector(0 downto 0);
  signal axiMasters_2_readOnly_decoder_io_outputs_2_ar_payload_cache : std_logic_vector(3 downto 0);
  signal axiMasters_2_readOnly_decoder_io_outputs_2_ar_payload_qos : std_logic_vector(3 downto 0);
  signal axiMasters_2_readOnly_decoder_io_outputs_2_ar_payload_prot : std_logic_vector(2 downto 0);
  signal axiMasters_2_readOnly_decoder_io_outputs_2_r_ready : std_logic;
  signal axiMasters_2_writeOnly_decoder_io_input_aw_ready : std_logic;
  signal axiMasters_2_writeOnly_decoder_io_input_w_ready : std_logic;
  signal axiMasters_2_writeOnly_decoder_io_input_b_valid : std_logic;
  signal axiMasters_2_writeOnly_decoder_io_input_b_payload_id : unsigned(3 downto 0);
  signal axiMasters_2_writeOnly_decoder_io_input_b_payload_resp : std_logic_vector(1 downto 0);
  signal axiMasters_2_writeOnly_decoder_io_outputs_0_aw_valid : std_logic;
  signal axiMasters_2_writeOnly_decoder_io_outputs_0_aw_payload_addr : unsigned(12 downto 0);
  signal axiMasters_2_writeOnly_decoder_io_outputs_0_aw_payload_id : unsigned(3 downto 0);
  signal axiMasters_2_writeOnly_decoder_io_outputs_0_aw_payload_region : std_logic_vector(3 downto 0);
  signal axiMasters_2_writeOnly_decoder_io_outputs_0_aw_payload_len : unsigned(7 downto 0);
  signal axiMasters_2_writeOnly_decoder_io_outputs_0_aw_payload_size : unsigned(2 downto 0);
  signal axiMasters_2_writeOnly_decoder_io_outputs_0_aw_payload_burst : std_logic_vector(1 downto 0);
  signal axiMasters_2_writeOnly_decoder_io_outputs_0_aw_payload_lock : std_logic_vector(0 downto 0);
  signal axiMasters_2_writeOnly_decoder_io_outputs_0_aw_payload_cache : std_logic_vector(3 downto 0);
  signal axiMasters_2_writeOnly_decoder_io_outputs_0_aw_payload_qos : std_logic_vector(3 downto 0);
  signal axiMasters_2_writeOnly_decoder_io_outputs_0_aw_payload_prot : std_logic_vector(2 downto 0);
  signal axiMasters_2_writeOnly_decoder_io_outputs_0_w_valid : std_logic;
  signal axiMasters_2_writeOnly_decoder_io_outputs_0_w_payload_data : std_logic_vector(31 downto 0);
  signal axiMasters_2_writeOnly_decoder_io_outputs_0_w_payload_strb : std_logic_vector(3 downto 0);
  signal axiMasters_2_writeOnly_decoder_io_outputs_0_w_payload_last : std_logic;
  signal axiMasters_2_writeOnly_decoder_io_outputs_0_b_ready : std_logic;
  signal axiMasters_2_writeOnly_decoder_io_outputs_1_aw_valid : std_logic;
  signal axiMasters_2_writeOnly_decoder_io_outputs_1_aw_payload_addr : unsigned(12 downto 0);
  signal axiMasters_2_writeOnly_decoder_io_outputs_1_aw_payload_id : unsigned(3 downto 0);
  signal axiMasters_2_writeOnly_decoder_io_outputs_1_aw_payload_region : std_logic_vector(3 downto 0);
  signal axiMasters_2_writeOnly_decoder_io_outputs_1_aw_payload_len : unsigned(7 downto 0);
  signal axiMasters_2_writeOnly_decoder_io_outputs_1_aw_payload_size : unsigned(2 downto 0);
  signal axiMasters_2_writeOnly_decoder_io_outputs_1_aw_payload_burst : std_logic_vector(1 downto 0);
  signal axiMasters_2_writeOnly_decoder_io_outputs_1_aw_payload_lock : std_logic_vector(0 downto 0);
  signal axiMasters_2_writeOnly_decoder_io_outputs_1_aw_payload_cache : std_logic_vector(3 downto 0);
  signal axiMasters_2_writeOnly_decoder_io_outputs_1_aw_payload_qos : std_logic_vector(3 downto 0);
  signal axiMasters_2_writeOnly_decoder_io_outputs_1_aw_payload_prot : std_logic_vector(2 downto 0);
  signal axiMasters_2_writeOnly_decoder_io_outputs_1_w_valid : std_logic;
  signal axiMasters_2_writeOnly_decoder_io_outputs_1_w_payload_data : std_logic_vector(31 downto 0);
  signal axiMasters_2_writeOnly_decoder_io_outputs_1_w_payload_strb : std_logic_vector(3 downto 0);
  signal axiMasters_2_writeOnly_decoder_io_outputs_1_w_payload_last : std_logic;
  signal axiMasters_2_writeOnly_decoder_io_outputs_1_b_ready : std_logic;
  signal axiMasters_2_writeOnly_decoder_io_outputs_2_aw_valid : std_logic;
  signal axiMasters_2_writeOnly_decoder_io_outputs_2_aw_payload_addr : unsigned(12 downto 0);
  signal axiMasters_2_writeOnly_decoder_io_outputs_2_aw_payload_id : unsigned(3 downto 0);
  signal axiMasters_2_writeOnly_decoder_io_outputs_2_aw_payload_region : std_logic_vector(3 downto 0);
  signal axiMasters_2_writeOnly_decoder_io_outputs_2_aw_payload_len : unsigned(7 downto 0);
  signal axiMasters_2_writeOnly_decoder_io_outputs_2_aw_payload_size : unsigned(2 downto 0);
  signal axiMasters_2_writeOnly_decoder_io_outputs_2_aw_payload_burst : std_logic_vector(1 downto 0);
  signal axiMasters_2_writeOnly_decoder_io_outputs_2_aw_payload_lock : std_logic_vector(0 downto 0);
  signal axiMasters_2_writeOnly_decoder_io_outputs_2_aw_payload_cache : std_logic_vector(3 downto 0);
  signal axiMasters_2_writeOnly_decoder_io_outputs_2_aw_payload_qos : std_logic_vector(3 downto 0);
  signal axiMasters_2_writeOnly_decoder_io_outputs_2_aw_payload_prot : std_logic_vector(2 downto 0);
  signal axiMasters_2_writeOnly_decoder_io_outputs_2_w_valid : std_logic;
  signal axiMasters_2_writeOnly_decoder_io_outputs_2_w_payload_data : std_logic_vector(31 downto 0);
  signal axiMasters_2_writeOnly_decoder_io_outputs_2_w_payload_strb : std_logic_vector(3 downto 0);
  signal axiMasters_2_writeOnly_decoder_io_outputs_2_w_payload_last : std_logic;
  signal axiMasters_2_writeOnly_decoder_io_outputs_2_b_ready : std_logic;
  signal axiSlaves_0_readOnly_arbiter_io_inputs_0_ar_ready : std_logic;
  signal axiSlaves_0_readOnly_arbiter_io_inputs_0_r_valid : std_logic;
  signal axiSlaves_0_readOnly_arbiter_io_inputs_0_r_payload_data : std_logic_vector(31 downto 0);
  signal axiSlaves_0_readOnly_arbiter_io_inputs_0_r_payload_id : unsigned(4 downto 0);
  signal axiSlaves_0_readOnly_arbiter_io_inputs_0_r_payload_resp : std_logic_vector(1 downto 0);
  signal axiSlaves_0_readOnly_arbiter_io_inputs_0_r_payload_last : std_logic;
  signal axiSlaves_0_readOnly_arbiter_io_inputs_1_ar_ready : std_logic;
  signal axiSlaves_0_readOnly_arbiter_io_inputs_1_r_valid : std_logic;
  signal axiSlaves_0_readOnly_arbiter_io_inputs_1_r_payload_data : std_logic_vector(31 downto 0);
  signal axiSlaves_0_readOnly_arbiter_io_inputs_1_r_payload_id : unsigned(4 downto 0);
  signal axiSlaves_0_readOnly_arbiter_io_inputs_1_r_payload_resp : std_logic_vector(1 downto 0);
  signal axiSlaves_0_readOnly_arbiter_io_inputs_1_r_payload_last : std_logic;
  signal axiSlaves_0_readOnly_arbiter_io_output_ar_valid : std_logic;
  signal axiSlaves_0_readOnly_arbiter_io_output_ar_payload_addr : unsigned(12 downto 0);
  signal axiSlaves_0_readOnly_arbiter_io_output_ar_payload_id : unsigned(5 downto 0);
  signal axiSlaves_0_readOnly_arbiter_io_output_ar_payload_region : std_logic_vector(3 downto 0);
  signal axiSlaves_0_readOnly_arbiter_io_output_ar_payload_len : unsigned(7 downto 0);
  signal axiSlaves_0_readOnly_arbiter_io_output_ar_payload_size : unsigned(2 downto 0);
  signal axiSlaves_0_readOnly_arbiter_io_output_ar_payload_burst : std_logic_vector(1 downto 0);
  signal axiSlaves_0_readOnly_arbiter_io_output_ar_payload_lock : std_logic_vector(0 downto 0);
  signal axiSlaves_0_readOnly_arbiter_io_output_ar_payload_cache : std_logic_vector(3 downto 0);
  signal axiSlaves_0_readOnly_arbiter_io_output_ar_payload_qos : std_logic_vector(3 downto 0);
  signal axiSlaves_0_readOnly_arbiter_io_output_ar_payload_prot : std_logic_vector(2 downto 0);
  signal axiSlaves_0_readOnly_arbiter_io_output_r_ready : std_logic;
  signal axiSlaves_0_writeOnly_arbiter_io_inputs_0_aw_ready : std_logic;
  signal axiSlaves_0_writeOnly_arbiter_io_inputs_0_w_ready : std_logic;
  signal axiSlaves_0_writeOnly_arbiter_io_inputs_0_b_valid : std_logic;
  signal axiSlaves_0_writeOnly_arbiter_io_inputs_0_b_payload_id : unsigned(4 downto 0);
  signal axiSlaves_0_writeOnly_arbiter_io_inputs_0_b_payload_resp : std_logic_vector(1 downto 0);
  signal axiSlaves_0_writeOnly_arbiter_io_inputs_1_aw_ready : std_logic;
  signal axiSlaves_0_writeOnly_arbiter_io_inputs_1_w_ready : std_logic;
  signal axiSlaves_0_writeOnly_arbiter_io_inputs_1_b_valid : std_logic;
  signal axiSlaves_0_writeOnly_arbiter_io_inputs_1_b_payload_id : unsigned(4 downto 0);
  signal axiSlaves_0_writeOnly_arbiter_io_inputs_1_b_payload_resp : std_logic_vector(1 downto 0);
  signal axiSlaves_0_writeOnly_arbiter_io_output_aw_valid : std_logic;
  signal axiSlaves_0_writeOnly_arbiter_io_output_aw_payload_addr : unsigned(12 downto 0);
  signal axiSlaves_0_writeOnly_arbiter_io_output_aw_payload_id : unsigned(5 downto 0);
  signal axiSlaves_0_writeOnly_arbiter_io_output_aw_payload_region : std_logic_vector(3 downto 0);
  signal axiSlaves_0_writeOnly_arbiter_io_output_aw_payload_len : unsigned(7 downto 0);
  signal axiSlaves_0_writeOnly_arbiter_io_output_aw_payload_size : unsigned(2 downto 0);
  signal axiSlaves_0_writeOnly_arbiter_io_output_aw_payload_burst : std_logic_vector(1 downto 0);
  signal axiSlaves_0_writeOnly_arbiter_io_output_aw_payload_lock : std_logic_vector(0 downto 0);
  signal axiSlaves_0_writeOnly_arbiter_io_output_aw_payload_cache : std_logic_vector(3 downto 0);
  signal axiSlaves_0_writeOnly_arbiter_io_output_aw_payload_qos : std_logic_vector(3 downto 0);
  signal axiSlaves_0_writeOnly_arbiter_io_output_aw_payload_prot : std_logic_vector(2 downto 0);
  signal axiSlaves_0_writeOnly_arbiter_io_output_w_valid : std_logic;
  signal axiSlaves_0_writeOnly_arbiter_io_output_w_payload_data : std_logic_vector(31 downto 0);
  signal axiSlaves_0_writeOnly_arbiter_io_output_w_payload_strb : std_logic_vector(3 downto 0);
  signal axiSlaves_0_writeOnly_arbiter_io_output_w_payload_last : std_logic;
  signal axiSlaves_0_writeOnly_arbiter_io_output_b_ready : std_logic;
  signal axiSlaves_1_readOnly_arbiter_io_inputs_0_ar_ready : std_logic;
  signal axiSlaves_1_readOnly_arbiter_io_inputs_0_r_valid : std_logic;
  signal axiSlaves_1_readOnly_arbiter_io_inputs_0_r_payload_data : std_logic_vector(31 downto 0);
  signal axiSlaves_1_readOnly_arbiter_io_inputs_0_r_payload_id : unsigned(4 downto 0);
  signal axiSlaves_1_readOnly_arbiter_io_inputs_0_r_payload_resp : std_logic_vector(1 downto 0);
  signal axiSlaves_1_readOnly_arbiter_io_inputs_0_r_payload_last : std_logic;
  signal axiSlaves_1_readOnly_arbiter_io_inputs_1_ar_ready : std_logic;
  signal axiSlaves_1_readOnly_arbiter_io_inputs_1_r_valid : std_logic;
  signal axiSlaves_1_readOnly_arbiter_io_inputs_1_r_payload_data : std_logic_vector(31 downto 0);
  signal axiSlaves_1_readOnly_arbiter_io_inputs_1_r_payload_id : unsigned(4 downto 0);
  signal axiSlaves_1_readOnly_arbiter_io_inputs_1_r_payload_resp : std_logic_vector(1 downto 0);
  signal axiSlaves_1_readOnly_arbiter_io_inputs_1_r_payload_last : std_logic;
  signal axiSlaves_1_readOnly_arbiter_io_output_ar_valid : std_logic;
  signal axiSlaves_1_readOnly_arbiter_io_output_ar_payload_addr : unsigned(12 downto 0);
  signal axiSlaves_1_readOnly_arbiter_io_output_ar_payload_id : unsigned(5 downto 0);
  signal axiSlaves_1_readOnly_arbiter_io_output_ar_payload_region : std_logic_vector(3 downto 0);
  signal axiSlaves_1_readOnly_arbiter_io_output_ar_payload_len : unsigned(7 downto 0);
  signal axiSlaves_1_readOnly_arbiter_io_output_ar_payload_size : unsigned(2 downto 0);
  signal axiSlaves_1_readOnly_arbiter_io_output_ar_payload_burst : std_logic_vector(1 downto 0);
  signal axiSlaves_1_readOnly_arbiter_io_output_ar_payload_lock : std_logic_vector(0 downto 0);
  signal axiSlaves_1_readOnly_arbiter_io_output_ar_payload_cache : std_logic_vector(3 downto 0);
  signal axiSlaves_1_readOnly_arbiter_io_output_ar_payload_qos : std_logic_vector(3 downto 0);
  signal axiSlaves_1_readOnly_arbiter_io_output_ar_payload_prot : std_logic_vector(2 downto 0);
  signal axiSlaves_1_readOnly_arbiter_io_output_r_ready : std_logic;
  signal axiSlaves_1_writeOnly_arbiter_io_inputs_0_aw_ready : std_logic;
  signal axiSlaves_1_writeOnly_arbiter_io_inputs_0_w_ready : std_logic;
  signal axiSlaves_1_writeOnly_arbiter_io_inputs_0_b_valid : std_logic;
  signal axiSlaves_1_writeOnly_arbiter_io_inputs_0_b_payload_id : unsigned(4 downto 0);
  signal axiSlaves_1_writeOnly_arbiter_io_inputs_0_b_payload_resp : std_logic_vector(1 downto 0);
  signal axiSlaves_1_writeOnly_arbiter_io_inputs_1_aw_ready : std_logic;
  signal axiSlaves_1_writeOnly_arbiter_io_inputs_1_w_ready : std_logic;
  signal axiSlaves_1_writeOnly_arbiter_io_inputs_1_b_valid : std_logic;
  signal axiSlaves_1_writeOnly_arbiter_io_inputs_1_b_payload_id : unsigned(4 downto 0);
  signal axiSlaves_1_writeOnly_arbiter_io_inputs_1_b_payload_resp : std_logic_vector(1 downto 0);
  signal axiSlaves_1_writeOnly_arbiter_io_output_aw_valid : std_logic;
  signal axiSlaves_1_writeOnly_arbiter_io_output_aw_payload_addr : unsigned(12 downto 0);
  signal axiSlaves_1_writeOnly_arbiter_io_output_aw_payload_id : unsigned(5 downto 0);
  signal axiSlaves_1_writeOnly_arbiter_io_output_aw_payload_region : std_logic_vector(3 downto 0);
  signal axiSlaves_1_writeOnly_arbiter_io_output_aw_payload_len : unsigned(7 downto 0);
  signal axiSlaves_1_writeOnly_arbiter_io_output_aw_payload_size : unsigned(2 downto 0);
  signal axiSlaves_1_writeOnly_arbiter_io_output_aw_payload_burst : std_logic_vector(1 downto 0);
  signal axiSlaves_1_writeOnly_arbiter_io_output_aw_payload_lock : std_logic_vector(0 downto 0);
  signal axiSlaves_1_writeOnly_arbiter_io_output_aw_payload_cache : std_logic_vector(3 downto 0);
  signal axiSlaves_1_writeOnly_arbiter_io_output_aw_payload_qos : std_logic_vector(3 downto 0);
  signal axiSlaves_1_writeOnly_arbiter_io_output_aw_payload_prot : std_logic_vector(2 downto 0);
  signal axiSlaves_1_writeOnly_arbiter_io_output_w_valid : std_logic;
  signal axiSlaves_1_writeOnly_arbiter_io_output_w_payload_data : std_logic_vector(31 downto 0);
  signal axiSlaves_1_writeOnly_arbiter_io_output_w_payload_strb : std_logic_vector(3 downto 0);
  signal axiSlaves_1_writeOnly_arbiter_io_output_w_payload_last : std_logic;
  signal axiSlaves_1_writeOnly_arbiter_io_output_b_ready : std_logic;
  signal axiSlaves_2_readOnly_arbiter_io_inputs_0_ar_ready : std_logic;
  signal axiSlaves_2_readOnly_arbiter_io_inputs_0_r_valid : std_logic;
  signal axiSlaves_2_readOnly_arbiter_io_inputs_0_r_payload_data : std_logic_vector(31 downto 0);
  signal axiSlaves_2_readOnly_arbiter_io_inputs_0_r_payload_id : unsigned(4 downto 0);
  signal axiSlaves_2_readOnly_arbiter_io_inputs_0_r_payload_resp : std_logic_vector(1 downto 0);
  signal axiSlaves_2_readOnly_arbiter_io_inputs_0_r_payload_last : std_logic;
  signal axiSlaves_2_readOnly_arbiter_io_inputs_1_ar_ready : std_logic;
  signal axiSlaves_2_readOnly_arbiter_io_inputs_1_r_valid : std_logic;
  signal axiSlaves_2_readOnly_arbiter_io_inputs_1_r_payload_data : std_logic_vector(31 downto 0);
  signal axiSlaves_2_readOnly_arbiter_io_inputs_1_r_payload_id : unsigned(4 downto 0);
  signal axiSlaves_2_readOnly_arbiter_io_inputs_1_r_payload_resp : std_logic_vector(1 downto 0);
  signal axiSlaves_2_readOnly_arbiter_io_inputs_1_r_payload_last : std_logic;
  signal axiSlaves_2_readOnly_arbiter_io_output_ar_valid : std_logic;
  signal axiSlaves_2_readOnly_arbiter_io_output_ar_payload_addr : unsigned(12 downto 0);
  signal axiSlaves_2_readOnly_arbiter_io_output_ar_payload_id : unsigned(5 downto 0);
  signal axiSlaves_2_readOnly_arbiter_io_output_ar_payload_region : std_logic_vector(3 downto 0);
  signal axiSlaves_2_readOnly_arbiter_io_output_ar_payload_len : unsigned(7 downto 0);
  signal axiSlaves_2_readOnly_arbiter_io_output_ar_payload_size : unsigned(2 downto 0);
  signal axiSlaves_2_readOnly_arbiter_io_output_ar_payload_burst : std_logic_vector(1 downto 0);
  signal axiSlaves_2_readOnly_arbiter_io_output_ar_payload_lock : std_logic_vector(0 downto 0);
  signal axiSlaves_2_readOnly_arbiter_io_output_ar_payload_cache : std_logic_vector(3 downto 0);
  signal axiSlaves_2_readOnly_arbiter_io_output_ar_payload_qos : std_logic_vector(3 downto 0);
  signal axiSlaves_2_readOnly_arbiter_io_output_ar_payload_prot : std_logic_vector(2 downto 0);
  signal axiSlaves_2_readOnly_arbiter_io_output_r_ready : std_logic;
  signal axiSlaves_2_writeOnly_arbiter_io_inputs_0_aw_ready : std_logic;
  signal axiSlaves_2_writeOnly_arbiter_io_inputs_0_w_ready : std_logic;
  signal axiSlaves_2_writeOnly_arbiter_io_inputs_0_b_valid : std_logic;
  signal axiSlaves_2_writeOnly_arbiter_io_inputs_0_b_payload_id : unsigned(4 downto 0);
  signal axiSlaves_2_writeOnly_arbiter_io_inputs_0_b_payload_resp : std_logic_vector(1 downto 0);
  signal axiSlaves_2_writeOnly_arbiter_io_inputs_1_aw_ready : std_logic;
  signal axiSlaves_2_writeOnly_arbiter_io_inputs_1_w_ready : std_logic;
  signal axiSlaves_2_writeOnly_arbiter_io_inputs_1_b_valid : std_logic;
  signal axiSlaves_2_writeOnly_arbiter_io_inputs_1_b_payload_id : unsigned(4 downto 0);
  signal axiSlaves_2_writeOnly_arbiter_io_inputs_1_b_payload_resp : std_logic_vector(1 downto 0);
  signal axiSlaves_2_writeOnly_arbiter_io_output_aw_valid : std_logic;
  signal axiSlaves_2_writeOnly_arbiter_io_output_aw_payload_addr : unsigned(12 downto 0);
  signal axiSlaves_2_writeOnly_arbiter_io_output_aw_payload_id : unsigned(5 downto 0);
  signal axiSlaves_2_writeOnly_arbiter_io_output_aw_payload_region : std_logic_vector(3 downto 0);
  signal axiSlaves_2_writeOnly_arbiter_io_output_aw_payload_len : unsigned(7 downto 0);
  signal axiSlaves_2_writeOnly_arbiter_io_output_aw_payload_size : unsigned(2 downto 0);
  signal axiSlaves_2_writeOnly_arbiter_io_output_aw_payload_burst : std_logic_vector(1 downto 0);
  signal axiSlaves_2_writeOnly_arbiter_io_output_aw_payload_lock : std_logic_vector(0 downto 0);
  signal axiSlaves_2_writeOnly_arbiter_io_output_aw_payload_cache : std_logic_vector(3 downto 0);
  signal axiSlaves_2_writeOnly_arbiter_io_output_aw_payload_qos : std_logic_vector(3 downto 0);
  signal axiSlaves_2_writeOnly_arbiter_io_output_aw_payload_prot : std_logic_vector(2 downto 0);
  signal axiSlaves_2_writeOnly_arbiter_io_output_w_valid : std_logic;
  signal axiSlaves_2_writeOnly_arbiter_io_output_w_payload_data : std_logic_vector(31 downto 0);
  signal axiSlaves_2_writeOnly_arbiter_io_output_w_payload_strb : std_logic_vector(3 downto 0);
  signal axiSlaves_2_writeOnly_arbiter_io_output_w_payload_last : std_logic;
  signal axiSlaves_2_writeOnly_arbiter_io_output_b_ready : std_logic;
  signal axiSlaves_3_readOnly_arbiter_io_inputs_0_ar_ready : std_logic;
  signal axiSlaves_3_readOnly_arbiter_io_inputs_0_r_valid : std_logic;
  signal axiSlaves_3_readOnly_arbiter_io_inputs_0_r_payload_data : std_logic_vector(31 downto 0);
  signal axiSlaves_3_readOnly_arbiter_io_inputs_0_r_payload_id : unsigned(3 downto 0);
  signal axiSlaves_3_readOnly_arbiter_io_inputs_0_r_payload_resp : std_logic_vector(1 downto 0);
  signal axiSlaves_3_readOnly_arbiter_io_inputs_0_r_payload_last : std_logic;
  signal axiSlaves_3_readOnly_arbiter_io_inputs_1_ar_ready : std_logic;
  signal axiSlaves_3_readOnly_arbiter_io_inputs_1_r_valid : std_logic;
  signal axiSlaves_3_readOnly_arbiter_io_inputs_1_r_payload_data : std_logic_vector(31 downto 0);
  signal axiSlaves_3_readOnly_arbiter_io_inputs_1_r_payload_id : unsigned(3 downto 0);
  signal axiSlaves_3_readOnly_arbiter_io_inputs_1_r_payload_resp : std_logic_vector(1 downto 0);
  signal axiSlaves_3_readOnly_arbiter_io_inputs_1_r_payload_last : std_logic;
  signal axiSlaves_3_readOnly_arbiter_io_inputs_2_ar_ready : std_logic;
  signal axiSlaves_3_readOnly_arbiter_io_inputs_2_r_valid : std_logic;
  signal axiSlaves_3_readOnly_arbiter_io_inputs_2_r_payload_data : std_logic_vector(31 downto 0);
  signal axiSlaves_3_readOnly_arbiter_io_inputs_2_r_payload_id : unsigned(3 downto 0);
  signal axiSlaves_3_readOnly_arbiter_io_inputs_2_r_payload_resp : std_logic_vector(1 downto 0);
  signal axiSlaves_3_readOnly_arbiter_io_inputs_2_r_payload_last : std_logic;
  signal axiSlaves_3_readOnly_arbiter_io_output_ar_valid : std_logic;
  signal axiSlaves_3_readOnly_arbiter_io_output_ar_payload_addr : unsigned(12 downto 0);
  signal axiSlaves_3_readOnly_arbiter_io_output_ar_payload_id : unsigned(5 downto 0);
  signal axiSlaves_3_readOnly_arbiter_io_output_ar_payload_region : std_logic_vector(3 downto 0);
  signal axiSlaves_3_readOnly_arbiter_io_output_ar_payload_len : unsigned(7 downto 0);
  signal axiSlaves_3_readOnly_arbiter_io_output_ar_payload_size : unsigned(2 downto 0);
  signal axiSlaves_3_readOnly_arbiter_io_output_ar_payload_burst : std_logic_vector(1 downto 0);
  signal axiSlaves_3_readOnly_arbiter_io_output_ar_payload_lock : std_logic_vector(0 downto 0);
  signal axiSlaves_3_readOnly_arbiter_io_output_ar_payload_cache : std_logic_vector(3 downto 0);
  signal axiSlaves_3_readOnly_arbiter_io_output_ar_payload_qos : std_logic_vector(3 downto 0);
  signal axiSlaves_3_readOnly_arbiter_io_output_ar_payload_prot : std_logic_vector(2 downto 0);
  signal axiSlaves_3_readOnly_arbiter_io_output_r_ready : std_logic;
  signal axiSlaves_3_writeOnly_arbiter_io_inputs_0_aw_ready : std_logic;
  signal axiSlaves_3_writeOnly_arbiter_io_inputs_0_w_ready : std_logic;
  signal axiSlaves_3_writeOnly_arbiter_io_inputs_0_b_valid : std_logic;
  signal axiSlaves_3_writeOnly_arbiter_io_inputs_0_b_payload_id : unsigned(3 downto 0);
  signal axiSlaves_3_writeOnly_arbiter_io_inputs_0_b_payload_resp : std_logic_vector(1 downto 0);
  signal axiSlaves_3_writeOnly_arbiter_io_inputs_1_aw_ready : std_logic;
  signal axiSlaves_3_writeOnly_arbiter_io_inputs_1_w_ready : std_logic;
  signal axiSlaves_3_writeOnly_arbiter_io_inputs_1_b_valid : std_logic;
  signal axiSlaves_3_writeOnly_arbiter_io_inputs_1_b_payload_id : unsigned(3 downto 0);
  signal axiSlaves_3_writeOnly_arbiter_io_inputs_1_b_payload_resp : std_logic_vector(1 downto 0);
  signal axiSlaves_3_writeOnly_arbiter_io_inputs_2_aw_ready : std_logic;
  signal axiSlaves_3_writeOnly_arbiter_io_inputs_2_w_ready : std_logic;
  signal axiSlaves_3_writeOnly_arbiter_io_inputs_2_b_valid : std_logic;
  signal axiSlaves_3_writeOnly_arbiter_io_inputs_2_b_payload_id : unsigned(3 downto 0);
  signal axiSlaves_3_writeOnly_arbiter_io_inputs_2_b_payload_resp : std_logic_vector(1 downto 0);
  signal axiSlaves_3_writeOnly_arbiter_io_output_aw_valid : std_logic;
  signal axiSlaves_3_writeOnly_arbiter_io_output_aw_payload_addr : unsigned(12 downto 0);
  signal axiSlaves_3_writeOnly_arbiter_io_output_aw_payload_id : unsigned(5 downto 0);
  signal axiSlaves_3_writeOnly_arbiter_io_output_aw_payload_region : std_logic_vector(3 downto 0);
  signal axiSlaves_3_writeOnly_arbiter_io_output_aw_payload_len : unsigned(7 downto 0);
  signal axiSlaves_3_writeOnly_arbiter_io_output_aw_payload_size : unsigned(2 downto 0);
  signal axiSlaves_3_writeOnly_arbiter_io_output_aw_payload_burst : std_logic_vector(1 downto 0);
  signal axiSlaves_3_writeOnly_arbiter_io_output_aw_payload_lock : std_logic_vector(0 downto 0);
  signal axiSlaves_3_writeOnly_arbiter_io_output_aw_payload_cache : std_logic_vector(3 downto 0);
  signal axiSlaves_3_writeOnly_arbiter_io_output_aw_payload_qos : std_logic_vector(3 downto 0);
  signal axiSlaves_3_writeOnly_arbiter_io_output_aw_payload_prot : std_logic_vector(2 downto 0);
  signal axiSlaves_3_writeOnly_arbiter_io_output_w_valid : std_logic;
  signal axiSlaves_3_writeOnly_arbiter_io_output_w_payload_data : std_logic_vector(31 downto 0);
  signal axiSlaves_3_writeOnly_arbiter_io_output_w_payload_strb : std_logic_vector(3 downto 0);
  signal axiSlaves_3_writeOnly_arbiter_io_output_w_payload_last : std_logic;
  signal axiSlaves_3_writeOnly_arbiter_io_output_b_ready : std_logic;

  signal axiSlaves_0_readOnly_ar_valid : std_logic;
  signal axiSlaves_0_readOnly_ar_ready : std_logic;
  signal axiSlaves_0_readOnly_ar_payload_addr : unsigned(12 downto 0);
  signal axiSlaves_0_readOnly_ar_payload_id : unsigned(5 downto 0);
  signal axiSlaves_0_readOnly_ar_payload_region : std_logic_vector(3 downto 0);
  signal axiSlaves_0_readOnly_ar_payload_len : unsigned(7 downto 0);
  signal axiSlaves_0_readOnly_ar_payload_size : unsigned(2 downto 0);
  signal axiSlaves_0_readOnly_ar_payload_burst : std_logic_vector(1 downto 0);
  signal axiSlaves_0_readOnly_ar_payload_lock : std_logic_vector(0 downto 0);
  signal axiSlaves_0_readOnly_ar_payload_cache : std_logic_vector(3 downto 0);
  signal axiSlaves_0_readOnly_ar_payload_qos : std_logic_vector(3 downto 0);
  signal axiSlaves_0_readOnly_ar_payload_prot : std_logic_vector(2 downto 0);
  signal axiSlaves_0_readOnly_r_valid : std_logic;
  signal axiSlaves_0_readOnly_r_ready : std_logic;
  signal axiSlaves_0_readOnly_r_payload_data : std_logic_vector(31 downto 0);
  signal axiSlaves_0_readOnly_r_payload_id : unsigned(5 downto 0);
  signal axiSlaves_0_readOnly_r_payload_resp : std_logic_vector(1 downto 0);
  signal axiSlaves_0_readOnly_r_payload_last : std_logic;
  signal axiSlaves_0_writeOnly_aw_valid : std_logic;
  signal axiSlaves_0_writeOnly_aw_ready : std_logic;
  signal axiSlaves_0_writeOnly_aw_payload_addr : unsigned(12 downto 0);
  signal axiSlaves_0_writeOnly_aw_payload_id : unsigned(5 downto 0);
  signal axiSlaves_0_writeOnly_aw_payload_region : std_logic_vector(3 downto 0);
  signal axiSlaves_0_writeOnly_aw_payload_len : unsigned(7 downto 0);
  signal axiSlaves_0_writeOnly_aw_payload_size : unsigned(2 downto 0);
  signal axiSlaves_0_writeOnly_aw_payload_burst : std_logic_vector(1 downto 0);
  signal axiSlaves_0_writeOnly_aw_payload_lock : std_logic_vector(0 downto 0);
  signal axiSlaves_0_writeOnly_aw_payload_cache : std_logic_vector(3 downto 0);
  signal axiSlaves_0_writeOnly_aw_payload_qos : std_logic_vector(3 downto 0);
  signal axiSlaves_0_writeOnly_aw_payload_prot : std_logic_vector(2 downto 0);
  signal axiSlaves_0_writeOnly_w_valid : std_logic;
  signal axiSlaves_0_writeOnly_w_ready : std_logic;
  signal axiSlaves_0_writeOnly_w_payload_data : std_logic_vector(31 downto 0);
  signal axiSlaves_0_writeOnly_w_payload_strb : std_logic_vector(3 downto 0);
  signal axiSlaves_0_writeOnly_w_payload_last : std_logic;
  signal axiSlaves_0_writeOnly_b_valid : std_logic;
  signal axiSlaves_0_writeOnly_b_ready : std_logic;
  signal axiSlaves_0_writeOnly_b_payload_id : unsigned(5 downto 0);
  signal axiSlaves_0_writeOnly_b_payload_resp : std_logic_vector(1 downto 0);
  signal axiSlaves_1_readOnly_ar_valid : std_logic;
  signal axiSlaves_1_readOnly_ar_ready : std_logic;
  signal axiSlaves_1_readOnly_ar_payload_addr : unsigned(12 downto 0);
  signal axiSlaves_1_readOnly_ar_payload_id : unsigned(5 downto 0);
  signal axiSlaves_1_readOnly_ar_payload_region : std_logic_vector(3 downto 0);
  signal axiSlaves_1_readOnly_ar_payload_len : unsigned(7 downto 0);
  signal axiSlaves_1_readOnly_ar_payload_size : unsigned(2 downto 0);
  signal axiSlaves_1_readOnly_ar_payload_burst : std_logic_vector(1 downto 0);
  signal axiSlaves_1_readOnly_ar_payload_lock : std_logic_vector(0 downto 0);
  signal axiSlaves_1_readOnly_ar_payload_cache : std_logic_vector(3 downto 0);
  signal axiSlaves_1_readOnly_ar_payload_qos : std_logic_vector(3 downto 0);
  signal axiSlaves_1_readOnly_ar_payload_prot : std_logic_vector(2 downto 0);
  signal axiSlaves_1_readOnly_r_valid : std_logic;
  signal axiSlaves_1_readOnly_r_ready : std_logic;
  signal axiSlaves_1_readOnly_r_payload_data : std_logic_vector(31 downto 0);
  signal axiSlaves_1_readOnly_r_payload_id : unsigned(5 downto 0);
  signal axiSlaves_1_readOnly_r_payload_resp : std_logic_vector(1 downto 0);
  signal axiSlaves_1_readOnly_r_payload_last : std_logic;
  signal axiSlaves_1_writeOnly_aw_valid : std_logic;
  signal axiSlaves_1_writeOnly_aw_ready : std_logic;
  signal axiSlaves_1_writeOnly_aw_payload_addr : unsigned(12 downto 0);
  signal axiSlaves_1_writeOnly_aw_payload_id : unsigned(5 downto 0);
  signal axiSlaves_1_writeOnly_aw_payload_region : std_logic_vector(3 downto 0);
  signal axiSlaves_1_writeOnly_aw_payload_len : unsigned(7 downto 0);
  signal axiSlaves_1_writeOnly_aw_payload_size : unsigned(2 downto 0);
  signal axiSlaves_1_writeOnly_aw_payload_burst : std_logic_vector(1 downto 0);
  signal axiSlaves_1_writeOnly_aw_payload_lock : std_logic_vector(0 downto 0);
  signal axiSlaves_1_writeOnly_aw_payload_cache : std_logic_vector(3 downto 0);
  signal axiSlaves_1_writeOnly_aw_payload_qos : std_logic_vector(3 downto 0);
  signal axiSlaves_1_writeOnly_aw_payload_prot : std_logic_vector(2 downto 0);
  signal axiSlaves_1_writeOnly_w_valid : std_logic;
  signal axiSlaves_1_writeOnly_w_ready : std_logic;
  signal axiSlaves_1_writeOnly_w_payload_data : std_logic_vector(31 downto 0);
  signal axiSlaves_1_writeOnly_w_payload_strb : std_logic_vector(3 downto 0);
  signal axiSlaves_1_writeOnly_w_payload_last : std_logic;
  signal axiSlaves_1_writeOnly_b_valid : std_logic;
  signal axiSlaves_1_writeOnly_b_ready : std_logic;
  signal axiSlaves_1_writeOnly_b_payload_id : unsigned(5 downto 0);
  signal axiSlaves_1_writeOnly_b_payload_resp : std_logic_vector(1 downto 0);
  signal axiSlaves_2_readOnly_ar_valid : std_logic;
  signal axiSlaves_2_readOnly_ar_ready : std_logic;
  signal axiSlaves_2_readOnly_ar_payload_addr : unsigned(12 downto 0);
  signal axiSlaves_2_readOnly_ar_payload_id : unsigned(5 downto 0);
  signal axiSlaves_2_readOnly_ar_payload_region : std_logic_vector(3 downto 0);
  signal axiSlaves_2_readOnly_ar_payload_len : unsigned(7 downto 0);
  signal axiSlaves_2_readOnly_ar_payload_size : unsigned(2 downto 0);
  signal axiSlaves_2_readOnly_ar_payload_burst : std_logic_vector(1 downto 0);
  signal axiSlaves_2_readOnly_ar_payload_lock : std_logic_vector(0 downto 0);
  signal axiSlaves_2_readOnly_ar_payload_cache : std_logic_vector(3 downto 0);
  signal axiSlaves_2_readOnly_ar_payload_qos : std_logic_vector(3 downto 0);
  signal axiSlaves_2_readOnly_ar_payload_prot : std_logic_vector(2 downto 0);
  signal axiSlaves_2_readOnly_r_valid : std_logic;
  signal axiSlaves_2_readOnly_r_ready : std_logic;
  signal axiSlaves_2_readOnly_r_payload_data : std_logic_vector(31 downto 0);
  signal axiSlaves_2_readOnly_r_payload_id : unsigned(5 downto 0);
  signal axiSlaves_2_readOnly_r_payload_resp : std_logic_vector(1 downto 0);
  signal axiSlaves_2_readOnly_r_payload_last : std_logic;
  signal axiSlaves_2_writeOnly_aw_valid : std_logic;
  signal axiSlaves_2_writeOnly_aw_ready : std_logic;
  signal axiSlaves_2_writeOnly_aw_payload_addr : unsigned(12 downto 0);
  signal axiSlaves_2_writeOnly_aw_payload_id : unsigned(5 downto 0);
  signal axiSlaves_2_writeOnly_aw_payload_region : std_logic_vector(3 downto 0);
  signal axiSlaves_2_writeOnly_aw_payload_len : unsigned(7 downto 0);
  signal axiSlaves_2_writeOnly_aw_payload_size : unsigned(2 downto 0);
  signal axiSlaves_2_writeOnly_aw_payload_burst : std_logic_vector(1 downto 0);
  signal axiSlaves_2_writeOnly_aw_payload_lock : std_logic_vector(0 downto 0);
  signal axiSlaves_2_writeOnly_aw_payload_cache : std_logic_vector(3 downto 0);
  signal axiSlaves_2_writeOnly_aw_payload_qos : std_logic_vector(3 downto 0);
  signal axiSlaves_2_writeOnly_aw_payload_prot : std_logic_vector(2 downto 0);
  signal axiSlaves_2_writeOnly_w_valid : std_logic;
  signal axiSlaves_2_writeOnly_w_ready : std_logic;
  signal axiSlaves_2_writeOnly_w_payload_data : std_logic_vector(31 downto 0);
  signal axiSlaves_2_writeOnly_w_payload_strb : std_logic_vector(3 downto 0);
  signal axiSlaves_2_writeOnly_w_payload_last : std_logic;
  signal axiSlaves_2_writeOnly_b_valid : std_logic;
  signal axiSlaves_2_writeOnly_b_ready : std_logic;
  signal axiSlaves_2_writeOnly_b_payload_id : unsigned(5 downto 0);
  signal axiSlaves_2_writeOnly_b_payload_resp : std_logic_vector(1 downto 0);
  signal axiSlaves_3_readOnly_ar_valid : std_logic;
  signal axiSlaves_3_readOnly_ar_ready : std_logic;
  signal axiSlaves_3_readOnly_ar_payload_addr : unsigned(12 downto 0);
  signal axiSlaves_3_readOnly_ar_payload_id : unsigned(5 downto 0);
  signal axiSlaves_3_readOnly_ar_payload_region : std_logic_vector(3 downto 0);
  signal axiSlaves_3_readOnly_ar_payload_len : unsigned(7 downto 0);
  signal axiSlaves_3_readOnly_ar_payload_size : unsigned(2 downto 0);
  signal axiSlaves_3_readOnly_ar_payload_burst : std_logic_vector(1 downto 0);
  signal axiSlaves_3_readOnly_ar_payload_lock : std_logic_vector(0 downto 0);
  signal axiSlaves_3_readOnly_ar_payload_cache : std_logic_vector(3 downto 0);
  signal axiSlaves_3_readOnly_ar_payload_qos : std_logic_vector(3 downto 0);
  signal axiSlaves_3_readOnly_ar_payload_prot : std_logic_vector(2 downto 0);
  signal axiSlaves_3_readOnly_r_valid : std_logic;
  signal axiSlaves_3_readOnly_r_ready : std_logic;
  signal axiSlaves_3_readOnly_r_payload_data : std_logic_vector(31 downto 0);
  signal axiSlaves_3_readOnly_r_payload_id : unsigned(5 downto 0);
  signal axiSlaves_3_readOnly_r_payload_resp : std_logic_vector(1 downto 0);
  signal axiSlaves_3_readOnly_r_payload_last : std_logic;
  signal axiSlaves_3_writeOnly_aw_valid : std_logic;
  signal axiSlaves_3_writeOnly_aw_ready : std_logic;
  signal axiSlaves_3_writeOnly_aw_payload_addr : unsigned(12 downto 0);
  signal axiSlaves_3_writeOnly_aw_payload_id : unsigned(5 downto 0);
  signal axiSlaves_3_writeOnly_aw_payload_region : std_logic_vector(3 downto 0);
  signal axiSlaves_3_writeOnly_aw_payload_len : unsigned(7 downto 0);
  signal axiSlaves_3_writeOnly_aw_payload_size : unsigned(2 downto 0);
  signal axiSlaves_3_writeOnly_aw_payload_burst : std_logic_vector(1 downto 0);
  signal axiSlaves_3_writeOnly_aw_payload_lock : std_logic_vector(0 downto 0);
  signal axiSlaves_3_writeOnly_aw_payload_cache : std_logic_vector(3 downto 0);
  signal axiSlaves_3_writeOnly_aw_payload_qos : std_logic_vector(3 downto 0);
  signal axiSlaves_3_writeOnly_aw_payload_prot : std_logic_vector(2 downto 0);
  signal axiSlaves_3_writeOnly_w_valid : std_logic;
  signal axiSlaves_3_writeOnly_w_ready : std_logic;
  signal axiSlaves_3_writeOnly_w_payload_data : std_logic_vector(31 downto 0);
  signal axiSlaves_3_writeOnly_w_payload_strb : std_logic_vector(3 downto 0);
  signal axiSlaves_3_writeOnly_w_payload_last : std_logic;
  signal axiSlaves_3_writeOnly_b_valid : std_logic;
  signal axiSlaves_3_writeOnly_b_ready : std_logic;
  signal axiSlaves_3_writeOnly_b_payload_id : unsigned(5 downto 0);
  signal axiSlaves_3_writeOnly_b_payload_resp : std_logic_vector(1 downto 0);
  signal axiMasters_0_readOnly_ar_valid : std_logic;
  signal axiMasters_0_readOnly_ar_ready : std_logic;
  signal axiMasters_0_readOnly_ar_payload_addr : unsigned(12 downto 0);
  signal axiMasters_0_readOnly_ar_payload_id : unsigned(3 downto 0);
  signal axiMasters_0_readOnly_ar_payload_region : std_logic_vector(3 downto 0);
  signal axiMasters_0_readOnly_ar_payload_len : unsigned(7 downto 0);
  signal axiMasters_0_readOnly_ar_payload_size : unsigned(2 downto 0);
  signal axiMasters_0_readOnly_ar_payload_burst : std_logic_vector(1 downto 0);
  signal axiMasters_0_readOnly_ar_payload_lock : std_logic_vector(0 downto 0);
  signal axiMasters_0_readOnly_ar_payload_cache : std_logic_vector(3 downto 0);
  signal axiMasters_0_readOnly_ar_payload_qos : std_logic_vector(3 downto 0);
  signal axiMasters_0_readOnly_ar_payload_prot : std_logic_vector(2 downto 0);
  signal axiMasters_0_readOnly_r_valid : std_logic;
  signal axiMasters_0_readOnly_r_ready : std_logic;
  signal axiMasters_0_readOnly_r_payload_data : std_logic_vector(31 downto 0);
  signal axiMasters_0_readOnly_r_payload_id : unsigned(3 downto 0);
  signal axiMasters_0_readOnly_r_payload_resp : std_logic_vector(1 downto 0);
  signal axiMasters_0_readOnly_r_payload_last : std_logic;
  signal axiMasters_0_writeOnly_aw_valid : std_logic;
  signal axiMasters_0_writeOnly_aw_ready : std_logic;
  signal axiMasters_0_writeOnly_aw_payload_addr : unsigned(12 downto 0);
  signal axiMasters_0_writeOnly_aw_payload_id : unsigned(3 downto 0);
  signal axiMasters_0_writeOnly_aw_payload_region : std_logic_vector(3 downto 0);
  signal axiMasters_0_writeOnly_aw_payload_len : unsigned(7 downto 0);
  signal axiMasters_0_writeOnly_aw_payload_size : unsigned(2 downto 0);
  signal axiMasters_0_writeOnly_aw_payload_burst : std_logic_vector(1 downto 0);
  signal axiMasters_0_writeOnly_aw_payload_lock : std_logic_vector(0 downto 0);
  signal axiMasters_0_writeOnly_aw_payload_cache : std_logic_vector(3 downto 0);
  signal axiMasters_0_writeOnly_aw_payload_qos : std_logic_vector(3 downto 0);
  signal axiMasters_0_writeOnly_aw_payload_prot : std_logic_vector(2 downto 0);
  signal axiMasters_0_writeOnly_w_valid : std_logic;
  signal axiMasters_0_writeOnly_w_ready : std_logic;
  signal axiMasters_0_writeOnly_w_payload_data : std_logic_vector(31 downto 0);
  signal axiMasters_0_writeOnly_w_payload_strb : std_logic_vector(3 downto 0);
  signal axiMasters_0_writeOnly_w_payload_last : std_logic;
  signal axiMasters_0_writeOnly_b_valid : std_logic;
  signal axiMasters_0_writeOnly_b_ready : std_logic;
  signal axiMasters_0_writeOnly_b_payload_id : unsigned(3 downto 0);
  signal axiMasters_0_writeOnly_b_payload_resp : std_logic_vector(1 downto 0);
  signal axiMasters_1_readOnly_ar_valid : std_logic;
  signal axiMasters_1_readOnly_ar_ready : std_logic;
  signal axiMasters_1_readOnly_ar_payload_addr : unsigned(12 downto 0);
  signal axiMasters_1_readOnly_ar_payload_id : unsigned(3 downto 0);
  signal axiMasters_1_readOnly_ar_payload_region : std_logic_vector(3 downto 0);
  signal axiMasters_1_readOnly_ar_payload_len : unsigned(7 downto 0);
  signal axiMasters_1_readOnly_ar_payload_size : unsigned(2 downto 0);
  signal axiMasters_1_readOnly_ar_payload_burst : std_logic_vector(1 downto 0);
  signal axiMasters_1_readOnly_ar_payload_lock : std_logic_vector(0 downto 0);
  signal axiMasters_1_readOnly_ar_payload_cache : std_logic_vector(3 downto 0);
  signal axiMasters_1_readOnly_ar_payload_qos : std_logic_vector(3 downto 0);
  signal axiMasters_1_readOnly_ar_payload_prot : std_logic_vector(2 downto 0);
  signal axiMasters_1_readOnly_r_valid : std_logic;
  signal axiMasters_1_readOnly_r_ready : std_logic;
  signal axiMasters_1_readOnly_r_payload_data : std_logic_vector(31 downto 0);
  signal axiMasters_1_readOnly_r_payload_id : unsigned(3 downto 0);
  signal axiMasters_1_readOnly_r_payload_resp : std_logic_vector(1 downto 0);
  signal axiMasters_1_readOnly_r_payload_last : std_logic;
  signal axiMasters_1_writeOnly_aw_valid : std_logic;
  signal axiMasters_1_writeOnly_aw_ready : std_logic;
  signal axiMasters_1_writeOnly_aw_payload_addr : unsigned(12 downto 0);
  signal axiMasters_1_writeOnly_aw_payload_id : unsigned(3 downto 0);
  signal axiMasters_1_writeOnly_aw_payload_region : std_logic_vector(3 downto 0);
  signal axiMasters_1_writeOnly_aw_payload_len : unsigned(7 downto 0);
  signal axiMasters_1_writeOnly_aw_payload_size : unsigned(2 downto 0);
  signal axiMasters_1_writeOnly_aw_payload_burst : std_logic_vector(1 downto 0);
  signal axiMasters_1_writeOnly_aw_payload_lock : std_logic_vector(0 downto 0);
  signal axiMasters_1_writeOnly_aw_payload_cache : std_logic_vector(3 downto 0);
  signal axiMasters_1_writeOnly_aw_payload_qos : std_logic_vector(3 downto 0);
  signal axiMasters_1_writeOnly_aw_payload_prot : std_logic_vector(2 downto 0);
  signal axiMasters_1_writeOnly_w_valid : std_logic;
  signal axiMasters_1_writeOnly_w_ready : std_logic;
  signal axiMasters_1_writeOnly_w_payload_data : std_logic_vector(31 downto 0);
  signal axiMasters_1_writeOnly_w_payload_strb : std_logic_vector(3 downto 0);
  signal axiMasters_1_writeOnly_w_payload_last : std_logic;
  signal axiMasters_1_writeOnly_b_valid : std_logic;
  signal axiMasters_1_writeOnly_b_ready : std_logic;
  signal axiMasters_1_writeOnly_b_payload_id : unsigned(3 downto 0);
  signal axiMasters_1_writeOnly_b_payload_resp : std_logic_vector(1 downto 0);
  signal axiMasters_2_readOnly_ar_valid : std_logic;
  signal axiMasters_2_readOnly_ar_ready : std_logic;
  signal axiMasters_2_readOnly_ar_payload_addr : unsigned(12 downto 0);
  signal axiMasters_2_readOnly_ar_payload_id : unsigned(3 downto 0);
  signal axiMasters_2_readOnly_ar_payload_region : std_logic_vector(3 downto 0);
  signal axiMasters_2_readOnly_ar_payload_len : unsigned(7 downto 0);
  signal axiMasters_2_readOnly_ar_payload_size : unsigned(2 downto 0);
  signal axiMasters_2_readOnly_ar_payload_burst : std_logic_vector(1 downto 0);
  signal axiMasters_2_readOnly_ar_payload_lock : std_logic_vector(0 downto 0);
  signal axiMasters_2_readOnly_ar_payload_cache : std_logic_vector(3 downto 0);
  signal axiMasters_2_readOnly_ar_payload_qos : std_logic_vector(3 downto 0);
  signal axiMasters_2_readOnly_ar_payload_prot : std_logic_vector(2 downto 0);
  signal axiMasters_2_readOnly_r_valid : std_logic;
  signal axiMasters_2_readOnly_r_ready : std_logic;
  signal axiMasters_2_readOnly_r_payload_data : std_logic_vector(31 downto 0);
  signal axiMasters_2_readOnly_r_payload_id : unsigned(3 downto 0);
  signal axiMasters_2_readOnly_r_payload_resp : std_logic_vector(1 downto 0);
  signal axiMasters_2_readOnly_r_payload_last : std_logic;
  signal axiMasters_2_writeOnly_aw_valid : std_logic;
  signal axiMasters_2_writeOnly_aw_ready : std_logic;
  signal axiMasters_2_writeOnly_aw_payload_addr : unsigned(12 downto 0);
  signal axiMasters_2_writeOnly_aw_payload_id : unsigned(3 downto 0);
  signal axiMasters_2_writeOnly_aw_payload_region : std_logic_vector(3 downto 0);
  signal axiMasters_2_writeOnly_aw_payload_len : unsigned(7 downto 0);
  signal axiMasters_2_writeOnly_aw_payload_size : unsigned(2 downto 0);
  signal axiMasters_2_writeOnly_aw_payload_burst : std_logic_vector(1 downto 0);
  signal axiMasters_2_writeOnly_aw_payload_lock : std_logic_vector(0 downto 0);
  signal axiMasters_2_writeOnly_aw_payload_cache : std_logic_vector(3 downto 0);
  signal axiMasters_2_writeOnly_aw_payload_qos : std_logic_vector(3 downto 0);
  signal axiMasters_2_writeOnly_aw_payload_prot : std_logic_vector(2 downto 0);
  signal axiMasters_2_writeOnly_w_valid : std_logic;
  signal axiMasters_2_writeOnly_w_ready : std_logic;
  signal axiMasters_2_writeOnly_w_payload_data : std_logic_vector(31 downto 0);
  signal axiMasters_2_writeOnly_w_payload_strb : std_logic_vector(3 downto 0);
  signal axiMasters_2_writeOnly_w_payload_last : std_logic;
  signal axiMasters_2_writeOnly_b_valid : std_logic;
  signal axiMasters_2_writeOnly_b_ready : std_logic;
  signal axiMasters_2_writeOnly_b_payload_id : unsigned(3 downto 0);
  signal axiMasters_2_writeOnly_b_payload_resp : std_logic_vector(1 downto 0);
  signal zz_1 : std_logic;
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
  signal zz_13 : std_logic;
  signal zz_14 : std_logic;
  signal zz_15 : std_logic;
  signal zz_16 : std_logic;
  signal zz_17 : std_logic;
  signal zz_18 : std_logic;
  signal zz_19 : std_logic;
  signal zz_20 : std_logic;
  signal zz_21 : std_logic;
  signal zz_22 : std_logic;
  signal zz_23 : std_logic;
  signal zz_24 : std_logic;
  signal zz_25 : std_logic;
  signal zz_26 : std_logic;
  signal zz_27 : std_logic;
  signal zz_28 : std_logic;
  signal zz_29 : std_logic;
  signal zz_30 : std_logic;
  signal zz_31 : std_logic;
  signal zz_32 : std_logic;
  signal zz_33 : std_logic;
  signal zz_34 : std_logic;
  signal zz_35 : std_logic;
  signal zz_36 : std_logic;
  signal zz_37 : std_logic;
  signal zz_38 : std_logic;
  signal zz_39 : std_logic;
  signal zz_40 : std_logic;
  signal zz_41 : std_logic;
  signal zz_42 : std_logic;
  signal zz_43 : std_logic;
  signal zz_44 : std_logic;
  signal zz_45 : std_logic;
  signal zz_46 : std_logic;
  signal zz_47 : std_logic;
  signal zz_48 : std_logic;
  signal zz_49 : std_logic;
  signal zz_50 : std_logic;
  signal zz_51 : std_logic;
  signal zz_52 : std_logic;
  signal zz_53 : std_logic;
  signal zz_54 : std_logic;
begin
  axiMasters_0_readOnly_decoder : entity work.Axi4ReadOnlyDecoder
    port map ( 
      io_input_ar_valid => axiMasters_0_readOnly_ar_valid,
      io_input_ar_ready => axiMasters_0_readOnly_decoder_io_input_ar_ready,
      io_input_ar_payload_addr => axiMasters_0_readOnly_ar_payload_addr,
      io_input_ar_payload_id => axiMasters_0_readOnly_ar_payload_id,
      io_input_ar_payload_region => axiMasters_0_readOnly_ar_payload_region,
      io_input_ar_payload_len => axiMasters_0_readOnly_ar_payload_len,
      io_input_ar_payload_size => axiMasters_0_readOnly_ar_payload_size,
      io_input_ar_payload_burst => axiMasters_0_readOnly_ar_payload_burst,
      io_input_ar_payload_lock => axiMasters_0_readOnly_ar_payload_lock,
      io_input_ar_payload_cache => axiMasters_0_readOnly_ar_payload_cache,
      io_input_ar_payload_qos => axiMasters_0_readOnly_ar_payload_qos,
      io_input_ar_payload_prot => axiMasters_0_readOnly_ar_payload_prot,
      io_input_r_valid => axiMasters_0_readOnly_decoder_io_input_r_valid,
      io_input_r_ready => axiMasters_0_readOnly_r_ready,
      io_input_r_payload_data => axiMasters_0_readOnly_decoder_io_input_r_payload_data,
      io_input_r_payload_id => axiMasters_0_readOnly_decoder_io_input_r_payload_id,
      io_input_r_payload_resp => axiMasters_0_readOnly_decoder_io_input_r_payload_resp,
      io_input_r_payload_last => axiMasters_0_readOnly_decoder_io_input_r_payload_last,
      io_outputs_0_ar_valid => axiMasters_0_readOnly_decoder_io_outputs_0_ar_valid,
      io_outputs_0_ar_ready => zz_55,
      io_outputs_0_ar_payload_addr => axiMasters_0_readOnly_decoder_io_outputs_0_ar_payload_addr,
      io_outputs_0_ar_payload_id => axiMasters_0_readOnly_decoder_io_outputs_0_ar_payload_id,
      io_outputs_0_ar_payload_region => axiMasters_0_readOnly_decoder_io_outputs_0_ar_payload_region,
      io_outputs_0_ar_payload_len => axiMasters_0_readOnly_decoder_io_outputs_0_ar_payload_len,
      io_outputs_0_ar_payload_size => axiMasters_0_readOnly_decoder_io_outputs_0_ar_payload_size,
      io_outputs_0_ar_payload_burst => axiMasters_0_readOnly_decoder_io_outputs_0_ar_payload_burst,
      io_outputs_0_ar_payload_lock => axiMasters_0_readOnly_decoder_io_outputs_0_ar_payload_lock,
      io_outputs_0_ar_payload_cache => axiMasters_0_readOnly_decoder_io_outputs_0_ar_payload_cache,
      io_outputs_0_ar_payload_qos => axiMasters_0_readOnly_decoder_io_outputs_0_ar_payload_qos,
      io_outputs_0_ar_payload_prot => axiMasters_0_readOnly_decoder_io_outputs_0_ar_payload_prot,
      io_outputs_0_r_valid => axiSlaves_1_readOnly_arbiter_io_inputs_0_r_valid,
      io_outputs_0_r_ready => axiMasters_0_readOnly_decoder_io_outputs_0_r_ready,
      io_outputs_0_r_payload_data => axiSlaves_1_readOnly_arbiter_io_inputs_0_r_payload_data,
      io_outputs_0_r_payload_id => zz_56,
      io_outputs_0_r_payload_resp => axiSlaves_1_readOnly_arbiter_io_inputs_0_r_payload_resp,
      io_outputs_0_r_payload_last => axiSlaves_1_readOnly_arbiter_io_inputs_0_r_payload_last,
      io_outputs_1_ar_valid => axiMasters_0_readOnly_decoder_io_outputs_1_ar_valid,
      io_outputs_1_ar_ready => zz_57,
      io_outputs_1_ar_payload_addr => axiMasters_0_readOnly_decoder_io_outputs_1_ar_payload_addr,
      io_outputs_1_ar_payload_id => axiMasters_0_readOnly_decoder_io_outputs_1_ar_payload_id,
      io_outputs_1_ar_payload_region => axiMasters_0_readOnly_decoder_io_outputs_1_ar_payload_region,
      io_outputs_1_ar_payload_len => axiMasters_0_readOnly_decoder_io_outputs_1_ar_payload_len,
      io_outputs_1_ar_payload_size => axiMasters_0_readOnly_decoder_io_outputs_1_ar_payload_size,
      io_outputs_1_ar_payload_burst => axiMasters_0_readOnly_decoder_io_outputs_1_ar_payload_burst,
      io_outputs_1_ar_payload_lock => axiMasters_0_readOnly_decoder_io_outputs_1_ar_payload_lock,
      io_outputs_1_ar_payload_cache => axiMasters_0_readOnly_decoder_io_outputs_1_ar_payload_cache,
      io_outputs_1_ar_payload_qos => axiMasters_0_readOnly_decoder_io_outputs_1_ar_payload_qos,
      io_outputs_1_ar_payload_prot => axiMasters_0_readOnly_decoder_io_outputs_1_ar_payload_prot,
      io_outputs_1_r_valid => axiSlaves_2_readOnly_arbiter_io_inputs_0_r_valid,
      io_outputs_1_r_ready => axiMasters_0_readOnly_decoder_io_outputs_1_r_ready,
      io_outputs_1_r_payload_data => axiSlaves_2_readOnly_arbiter_io_inputs_0_r_payload_data,
      io_outputs_1_r_payload_id => zz_58,
      io_outputs_1_r_payload_resp => axiSlaves_2_readOnly_arbiter_io_inputs_0_r_payload_resp,
      io_outputs_1_r_payload_last => axiSlaves_2_readOnly_arbiter_io_inputs_0_r_payload_last,
      io_outputs_2_ar_valid => axiMasters_0_readOnly_decoder_io_outputs_2_ar_valid,
      io_outputs_2_ar_ready => zz_59,
      io_outputs_2_ar_payload_addr => axiMasters_0_readOnly_decoder_io_outputs_2_ar_payload_addr,
      io_outputs_2_ar_payload_id => axiMasters_0_readOnly_decoder_io_outputs_2_ar_payload_id,
      io_outputs_2_ar_payload_region => axiMasters_0_readOnly_decoder_io_outputs_2_ar_payload_region,
      io_outputs_2_ar_payload_len => axiMasters_0_readOnly_decoder_io_outputs_2_ar_payload_len,
      io_outputs_2_ar_payload_size => axiMasters_0_readOnly_decoder_io_outputs_2_ar_payload_size,
      io_outputs_2_ar_payload_burst => axiMasters_0_readOnly_decoder_io_outputs_2_ar_payload_burst,
      io_outputs_2_ar_payload_lock => axiMasters_0_readOnly_decoder_io_outputs_2_ar_payload_lock,
      io_outputs_2_ar_payload_cache => axiMasters_0_readOnly_decoder_io_outputs_2_ar_payload_cache,
      io_outputs_2_ar_payload_qos => axiMasters_0_readOnly_decoder_io_outputs_2_ar_payload_qos,
      io_outputs_2_ar_payload_prot => axiMasters_0_readOnly_decoder_io_outputs_2_ar_payload_prot,
      io_outputs_2_r_valid => axiSlaves_3_readOnly_arbiter_io_inputs_0_r_valid,
      io_outputs_2_r_ready => axiMasters_0_readOnly_decoder_io_outputs_2_r_ready,
      io_outputs_2_r_payload_data => axiSlaves_3_readOnly_arbiter_io_inputs_0_r_payload_data,
      io_outputs_2_r_payload_id => axiSlaves_3_readOnly_arbiter_io_inputs_0_r_payload_id,
      io_outputs_2_r_payload_resp => axiSlaves_3_readOnly_arbiter_io_inputs_0_r_payload_resp,
      io_outputs_2_r_payload_last => axiSlaves_3_readOnly_arbiter_io_inputs_0_r_payload_last,
      clk => clk,
      reset => reset 
    );
  axiMasters_0_writeOnly_decoder : entity work.Axi4WriteOnlyDecoder
    port map ( 
      io_input_aw_valid => axiMasters_0_writeOnly_aw_valid,
      io_input_aw_ready => axiMasters_0_writeOnly_decoder_io_input_aw_ready,
      io_input_aw_payload_addr => axiMasters_0_writeOnly_aw_payload_addr,
      io_input_aw_payload_id => axiMasters_0_writeOnly_aw_payload_id,
      io_input_aw_payload_region => axiMasters_0_writeOnly_aw_payload_region,
      io_input_aw_payload_len => axiMasters_0_writeOnly_aw_payload_len,
      io_input_aw_payload_size => axiMasters_0_writeOnly_aw_payload_size,
      io_input_aw_payload_burst => axiMasters_0_writeOnly_aw_payload_burst,
      io_input_aw_payload_lock => axiMasters_0_writeOnly_aw_payload_lock,
      io_input_aw_payload_cache => axiMasters_0_writeOnly_aw_payload_cache,
      io_input_aw_payload_qos => axiMasters_0_writeOnly_aw_payload_qos,
      io_input_aw_payload_prot => axiMasters_0_writeOnly_aw_payload_prot,
      io_input_w_valid => axiMasters_0_writeOnly_w_valid,
      io_input_w_ready => axiMasters_0_writeOnly_decoder_io_input_w_ready,
      io_input_w_payload_data => axiMasters_0_writeOnly_w_payload_data,
      io_input_w_payload_strb => axiMasters_0_writeOnly_w_payload_strb,
      io_input_w_payload_last => axiMasters_0_writeOnly_w_payload_last,
      io_input_b_valid => axiMasters_0_writeOnly_decoder_io_input_b_valid,
      io_input_b_ready => axiMasters_0_writeOnly_b_ready,
      io_input_b_payload_id => axiMasters_0_writeOnly_decoder_io_input_b_payload_id,
      io_input_b_payload_resp => axiMasters_0_writeOnly_decoder_io_input_b_payload_resp,
      io_outputs_0_aw_valid => axiMasters_0_writeOnly_decoder_io_outputs_0_aw_valid,
      io_outputs_0_aw_ready => zz_60,
      io_outputs_0_aw_payload_addr => axiMasters_0_writeOnly_decoder_io_outputs_0_aw_payload_addr,
      io_outputs_0_aw_payload_id => axiMasters_0_writeOnly_decoder_io_outputs_0_aw_payload_id,
      io_outputs_0_aw_payload_region => axiMasters_0_writeOnly_decoder_io_outputs_0_aw_payload_region,
      io_outputs_0_aw_payload_len => axiMasters_0_writeOnly_decoder_io_outputs_0_aw_payload_len,
      io_outputs_0_aw_payload_size => axiMasters_0_writeOnly_decoder_io_outputs_0_aw_payload_size,
      io_outputs_0_aw_payload_burst => axiMasters_0_writeOnly_decoder_io_outputs_0_aw_payload_burst,
      io_outputs_0_aw_payload_lock => axiMasters_0_writeOnly_decoder_io_outputs_0_aw_payload_lock,
      io_outputs_0_aw_payload_cache => axiMasters_0_writeOnly_decoder_io_outputs_0_aw_payload_cache,
      io_outputs_0_aw_payload_qos => axiMasters_0_writeOnly_decoder_io_outputs_0_aw_payload_qos,
      io_outputs_0_aw_payload_prot => axiMasters_0_writeOnly_decoder_io_outputs_0_aw_payload_prot,
      io_outputs_0_w_valid => axiMasters_0_writeOnly_decoder_io_outputs_0_w_valid,
      io_outputs_0_w_ready => axiSlaves_1_writeOnly_arbiter_io_inputs_0_w_ready,
      io_outputs_0_w_payload_data => axiMasters_0_writeOnly_decoder_io_outputs_0_w_payload_data,
      io_outputs_0_w_payload_strb => axiMasters_0_writeOnly_decoder_io_outputs_0_w_payload_strb,
      io_outputs_0_w_payload_last => axiMasters_0_writeOnly_decoder_io_outputs_0_w_payload_last,
      io_outputs_0_b_valid => axiSlaves_1_writeOnly_arbiter_io_inputs_0_b_valid,
      io_outputs_0_b_ready => axiMasters_0_writeOnly_decoder_io_outputs_0_b_ready,
      io_outputs_0_b_payload_id => zz_61,
      io_outputs_0_b_payload_resp => axiSlaves_1_writeOnly_arbiter_io_inputs_0_b_payload_resp,
      io_outputs_1_aw_valid => axiMasters_0_writeOnly_decoder_io_outputs_1_aw_valid,
      io_outputs_1_aw_ready => zz_62,
      io_outputs_1_aw_payload_addr => axiMasters_0_writeOnly_decoder_io_outputs_1_aw_payload_addr,
      io_outputs_1_aw_payload_id => axiMasters_0_writeOnly_decoder_io_outputs_1_aw_payload_id,
      io_outputs_1_aw_payload_region => axiMasters_0_writeOnly_decoder_io_outputs_1_aw_payload_region,
      io_outputs_1_aw_payload_len => axiMasters_0_writeOnly_decoder_io_outputs_1_aw_payload_len,
      io_outputs_1_aw_payload_size => axiMasters_0_writeOnly_decoder_io_outputs_1_aw_payload_size,
      io_outputs_1_aw_payload_burst => axiMasters_0_writeOnly_decoder_io_outputs_1_aw_payload_burst,
      io_outputs_1_aw_payload_lock => axiMasters_0_writeOnly_decoder_io_outputs_1_aw_payload_lock,
      io_outputs_1_aw_payload_cache => axiMasters_0_writeOnly_decoder_io_outputs_1_aw_payload_cache,
      io_outputs_1_aw_payload_qos => axiMasters_0_writeOnly_decoder_io_outputs_1_aw_payload_qos,
      io_outputs_1_aw_payload_prot => axiMasters_0_writeOnly_decoder_io_outputs_1_aw_payload_prot,
      io_outputs_1_w_valid => axiMasters_0_writeOnly_decoder_io_outputs_1_w_valid,
      io_outputs_1_w_ready => axiSlaves_2_writeOnly_arbiter_io_inputs_0_w_ready,
      io_outputs_1_w_payload_data => axiMasters_0_writeOnly_decoder_io_outputs_1_w_payload_data,
      io_outputs_1_w_payload_strb => axiMasters_0_writeOnly_decoder_io_outputs_1_w_payload_strb,
      io_outputs_1_w_payload_last => axiMasters_0_writeOnly_decoder_io_outputs_1_w_payload_last,
      io_outputs_1_b_valid => axiSlaves_2_writeOnly_arbiter_io_inputs_0_b_valid,
      io_outputs_1_b_ready => axiMasters_0_writeOnly_decoder_io_outputs_1_b_ready,
      io_outputs_1_b_payload_id => zz_63,
      io_outputs_1_b_payload_resp => axiSlaves_2_writeOnly_arbiter_io_inputs_0_b_payload_resp,
      io_outputs_2_aw_valid => axiMasters_0_writeOnly_decoder_io_outputs_2_aw_valid,
      io_outputs_2_aw_ready => zz_64,
      io_outputs_2_aw_payload_addr => axiMasters_0_writeOnly_decoder_io_outputs_2_aw_payload_addr,
      io_outputs_2_aw_payload_id => axiMasters_0_writeOnly_decoder_io_outputs_2_aw_payload_id,
      io_outputs_2_aw_payload_region => axiMasters_0_writeOnly_decoder_io_outputs_2_aw_payload_region,
      io_outputs_2_aw_payload_len => axiMasters_0_writeOnly_decoder_io_outputs_2_aw_payload_len,
      io_outputs_2_aw_payload_size => axiMasters_0_writeOnly_decoder_io_outputs_2_aw_payload_size,
      io_outputs_2_aw_payload_burst => axiMasters_0_writeOnly_decoder_io_outputs_2_aw_payload_burst,
      io_outputs_2_aw_payload_lock => axiMasters_0_writeOnly_decoder_io_outputs_2_aw_payload_lock,
      io_outputs_2_aw_payload_cache => axiMasters_0_writeOnly_decoder_io_outputs_2_aw_payload_cache,
      io_outputs_2_aw_payload_qos => axiMasters_0_writeOnly_decoder_io_outputs_2_aw_payload_qos,
      io_outputs_2_aw_payload_prot => axiMasters_0_writeOnly_decoder_io_outputs_2_aw_payload_prot,
      io_outputs_2_w_valid => axiMasters_0_writeOnly_decoder_io_outputs_2_w_valid,
      io_outputs_2_w_ready => axiSlaves_3_writeOnly_arbiter_io_inputs_0_w_ready,
      io_outputs_2_w_payload_data => axiMasters_0_writeOnly_decoder_io_outputs_2_w_payload_data,
      io_outputs_2_w_payload_strb => axiMasters_0_writeOnly_decoder_io_outputs_2_w_payload_strb,
      io_outputs_2_w_payload_last => axiMasters_0_writeOnly_decoder_io_outputs_2_w_payload_last,
      io_outputs_2_b_valid => axiSlaves_3_writeOnly_arbiter_io_inputs_0_b_valid,
      io_outputs_2_b_ready => axiMasters_0_writeOnly_decoder_io_outputs_2_b_ready,
      io_outputs_2_b_payload_id => axiSlaves_3_writeOnly_arbiter_io_inputs_0_b_payload_id,
      io_outputs_2_b_payload_resp => axiSlaves_3_writeOnly_arbiter_io_inputs_0_b_payload_resp,
      clk => clk,
      reset => reset 
    );
  axiMasters_1_readOnly_decoder : entity work.Axi4ReadOnlyDecoder_1
    port map ( 
      io_input_ar_valid => axiMasters_1_readOnly_ar_valid,
      io_input_ar_ready => axiMasters_1_readOnly_decoder_io_input_ar_ready,
      io_input_ar_payload_addr => axiMasters_1_readOnly_ar_payload_addr,
      io_input_ar_payload_id => axiMasters_1_readOnly_ar_payload_id,
      io_input_ar_payload_region => axiMasters_1_readOnly_ar_payload_region,
      io_input_ar_payload_len => axiMasters_1_readOnly_ar_payload_len,
      io_input_ar_payload_size => axiMasters_1_readOnly_ar_payload_size,
      io_input_ar_payload_burst => axiMasters_1_readOnly_ar_payload_burst,
      io_input_ar_payload_lock => axiMasters_1_readOnly_ar_payload_lock,
      io_input_ar_payload_cache => axiMasters_1_readOnly_ar_payload_cache,
      io_input_ar_payload_qos => axiMasters_1_readOnly_ar_payload_qos,
      io_input_ar_payload_prot => axiMasters_1_readOnly_ar_payload_prot,
      io_input_r_valid => axiMasters_1_readOnly_decoder_io_input_r_valid,
      io_input_r_ready => axiMasters_1_readOnly_r_ready,
      io_input_r_payload_data => axiMasters_1_readOnly_decoder_io_input_r_payload_data,
      io_input_r_payload_id => axiMasters_1_readOnly_decoder_io_input_r_payload_id,
      io_input_r_payload_resp => axiMasters_1_readOnly_decoder_io_input_r_payload_resp,
      io_input_r_payload_last => axiMasters_1_readOnly_decoder_io_input_r_payload_last,
      io_outputs_0_ar_valid => axiMasters_1_readOnly_decoder_io_outputs_0_ar_valid,
      io_outputs_0_ar_ready => zz_65,
      io_outputs_0_ar_payload_addr => axiMasters_1_readOnly_decoder_io_outputs_0_ar_payload_addr,
      io_outputs_0_ar_payload_id => axiMasters_1_readOnly_decoder_io_outputs_0_ar_payload_id,
      io_outputs_0_ar_payload_region => axiMasters_1_readOnly_decoder_io_outputs_0_ar_payload_region,
      io_outputs_0_ar_payload_len => axiMasters_1_readOnly_decoder_io_outputs_0_ar_payload_len,
      io_outputs_0_ar_payload_size => axiMasters_1_readOnly_decoder_io_outputs_0_ar_payload_size,
      io_outputs_0_ar_payload_burst => axiMasters_1_readOnly_decoder_io_outputs_0_ar_payload_burst,
      io_outputs_0_ar_payload_lock => axiMasters_1_readOnly_decoder_io_outputs_0_ar_payload_lock,
      io_outputs_0_ar_payload_cache => axiMasters_1_readOnly_decoder_io_outputs_0_ar_payload_cache,
      io_outputs_0_ar_payload_qos => axiMasters_1_readOnly_decoder_io_outputs_0_ar_payload_qos,
      io_outputs_0_ar_payload_prot => axiMasters_1_readOnly_decoder_io_outputs_0_ar_payload_prot,
      io_outputs_0_r_valid => axiSlaves_0_readOnly_arbiter_io_inputs_0_r_valid,
      io_outputs_0_r_ready => axiMasters_1_readOnly_decoder_io_outputs_0_r_ready,
      io_outputs_0_r_payload_data => axiSlaves_0_readOnly_arbiter_io_inputs_0_r_payload_data,
      io_outputs_0_r_payload_id => zz_66,
      io_outputs_0_r_payload_resp => axiSlaves_0_readOnly_arbiter_io_inputs_0_r_payload_resp,
      io_outputs_0_r_payload_last => axiSlaves_0_readOnly_arbiter_io_inputs_0_r_payload_last,
      io_outputs_1_ar_valid => axiMasters_1_readOnly_decoder_io_outputs_1_ar_valid,
      io_outputs_1_ar_ready => zz_67,
      io_outputs_1_ar_payload_addr => axiMasters_1_readOnly_decoder_io_outputs_1_ar_payload_addr,
      io_outputs_1_ar_payload_id => axiMasters_1_readOnly_decoder_io_outputs_1_ar_payload_id,
      io_outputs_1_ar_payload_region => axiMasters_1_readOnly_decoder_io_outputs_1_ar_payload_region,
      io_outputs_1_ar_payload_len => axiMasters_1_readOnly_decoder_io_outputs_1_ar_payload_len,
      io_outputs_1_ar_payload_size => axiMasters_1_readOnly_decoder_io_outputs_1_ar_payload_size,
      io_outputs_1_ar_payload_burst => axiMasters_1_readOnly_decoder_io_outputs_1_ar_payload_burst,
      io_outputs_1_ar_payload_lock => axiMasters_1_readOnly_decoder_io_outputs_1_ar_payload_lock,
      io_outputs_1_ar_payload_cache => axiMasters_1_readOnly_decoder_io_outputs_1_ar_payload_cache,
      io_outputs_1_ar_payload_qos => axiMasters_1_readOnly_decoder_io_outputs_1_ar_payload_qos,
      io_outputs_1_ar_payload_prot => axiMasters_1_readOnly_decoder_io_outputs_1_ar_payload_prot,
      io_outputs_1_r_valid => axiSlaves_2_readOnly_arbiter_io_inputs_1_r_valid,
      io_outputs_1_r_ready => axiMasters_1_readOnly_decoder_io_outputs_1_r_ready,
      io_outputs_1_r_payload_data => axiSlaves_2_readOnly_arbiter_io_inputs_1_r_payload_data,
      io_outputs_1_r_payload_id => zz_68,
      io_outputs_1_r_payload_resp => axiSlaves_2_readOnly_arbiter_io_inputs_1_r_payload_resp,
      io_outputs_1_r_payload_last => axiSlaves_2_readOnly_arbiter_io_inputs_1_r_payload_last,
      io_outputs_2_ar_valid => axiMasters_1_readOnly_decoder_io_outputs_2_ar_valid,
      io_outputs_2_ar_ready => zz_69,
      io_outputs_2_ar_payload_addr => axiMasters_1_readOnly_decoder_io_outputs_2_ar_payload_addr,
      io_outputs_2_ar_payload_id => axiMasters_1_readOnly_decoder_io_outputs_2_ar_payload_id,
      io_outputs_2_ar_payload_region => axiMasters_1_readOnly_decoder_io_outputs_2_ar_payload_region,
      io_outputs_2_ar_payload_len => axiMasters_1_readOnly_decoder_io_outputs_2_ar_payload_len,
      io_outputs_2_ar_payload_size => axiMasters_1_readOnly_decoder_io_outputs_2_ar_payload_size,
      io_outputs_2_ar_payload_burst => axiMasters_1_readOnly_decoder_io_outputs_2_ar_payload_burst,
      io_outputs_2_ar_payload_lock => axiMasters_1_readOnly_decoder_io_outputs_2_ar_payload_lock,
      io_outputs_2_ar_payload_cache => axiMasters_1_readOnly_decoder_io_outputs_2_ar_payload_cache,
      io_outputs_2_ar_payload_qos => axiMasters_1_readOnly_decoder_io_outputs_2_ar_payload_qos,
      io_outputs_2_ar_payload_prot => axiMasters_1_readOnly_decoder_io_outputs_2_ar_payload_prot,
      io_outputs_2_r_valid => axiSlaves_3_readOnly_arbiter_io_inputs_1_r_valid,
      io_outputs_2_r_ready => axiMasters_1_readOnly_decoder_io_outputs_2_r_ready,
      io_outputs_2_r_payload_data => axiSlaves_3_readOnly_arbiter_io_inputs_1_r_payload_data,
      io_outputs_2_r_payload_id => axiSlaves_3_readOnly_arbiter_io_inputs_1_r_payload_id,
      io_outputs_2_r_payload_resp => axiSlaves_3_readOnly_arbiter_io_inputs_1_r_payload_resp,
      io_outputs_2_r_payload_last => axiSlaves_3_readOnly_arbiter_io_inputs_1_r_payload_last,
      clk => clk,
      reset => reset 
    );
  axiMasters_1_writeOnly_decoder : entity work.Axi4WriteOnlyDecoder_1
    port map ( 
      io_input_aw_valid => axiMasters_1_writeOnly_aw_valid,
      io_input_aw_ready => axiMasters_1_writeOnly_decoder_io_input_aw_ready,
      io_input_aw_payload_addr => axiMasters_1_writeOnly_aw_payload_addr,
      io_input_aw_payload_id => axiMasters_1_writeOnly_aw_payload_id,
      io_input_aw_payload_region => axiMasters_1_writeOnly_aw_payload_region,
      io_input_aw_payload_len => axiMasters_1_writeOnly_aw_payload_len,
      io_input_aw_payload_size => axiMasters_1_writeOnly_aw_payload_size,
      io_input_aw_payload_burst => axiMasters_1_writeOnly_aw_payload_burst,
      io_input_aw_payload_lock => axiMasters_1_writeOnly_aw_payload_lock,
      io_input_aw_payload_cache => axiMasters_1_writeOnly_aw_payload_cache,
      io_input_aw_payload_qos => axiMasters_1_writeOnly_aw_payload_qos,
      io_input_aw_payload_prot => axiMasters_1_writeOnly_aw_payload_prot,
      io_input_w_valid => axiMasters_1_writeOnly_w_valid,
      io_input_w_ready => axiMasters_1_writeOnly_decoder_io_input_w_ready,
      io_input_w_payload_data => axiMasters_1_writeOnly_w_payload_data,
      io_input_w_payload_strb => axiMasters_1_writeOnly_w_payload_strb,
      io_input_w_payload_last => axiMasters_1_writeOnly_w_payload_last,
      io_input_b_valid => axiMasters_1_writeOnly_decoder_io_input_b_valid,
      io_input_b_ready => axiMasters_1_writeOnly_b_ready,
      io_input_b_payload_id => axiMasters_1_writeOnly_decoder_io_input_b_payload_id,
      io_input_b_payload_resp => axiMasters_1_writeOnly_decoder_io_input_b_payload_resp,
      io_outputs_0_aw_valid => axiMasters_1_writeOnly_decoder_io_outputs_0_aw_valid,
      io_outputs_0_aw_ready => zz_70,
      io_outputs_0_aw_payload_addr => axiMasters_1_writeOnly_decoder_io_outputs_0_aw_payload_addr,
      io_outputs_0_aw_payload_id => axiMasters_1_writeOnly_decoder_io_outputs_0_aw_payload_id,
      io_outputs_0_aw_payload_region => axiMasters_1_writeOnly_decoder_io_outputs_0_aw_payload_region,
      io_outputs_0_aw_payload_len => axiMasters_1_writeOnly_decoder_io_outputs_0_aw_payload_len,
      io_outputs_0_aw_payload_size => axiMasters_1_writeOnly_decoder_io_outputs_0_aw_payload_size,
      io_outputs_0_aw_payload_burst => axiMasters_1_writeOnly_decoder_io_outputs_0_aw_payload_burst,
      io_outputs_0_aw_payload_lock => axiMasters_1_writeOnly_decoder_io_outputs_0_aw_payload_lock,
      io_outputs_0_aw_payload_cache => axiMasters_1_writeOnly_decoder_io_outputs_0_aw_payload_cache,
      io_outputs_0_aw_payload_qos => axiMasters_1_writeOnly_decoder_io_outputs_0_aw_payload_qos,
      io_outputs_0_aw_payload_prot => axiMasters_1_writeOnly_decoder_io_outputs_0_aw_payload_prot,
      io_outputs_0_w_valid => axiMasters_1_writeOnly_decoder_io_outputs_0_w_valid,
      io_outputs_0_w_ready => axiSlaves_0_writeOnly_arbiter_io_inputs_0_w_ready,
      io_outputs_0_w_payload_data => axiMasters_1_writeOnly_decoder_io_outputs_0_w_payload_data,
      io_outputs_0_w_payload_strb => axiMasters_1_writeOnly_decoder_io_outputs_0_w_payload_strb,
      io_outputs_0_w_payload_last => axiMasters_1_writeOnly_decoder_io_outputs_0_w_payload_last,
      io_outputs_0_b_valid => axiSlaves_0_writeOnly_arbiter_io_inputs_0_b_valid,
      io_outputs_0_b_ready => axiMasters_1_writeOnly_decoder_io_outputs_0_b_ready,
      io_outputs_0_b_payload_id => zz_71,
      io_outputs_0_b_payload_resp => axiSlaves_0_writeOnly_arbiter_io_inputs_0_b_payload_resp,
      io_outputs_1_aw_valid => axiMasters_1_writeOnly_decoder_io_outputs_1_aw_valid,
      io_outputs_1_aw_ready => zz_72,
      io_outputs_1_aw_payload_addr => axiMasters_1_writeOnly_decoder_io_outputs_1_aw_payload_addr,
      io_outputs_1_aw_payload_id => axiMasters_1_writeOnly_decoder_io_outputs_1_aw_payload_id,
      io_outputs_1_aw_payload_region => axiMasters_1_writeOnly_decoder_io_outputs_1_aw_payload_region,
      io_outputs_1_aw_payload_len => axiMasters_1_writeOnly_decoder_io_outputs_1_aw_payload_len,
      io_outputs_1_aw_payload_size => axiMasters_1_writeOnly_decoder_io_outputs_1_aw_payload_size,
      io_outputs_1_aw_payload_burst => axiMasters_1_writeOnly_decoder_io_outputs_1_aw_payload_burst,
      io_outputs_1_aw_payload_lock => axiMasters_1_writeOnly_decoder_io_outputs_1_aw_payload_lock,
      io_outputs_1_aw_payload_cache => axiMasters_1_writeOnly_decoder_io_outputs_1_aw_payload_cache,
      io_outputs_1_aw_payload_qos => axiMasters_1_writeOnly_decoder_io_outputs_1_aw_payload_qos,
      io_outputs_1_aw_payload_prot => axiMasters_1_writeOnly_decoder_io_outputs_1_aw_payload_prot,
      io_outputs_1_w_valid => axiMasters_1_writeOnly_decoder_io_outputs_1_w_valid,
      io_outputs_1_w_ready => axiSlaves_2_writeOnly_arbiter_io_inputs_1_w_ready,
      io_outputs_1_w_payload_data => axiMasters_1_writeOnly_decoder_io_outputs_1_w_payload_data,
      io_outputs_1_w_payload_strb => axiMasters_1_writeOnly_decoder_io_outputs_1_w_payload_strb,
      io_outputs_1_w_payload_last => axiMasters_1_writeOnly_decoder_io_outputs_1_w_payload_last,
      io_outputs_1_b_valid => axiSlaves_2_writeOnly_arbiter_io_inputs_1_b_valid,
      io_outputs_1_b_ready => axiMasters_1_writeOnly_decoder_io_outputs_1_b_ready,
      io_outputs_1_b_payload_id => zz_73,
      io_outputs_1_b_payload_resp => axiSlaves_2_writeOnly_arbiter_io_inputs_1_b_payload_resp,
      io_outputs_2_aw_valid => axiMasters_1_writeOnly_decoder_io_outputs_2_aw_valid,
      io_outputs_2_aw_ready => zz_74,
      io_outputs_2_aw_payload_addr => axiMasters_1_writeOnly_decoder_io_outputs_2_aw_payload_addr,
      io_outputs_2_aw_payload_id => axiMasters_1_writeOnly_decoder_io_outputs_2_aw_payload_id,
      io_outputs_2_aw_payload_region => axiMasters_1_writeOnly_decoder_io_outputs_2_aw_payload_region,
      io_outputs_2_aw_payload_len => axiMasters_1_writeOnly_decoder_io_outputs_2_aw_payload_len,
      io_outputs_2_aw_payload_size => axiMasters_1_writeOnly_decoder_io_outputs_2_aw_payload_size,
      io_outputs_2_aw_payload_burst => axiMasters_1_writeOnly_decoder_io_outputs_2_aw_payload_burst,
      io_outputs_2_aw_payload_lock => axiMasters_1_writeOnly_decoder_io_outputs_2_aw_payload_lock,
      io_outputs_2_aw_payload_cache => axiMasters_1_writeOnly_decoder_io_outputs_2_aw_payload_cache,
      io_outputs_2_aw_payload_qos => axiMasters_1_writeOnly_decoder_io_outputs_2_aw_payload_qos,
      io_outputs_2_aw_payload_prot => axiMasters_1_writeOnly_decoder_io_outputs_2_aw_payload_prot,
      io_outputs_2_w_valid => axiMasters_1_writeOnly_decoder_io_outputs_2_w_valid,
      io_outputs_2_w_ready => axiSlaves_3_writeOnly_arbiter_io_inputs_1_w_ready,
      io_outputs_2_w_payload_data => axiMasters_1_writeOnly_decoder_io_outputs_2_w_payload_data,
      io_outputs_2_w_payload_strb => axiMasters_1_writeOnly_decoder_io_outputs_2_w_payload_strb,
      io_outputs_2_w_payload_last => axiMasters_1_writeOnly_decoder_io_outputs_2_w_payload_last,
      io_outputs_2_b_valid => axiSlaves_3_writeOnly_arbiter_io_inputs_1_b_valid,
      io_outputs_2_b_ready => axiMasters_1_writeOnly_decoder_io_outputs_2_b_ready,
      io_outputs_2_b_payload_id => axiSlaves_3_writeOnly_arbiter_io_inputs_1_b_payload_id,
      io_outputs_2_b_payload_resp => axiSlaves_3_writeOnly_arbiter_io_inputs_1_b_payload_resp,
      clk => clk,
      reset => reset 
    );
  axiMasters_2_readOnly_decoder : entity work.Axi4ReadOnlyDecoder_2
    port map ( 
      io_input_ar_valid => axiMasters_2_readOnly_ar_valid,
      io_input_ar_ready => axiMasters_2_readOnly_decoder_io_input_ar_ready,
      io_input_ar_payload_addr => axiMasters_2_readOnly_ar_payload_addr,
      io_input_ar_payload_id => axiMasters_2_readOnly_ar_payload_id,
      io_input_ar_payload_region => axiMasters_2_readOnly_ar_payload_region,
      io_input_ar_payload_len => axiMasters_2_readOnly_ar_payload_len,
      io_input_ar_payload_size => axiMasters_2_readOnly_ar_payload_size,
      io_input_ar_payload_burst => axiMasters_2_readOnly_ar_payload_burst,
      io_input_ar_payload_lock => axiMasters_2_readOnly_ar_payload_lock,
      io_input_ar_payload_cache => axiMasters_2_readOnly_ar_payload_cache,
      io_input_ar_payload_qos => axiMasters_2_readOnly_ar_payload_qos,
      io_input_ar_payload_prot => axiMasters_2_readOnly_ar_payload_prot,
      io_input_r_valid => axiMasters_2_readOnly_decoder_io_input_r_valid,
      io_input_r_ready => axiMasters_2_readOnly_r_ready,
      io_input_r_payload_data => axiMasters_2_readOnly_decoder_io_input_r_payload_data,
      io_input_r_payload_id => axiMasters_2_readOnly_decoder_io_input_r_payload_id,
      io_input_r_payload_resp => axiMasters_2_readOnly_decoder_io_input_r_payload_resp,
      io_input_r_payload_last => axiMasters_2_readOnly_decoder_io_input_r_payload_last,
      io_outputs_0_ar_valid => axiMasters_2_readOnly_decoder_io_outputs_0_ar_valid,
      io_outputs_0_ar_ready => zz_75,
      io_outputs_0_ar_payload_addr => axiMasters_2_readOnly_decoder_io_outputs_0_ar_payload_addr,
      io_outputs_0_ar_payload_id => axiMasters_2_readOnly_decoder_io_outputs_0_ar_payload_id,
      io_outputs_0_ar_payload_region => axiMasters_2_readOnly_decoder_io_outputs_0_ar_payload_region,
      io_outputs_0_ar_payload_len => axiMasters_2_readOnly_decoder_io_outputs_0_ar_payload_len,
      io_outputs_0_ar_payload_size => axiMasters_2_readOnly_decoder_io_outputs_0_ar_payload_size,
      io_outputs_0_ar_payload_burst => axiMasters_2_readOnly_decoder_io_outputs_0_ar_payload_burst,
      io_outputs_0_ar_payload_lock => axiMasters_2_readOnly_decoder_io_outputs_0_ar_payload_lock,
      io_outputs_0_ar_payload_cache => axiMasters_2_readOnly_decoder_io_outputs_0_ar_payload_cache,
      io_outputs_0_ar_payload_qos => axiMasters_2_readOnly_decoder_io_outputs_0_ar_payload_qos,
      io_outputs_0_ar_payload_prot => axiMasters_2_readOnly_decoder_io_outputs_0_ar_payload_prot,
      io_outputs_0_r_valid => axiSlaves_0_readOnly_arbiter_io_inputs_1_r_valid,
      io_outputs_0_r_ready => axiMasters_2_readOnly_decoder_io_outputs_0_r_ready,
      io_outputs_0_r_payload_data => axiSlaves_0_readOnly_arbiter_io_inputs_1_r_payload_data,
      io_outputs_0_r_payload_id => zz_76,
      io_outputs_0_r_payload_resp => axiSlaves_0_readOnly_arbiter_io_inputs_1_r_payload_resp,
      io_outputs_0_r_payload_last => axiSlaves_0_readOnly_arbiter_io_inputs_1_r_payload_last,
      io_outputs_1_ar_valid => axiMasters_2_readOnly_decoder_io_outputs_1_ar_valid,
      io_outputs_1_ar_ready => zz_77,
      io_outputs_1_ar_payload_addr => axiMasters_2_readOnly_decoder_io_outputs_1_ar_payload_addr,
      io_outputs_1_ar_payload_id => axiMasters_2_readOnly_decoder_io_outputs_1_ar_payload_id,
      io_outputs_1_ar_payload_region => axiMasters_2_readOnly_decoder_io_outputs_1_ar_payload_region,
      io_outputs_1_ar_payload_len => axiMasters_2_readOnly_decoder_io_outputs_1_ar_payload_len,
      io_outputs_1_ar_payload_size => axiMasters_2_readOnly_decoder_io_outputs_1_ar_payload_size,
      io_outputs_1_ar_payload_burst => axiMasters_2_readOnly_decoder_io_outputs_1_ar_payload_burst,
      io_outputs_1_ar_payload_lock => axiMasters_2_readOnly_decoder_io_outputs_1_ar_payload_lock,
      io_outputs_1_ar_payload_cache => axiMasters_2_readOnly_decoder_io_outputs_1_ar_payload_cache,
      io_outputs_1_ar_payload_qos => axiMasters_2_readOnly_decoder_io_outputs_1_ar_payload_qos,
      io_outputs_1_ar_payload_prot => axiMasters_2_readOnly_decoder_io_outputs_1_ar_payload_prot,
      io_outputs_1_r_valid => axiSlaves_1_readOnly_arbiter_io_inputs_1_r_valid,
      io_outputs_1_r_ready => axiMasters_2_readOnly_decoder_io_outputs_1_r_ready,
      io_outputs_1_r_payload_data => axiSlaves_1_readOnly_arbiter_io_inputs_1_r_payload_data,
      io_outputs_1_r_payload_id => zz_78,
      io_outputs_1_r_payload_resp => axiSlaves_1_readOnly_arbiter_io_inputs_1_r_payload_resp,
      io_outputs_1_r_payload_last => axiSlaves_1_readOnly_arbiter_io_inputs_1_r_payload_last,
      io_outputs_2_ar_valid => axiMasters_2_readOnly_decoder_io_outputs_2_ar_valid,
      io_outputs_2_ar_ready => zz_79,
      io_outputs_2_ar_payload_addr => axiMasters_2_readOnly_decoder_io_outputs_2_ar_payload_addr,
      io_outputs_2_ar_payload_id => axiMasters_2_readOnly_decoder_io_outputs_2_ar_payload_id,
      io_outputs_2_ar_payload_region => axiMasters_2_readOnly_decoder_io_outputs_2_ar_payload_region,
      io_outputs_2_ar_payload_len => axiMasters_2_readOnly_decoder_io_outputs_2_ar_payload_len,
      io_outputs_2_ar_payload_size => axiMasters_2_readOnly_decoder_io_outputs_2_ar_payload_size,
      io_outputs_2_ar_payload_burst => axiMasters_2_readOnly_decoder_io_outputs_2_ar_payload_burst,
      io_outputs_2_ar_payload_lock => axiMasters_2_readOnly_decoder_io_outputs_2_ar_payload_lock,
      io_outputs_2_ar_payload_cache => axiMasters_2_readOnly_decoder_io_outputs_2_ar_payload_cache,
      io_outputs_2_ar_payload_qos => axiMasters_2_readOnly_decoder_io_outputs_2_ar_payload_qos,
      io_outputs_2_ar_payload_prot => axiMasters_2_readOnly_decoder_io_outputs_2_ar_payload_prot,
      io_outputs_2_r_valid => axiSlaves_3_readOnly_arbiter_io_inputs_2_r_valid,
      io_outputs_2_r_ready => axiMasters_2_readOnly_decoder_io_outputs_2_r_ready,
      io_outputs_2_r_payload_data => axiSlaves_3_readOnly_arbiter_io_inputs_2_r_payload_data,
      io_outputs_2_r_payload_id => axiSlaves_3_readOnly_arbiter_io_inputs_2_r_payload_id,
      io_outputs_2_r_payload_resp => axiSlaves_3_readOnly_arbiter_io_inputs_2_r_payload_resp,
      io_outputs_2_r_payload_last => axiSlaves_3_readOnly_arbiter_io_inputs_2_r_payload_last,
      clk => clk,
      reset => reset 
    );
  axiMasters_2_writeOnly_decoder : entity work.Axi4WriteOnlyDecoder_2
    port map ( 
      io_input_aw_valid => axiMasters_2_writeOnly_aw_valid,
      io_input_aw_ready => axiMasters_2_writeOnly_decoder_io_input_aw_ready,
      io_input_aw_payload_addr => axiMasters_2_writeOnly_aw_payload_addr,
      io_input_aw_payload_id => axiMasters_2_writeOnly_aw_payload_id,
      io_input_aw_payload_region => axiMasters_2_writeOnly_aw_payload_region,
      io_input_aw_payload_len => axiMasters_2_writeOnly_aw_payload_len,
      io_input_aw_payload_size => axiMasters_2_writeOnly_aw_payload_size,
      io_input_aw_payload_burst => axiMasters_2_writeOnly_aw_payload_burst,
      io_input_aw_payload_lock => axiMasters_2_writeOnly_aw_payload_lock,
      io_input_aw_payload_cache => axiMasters_2_writeOnly_aw_payload_cache,
      io_input_aw_payload_qos => axiMasters_2_writeOnly_aw_payload_qos,
      io_input_aw_payload_prot => axiMasters_2_writeOnly_aw_payload_prot,
      io_input_w_valid => axiMasters_2_writeOnly_w_valid,
      io_input_w_ready => axiMasters_2_writeOnly_decoder_io_input_w_ready,
      io_input_w_payload_data => axiMasters_2_writeOnly_w_payload_data,
      io_input_w_payload_strb => axiMasters_2_writeOnly_w_payload_strb,
      io_input_w_payload_last => axiMasters_2_writeOnly_w_payload_last,
      io_input_b_valid => axiMasters_2_writeOnly_decoder_io_input_b_valid,
      io_input_b_ready => axiMasters_2_writeOnly_b_ready,
      io_input_b_payload_id => axiMasters_2_writeOnly_decoder_io_input_b_payload_id,
      io_input_b_payload_resp => axiMasters_2_writeOnly_decoder_io_input_b_payload_resp,
      io_outputs_0_aw_valid => axiMasters_2_writeOnly_decoder_io_outputs_0_aw_valid,
      io_outputs_0_aw_ready => zz_80,
      io_outputs_0_aw_payload_addr => axiMasters_2_writeOnly_decoder_io_outputs_0_aw_payload_addr,
      io_outputs_0_aw_payload_id => axiMasters_2_writeOnly_decoder_io_outputs_0_aw_payload_id,
      io_outputs_0_aw_payload_region => axiMasters_2_writeOnly_decoder_io_outputs_0_aw_payload_region,
      io_outputs_0_aw_payload_len => axiMasters_2_writeOnly_decoder_io_outputs_0_aw_payload_len,
      io_outputs_0_aw_payload_size => axiMasters_2_writeOnly_decoder_io_outputs_0_aw_payload_size,
      io_outputs_0_aw_payload_burst => axiMasters_2_writeOnly_decoder_io_outputs_0_aw_payload_burst,
      io_outputs_0_aw_payload_lock => axiMasters_2_writeOnly_decoder_io_outputs_0_aw_payload_lock,
      io_outputs_0_aw_payload_cache => axiMasters_2_writeOnly_decoder_io_outputs_0_aw_payload_cache,
      io_outputs_0_aw_payload_qos => axiMasters_2_writeOnly_decoder_io_outputs_0_aw_payload_qos,
      io_outputs_0_aw_payload_prot => axiMasters_2_writeOnly_decoder_io_outputs_0_aw_payload_prot,
      io_outputs_0_w_valid => axiMasters_2_writeOnly_decoder_io_outputs_0_w_valid,
      io_outputs_0_w_ready => axiSlaves_0_writeOnly_arbiter_io_inputs_1_w_ready,
      io_outputs_0_w_payload_data => axiMasters_2_writeOnly_decoder_io_outputs_0_w_payload_data,
      io_outputs_0_w_payload_strb => axiMasters_2_writeOnly_decoder_io_outputs_0_w_payload_strb,
      io_outputs_0_w_payload_last => axiMasters_2_writeOnly_decoder_io_outputs_0_w_payload_last,
      io_outputs_0_b_valid => axiSlaves_0_writeOnly_arbiter_io_inputs_1_b_valid,
      io_outputs_0_b_ready => axiMasters_2_writeOnly_decoder_io_outputs_0_b_ready,
      io_outputs_0_b_payload_id => zz_81,
      io_outputs_0_b_payload_resp => axiSlaves_0_writeOnly_arbiter_io_inputs_1_b_payload_resp,
      io_outputs_1_aw_valid => axiMasters_2_writeOnly_decoder_io_outputs_1_aw_valid,
      io_outputs_1_aw_ready => zz_82,
      io_outputs_1_aw_payload_addr => axiMasters_2_writeOnly_decoder_io_outputs_1_aw_payload_addr,
      io_outputs_1_aw_payload_id => axiMasters_2_writeOnly_decoder_io_outputs_1_aw_payload_id,
      io_outputs_1_aw_payload_region => axiMasters_2_writeOnly_decoder_io_outputs_1_aw_payload_region,
      io_outputs_1_aw_payload_len => axiMasters_2_writeOnly_decoder_io_outputs_1_aw_payload_len,
      io_outputs_1_aw_payload_size => axiMasters_2_writeOnly_decoder_io_outputs_1_aw_payload_size,
      io_outputs_1_aw_payload_burst => axiMasters_2_writeOnly_decoder_io_outputs_1_aw_payload_burst,
      io_outputs_1_aw_payload_lock => axiMasters_2_writeOnly_decoder_io_outputs_1_aw_payload_lock,
      io_outputs_1_aw_payload_cache => axiMasters_2_writeOnly_decoder_io_outputs_1_aw_payload_cache,
      io_outputs_1_aw_payload_qos => axiMasters_2_writeOnly_decoder_io_outputs_1_aw_payload_qos,
      io_outputs_1_aw_payload_prot => axiMasters_2_writeOnly_decoder_io_outputs_1_aw_payload_prot,
      io_outputs_1_w_valid => axiMasters_2_writeOnly_decoder_io_outputs_1_w_valid,
      io_outputs_1_w_ready => axiSlaves_1_writeOnly_arbiter_io_inputs_1_w_ready,
      io_outputs_1_w_payload_data => axiMasters_2_writeOnly_decoder_io_outputs_1_w_payload_data,
      io_outputs_1_w_payload_strb => axiMasters_2_writeOnly_decoder_io_outputs_1_w_payload_strb,
      io_outputs_1_w_payload_last => axiMasters_2_writeOnly_decoder_io_outputs_1_w_payload_last,
      io_outputs_1_b_valid => axiSlaves_1_writeOnly_arbiter_io_inputs_1_b_valid,
      io_outputs_1_b_ready => axiMasters_2_writeOnly_decoder_io_outputs_1_b_ready,
      io_outputs_1_b_payload_id => zz_83,
      io_outputs_1_b_payload_resp => axiSlaves_1_writeOnly_arbiter_io_inputs_1_b_payload_resp,
      io_outputs_2_aw_valid => axiMasters_2_writeOnly_decoder_io_outputs_2_aw_valid,
      io_outputs_2_aw_ready => zz_84,
      io_outputs_2_aw_payload_addr => axiMasters_2_writeOnly_decoder_io_outputs_2_aw_payload_addr,
      io_outputs_2_aw_payload_id => axiMasters_2_writeOnly_decoder_io_outputs_2_aw_payload_id,
      io_outputs_2_aw_payload_region => axiMasters_2_writeOnly_decoder_io_outputs_2_aw_payload_region,
      io_outputs_2_aw_payload_len => axiMasters_2_writeOnly_decoder_io_outputs_2_aw_payload_len,
      io_outputs_2_aw_payload_size => axiMasters_2_writeOnly_decoder_io_outputs_2_aw_payload_size,
      io_outputs_2_aw_payload_burst => axiMasters_2_writeOnly_decoder_io_outputs_2_aw_payload_burst,
      io_outputs_2_aw_payload_lock => axiMasters_2_writeOnly_decoder_io_outputs_2_aw_payload_lock,
      io_outputs_2_aw_payload_cache => axiMasters_2_writeOnly_decoder_io_outputs_2_aw_payload_cache,
      io_outputs_2_aw_payload_qos => axiMasters_2_writeOnly_decoder_io_outputs_2_aw_payload_qos,
      io_outputs_2_aw_payload_prot => axiMasters_2_writeOnly_decoder_io_outputs_2_aw_payload_prot,
      io_outputs_2_w_valid => axiMasters_2_writeOnly_decoder_io_outputs_2_w_valid,
      io_outputs_2_w_ready => axiSlaves_3_writeOnly_arbiter_io_inputs_2_w_ready,
      io_outputs_2_w_payload_data => axiMasters_2_writeOnly_decoder_io_outputs_2_w_payload_data,
      io_outputs_2_w_payload_strb => axiMasters_2_writeOnly_decoder_io_outputs_2_w_payload_strb,
      io_outputs_2_w_payload_last => axiMasters_2_writeOnly_decoder_io_outputs_2_w_payload_last,
      io_outputs_2_b_valid => axiSlaves_3_writeOnly_arbiter_io_inputs_2_b_valid,
      io_outputs_2_b_ready => axiMasters_2_writeOnly_decoder_io_outputs_2_b_ready,
      io_outputs_2_b_payload_id => axiSlaves_3_writeOnly_arbiter_io_inputs_2_b_payload_id,
      io_outputs_2_b_payload_resp => axiSlaves_3_writeOnly_arbiter_io_inputs_2_b_payload_resp,
      clk => clk,
      reset => reset 
    );
  axiSlaves_0_readOnly_arbiter : entity work.Axi4ReadOnlyArbiter
    port map ( 
      io_inputs_0_ar_valid => zz_19,
      io_inputs_0_ar_ready => axiSlaves_0_readOnly_arbiter_io_inputs_0_ar_ready,
      io_inputs_0_ar_payload_addr => axiMasters_1_readOnly_decoder_io_outputs_0_ar_payload_addr,
      io_inputs_0_ar_payload_id => zz_85,
      io_inputs_0_ar_payload_region => axiMasters_1_readOnly_decoder_io_outputs_0_ar_payload_region,
      io_inputs_0_ar_payload_len => axiMasters_1_readOnly_decoder_io_outputs_0_ar_payload_len,
      io_inputs_0_ar_payload_size => axiMasters_1_readOnly_decoder_io_outputs_0_ar_payload_size,
      io_inputs_0_ar_payload_burst => axiMasters_1_readOnly_decoder_io_outputs_0_ar_payload_burst,
      io_inputs_0_ar_payload_lock => axiMasters_1_readOnly_decoder_io_outputs_0_ar_payload_lock,
      io_inputs_0_ar_payload_cache => axiMasters_1_readOnly_decoder_io_outputs_0_ar_payload_cache,
      io_inputs_0_ar_payload_qos => axiMasters_1_readOnly_decoder_io_outputs_0_ar_payload_qos,
      io_inputs_0_ar_payload_prot => axiMasters_1_readOnly_decoder_io_outputs_0_ar_payload_prot,
      io_inputs_0_r_valid => axiSlaves_0_readOnly_arbiter_io_inputs_0_r_valid,
      io_inputs_0_r_ready => axiMasters_1_readOnly_decoder_io_outputs_0_r_ready,
      io_inputs_0_r_payload_data => axiSlaves_0_readOnly_arbiter_io_inputs_0_r_payload_data,
      io_inputs_0_r_payload_id => axiSlaves_0_readOnly_arbiter_io_inputs_0_r_payload_id,
      io_inputs_0_r_payload_resp => axiSlaves_0_readOnly_arbiter_io_inputs_0_r_payload_resp,
      io_inputs_0_r_payload_last => axiSlaves_0_readOnly_arbiter_io_inputs_0_r_payload_last,
      io_inputs_1_ar_valid => zz_37,
      io_inputs_1_ar_ready => axiSlaves_0_readOnly_arbiter_io_inputs_1_ar_ready,
      io_inputs_1_ar_payload_addr => axiMasters_2_readOnly_decoder_io_outputs_0_ar_payload_addr,
      io_inputs_1_ar_payload_id => zz_86,
      io_inputs_1_ar_payload_region => axiMasters_2_readOnly_decoder_io_outputs_0_ar_payload_region,
      io_inputs_1_ar_payload_len => axiMasters_2_readOnly_decoder_io_outputs_0_ar_payload_len,
      io_inputs_1_ar_payload_size => axiMasters_2_readOnly_decoder_io_outputs_0_ar_payload_size,
      io_inputs_1_ar_payload_burst => axiMasters_2_readOnly_decoder_io_outputs_0_ar_payload_burst,
      io_inputs_1_ar_payload_lock => axiMasters_2_readOnly_decoder_io_outputs_0_ar_payload_lock,
      io_inputs_1_ar_payload_cache => axiMasters_2_readOnly_decoder_io_outputs_0_ar_payload_cache,
      io_inputs_1_ar_payload_qos => axiMasters_2_readOnly_decoder_io_outputs_0_ar_payload_qos,
      io_inputs_1_ar_payload_prot => axiMasters_2_readOnly_decoder_io_outputs_0_ar_payload_prot,
      io_inputs_1_r_valid => axiSlaves_0_readOnly_arbiter_io_inputs_1_r_valid,
      io_inputs_1_r_ready => axiMasters_2_readOnly_decoder_io_outputs_0_r_ready,
      io_inputs_1_r_payload_data => axiSlaves_0_readOnly_arbiter_io_inputs_1_r_payload_data,
      io_inputs_1_r_payload_id => axiSlaves_0_readOnly_arbiter_io_inputs_1_r_payload_id,
      io_inputs_1_r_payload_resp => axiSlaves_0_readOnly_arbiter_io_inputs_1_r_payload_resp,
      io_inputs_1_r_payload_last => axiSlaves_0_readOnly_arbiter_io_inputs_1_r_payload_last,
      io_output_ar_valid => axiSlaves_0_readOnly_arbiter_io_output_ar_valid,
      io_output_ar_ready => axiSlaves_0_readOnly_ar_ready,
      io_output_ar_payload_addr => axiSlaves_0_readOnly_arbiter_io_output_ar_payload_addr,
      io_output_ar_payload_id => axiSlaves_0_readOnly_arbiter_io_output_ar_payload_id,
      io_output_ar_payload_region => axiSlaves_0_readOnly_arbiter_io_output_ar_payload_region,
      io_output_ar_payload_len => axiSlaves_0_readOnly_arbiter_io_output_ar_payload_len,
      io_output_ar_payload_size => axiSlaves_0_readOnly_arbiter_io_output_ar_payload_size,
      io_output_ar_payload_burst => axiSlaves_0_readOnly_arbiter_io_output_ar_payload_burst,
      io_output_ar_payload_lock => axiSlaves_0_readOnly_arbiter_io_output_ar_payload_lock,
      io_output_ar_payload_cache => axiSlaves_0_readOnly_arbiter_io_output_ar_payload_cache,
      io_output_ar_payload_qos => axiSlaves_0_readOnly_arbiter_io_output_ar_payload_qos,
      io_output_ar_payload_prot => axiSlaves_0_readOnly_arbiter_io_output_ar_payload_prot,
      io_output_r_valid => axiSlaves_0_readOnly_r_valid,
      io_output_r_ready => axiSlaves_0_readOnly_arbiter_io_output_r_ready,
      io_output_r_payload_data => axiSlaves_0_readOnly_r_payload_data,
      io_output_r_payload_id => axiSlaves_0_readOnly_r_payload_id,
      io_output_r_payload_resp => axiSlaves_0_readOnly_r_payload_resp,
      io_output_r_payload_last => axiSlaves_0_readOnly_r_payload_last,
      clk => clk,
      reset => reset 
    );
  axiSlaves_0_writeOnly_arbiter : entity work.Axi4WriteOnlyArbiter
    port map ( 
      io_inputs_0_aw_valid => zz_28,
      io_inputs_0_aw_ready => axiSlaves_0_writeOnly_arbiter_io_inputs_0_aw_ready,
      io_inputs_0_aw_payload_addr => axiMasters_1_writeOnly_decoder_io_outputs_0_aw_payload_addr,
      io_inputs_0_aw_payload_id => zz_87,
      io_inputs_0_aw_payload_region => axiMasters_1_writeOnly_decoder_io_outputs_0_aw_payload_region,
      io_inputs_0_aw_payload_len => axiMasters_1_writeOnly_decoder_io_outputs_0_aw_payload_len,
      io_inputs_0_aw_payload_size => axiMasters_1_writeOnly_decoder_io_outputs_0_aw_payload_size,
      io_inputs_0_aw_payload_burst => axiMasters_1_writeOnly_decoder_io_outputs_0_aw_payload_burst,
      io_inputs_0_aw_payload_lock => axiMasters_1_writeOnly_decoder_io_outputs_0_aw_payload_lock,
      io_inputs_0_aw_payload_cache => axiMasters_1_writeOnly_decoder_io_outputs_0_aw_payload_cache,
      io_inputs_0_aw_payload_qos => axiMasters_1_writeOnly_decoder_io_outputs_0_aw_payload_qos,
      io_inputs_0_aw_payload_prot => axiMasters_1_writeOnly_decoder_io_outputs_0_aw_payload_prot,
      io_inputs_0_w_valid => axiMasters_1_writeOnly_decoder_io_outputs_0_w_valid,
      io_inputs_0_w_ready => axiSlaves_0_writeOnly_arbiter_io_inputs_0_w_ready,
      io_inputs_0_w_payload_data => axiMasters_1_writeOnly_decoder_io_outputs_0_w_payload_data,
      io_inputs_0_w_payload_strb => axiMasters_1_writeOnly_decoder_io_outputs_0_w_payload_strb,
      io_inputs_0_w_payload_last => axiMasters_1_writeOnly_decoder_io_outputs_0_w_payload_last,
      io_inputs_0_b_valid => axiSlaves_0_writeOnly_arbiter_io_inputs_0_b_valid,
      io_inputs_0_b_ready => axiMasters_1_writeOnly_decoder_io_outputs_0_b_ready,
      io_inputs_0_b_payload_id => axiSlaves_0_writeOnly_arbiter_io_inputs_0_b_payload_id,
      io_inputs_0_b_payload_resp => axiSlaves_0_writeOnly_arbiter_io_inputs_0_b_payload_resp,
      io_inputs_1_aw_valid => zz_46,
      io_inputs_1_aw_ready => axiSlaves_0_writeOnly_arbiter_io_inputs_1_aw_ready,
      io_inputs_1_aw_payload_addr => axiMasters_2_writeOnly_decoder_io_outputs_0_aw_payload_addr,
      io_inputs_1_aw_payload_id => zz_88,
      io_inputs_1_aw_payload_region => axiMasters_2_writeOnly_decoder_io_outputs_0_aw_payload_region,
      io_inputs_1_aw_payload_len => axiMasters_2_writeOnly_decoder_io_outputs_0_aw_payload_len,
      io_inputs_1_aw_payload_size => axiMasters_2_writeOnly_decoder_io_outputs_0_aw_payload_size,
      io_inputs_1_aw_payload_burst => axiMasters_2_writeOnly_decoder_io_outputs_0_aw_payload_burst,
      io_inputs_1_aw_payload_lock => axiMasters_2_writeOnly_decoder_io_outputs_0_aw_payload_lock,
      io_inputs_1_aw_payload_cache => axiMasters_2_writeOnly_decoder_io_outputs_0_aw_payload_cache,
      io_inputs_1_aw_payload_qos => axiMasters_2_writeOnly_decoder_io_outputs_0_aw_payload_qos,
      io_inputs_1_aw_payload_prot => axiMasters_2_writeOnly_decoder_io_outputs_0_aw_payload_prot,
      io_inputs_1_w_valid => axiMasters_2_writeOnly_decoder_io_outputs_0_w_valid,
      io_inputs_1_w_ready => axiSlaves_0_writeOnly_arbiter_io_inputs_1_w_ready,
      io_inputs_1_w_payload_data => axiMasters_2_writeOnly_decoder_io_outputs_0_w_payload_data,
      io_inputs_1_w_payload_strb => axiMasters_2_writeOnly_decoder_io_outputs_0_w_payload_strb,
      io_inputs_1_w_payload_last => axiMasters_2_writeOnly_decoder_io_outputs_0_w_payload_last,
      io_inputs_1_b_valid => axiSlaves_0_writeOnly_arbiter_io_inputs_1_b_valid,
      io_inputs_1_b_ready => axiMasters_2_writeOnly_decoder_io_outputs_0_b_ready,
      io_inputs_1_b_payload_id => axiSlaves_0_writeOnly_arbiter_io_inputs_1_b_payload_id,
      io_inputs_1_b_payload_resp => axiSlaves_0_writeOnly_arbiter_io_inputs_1_b_payload_resp,
      io_output_aw_valid => axiSlaves_0_writeOnly_arbiter_io_output_aw_valid,
      io_output_aw_ready => axiSlaves_0_writeOnly_aw_ready,
      io_output_aw_payload_addr => axiSlaves_0_writeOnly_arbiter_io_output_aw_payload_addr,
      io_output_aw_payload_id => axiSlaves_0_writeOnly_arbiter_io_output_aw_payload_id,
      io_output_aw_payload_region => axiSlaves_0_writeOnly_arbiter_io_output_aw_payload_region,
      io_output_aw_payload_len => axiSlaves_0_writeOnly_arbiter_io_output_aw_payload_len,
      io_output_aw_payload_size => axiSlaves_0_writeOnly_arbiter_io_output_aw_payload_size,
      io_output_aw_payload_burst => axiSlaves_0_writeOnly_arbiter_io_output_aw_payload_burst,
      io_output_aw_payload_lock => axiSlaves_0_writeOnly_arbiter_io_output_aw_payload_lock,
      io_output_aw_payload_cache => axiSlaves_0_writeOnly_arbiter_io_output_aw_payload_cache,
      io_output_aw_payload_qos => axiSlaves_0_writeOnly_arbiter_io_output_aw_payload_qos,
      io_output_aw_payload_prot => axiSlaves_0_writeOnly_arbiter_io_output_aw_payload_prot,
      io_output_w_valid => axiSlaves_0_writeOnly_arbiter_io_output_w_valid,
      io_output_w_ready => axiSlaves_0_writeOnly_w_ready,
      io_output_w_payload_data => axiSlaves_0_writeOnly_arbiter_io_output_w_payload_data,
      io_output_w_payload_strb => axiSlaves_0_writeOnly_arbiter_io_output_w_payload_strb,
      io_output_w_payload_last => axiSlaves_0_writeOnly_arbiter_io_output_w_payload_last,
      io_output_b_valid => axiSlaves_0_writeOnly_b_valid,
      io_output_b_ready => axiSlaves_0_writeOnly_arbiter_io_output_b_ready,
      io_output_b_payload_id => axiSlaves_0_writeOnly_b_payload_id,
      io_output_b_payload_resp => axiSlaves_0_writeOnly_b_payload_resp,
      clk => clk,
      reset => reset 
    );
  axiSlaves_1_readOnly_arbiter : entity work.Axi4ReadOnlyArbiter
    port map ( 
      io_inputs_0_ar_valid => zz_1,
      io_inputs_0_ar_ready => axiSlaves_1_readOnly_arbiter_io_inputs_0_ar_ready,
      io_inputs_0_ar_payload_addr => axiMasters_0_readOnly_decoder_io_outputs_0_ar_payload_addr,
      io_inputs_0_ar_payload_id => zz_89,
      io_inputs_0_ar_payload_region => axiMasters_0_readOnly_decoder_io_outputs_0_ar_payload_region,
      io_inputs_0_ar_payload_len => axiMasters_0_readOnly_decoder_io_outputs_0_ar_payload_len,
      io_inputs_0_ar_payload_size => axiMasters_0_readOnly_decoder_io_outputs_0_ar_payload_size,
      io_inputs_0_ar_payload_burst => axiMasters_0_readOnly_decoder_io_outputs_0_ar_payload_burst,
      io_inputs_0_ar_payload_lock => axiMasters_0_readOnly_decoder_io_outputs_0_ar_payload_lock,
      io_inputs_0_ar_payload_cache => axiMasters_0_readOnly_decoder_io_outputs_0_ar_payload_cache,
      io_inputs_0_ar_payload_qos => axiMasters_0_readOnly_decoder_io_outputs_0_ar_payload_qos,
      io_inputs_0_ar_payload_prot => axiMasters_0_readOnly_decoder_io_outputs_0_ar_payload_prot,
      io_inputs_0_r_valid => axiSlaves_1_readOnly_arbiter_io_inputs_0_r_valid,
      io_inputs_0_r_ready => axiMasters_0_readOnly_decoder_io_outputs_0_r_ready,
      io_inputs_0_r_payload_data => axiSlaves_1_readOnly_arbiter_io_inputs_0_r_payload_data,
      io_inputs_0_r_payload_id => axiSlaves_1_readOnly_arbiter_io_inputs_0_r_payload_id,
      io_inputs_0_r_payload_resp => axiSlaves_1_readOnly_arbiter_io_inputs_0_r_payload_resp,
      io_inputs_0_r_payload_last => axiSlaves_1_readOnly_arbiter_io_inputs_0_r_payload_last,
      io_inputs_1_ar_valid => zz_40,
      io_inputs_1_ar_ready => axiSlaves_1_readOnly_arbiter_io_inputs_1_ar_ready,
      io_inputs_1_ar_payload_addr => axiMasters_2_readOnly_decoder_io_outputs_1_ar_payload_addr,
      io_inputs_1_ar_payload_id => zz_90,
      io_inputs_1_ar_payload_region => axiMasters_2_readOnly_decoder_io_outputs_1_ar_payload_region,
      io_inputs_1_ar_payload_len => axiMasters_2_readOnly_decoder_io_outputs_1_ar_payload_len,
      io_inputs_1_ar_payload_size => axiMasters_2_readOnly_decoder_io_outputs_1_ar_payload_size,
      io_inputs_1_ar_payload_burst => axiMasters_2_readOnly_decoder_io_outputs_1_ar_payload_burst,
      io_inputs_1_ar_payload_lock => axiMasters_2_readOnly_decoder_io_outputs_1_ar_payload_lock,
      io_inputs_1_ar_payload_cache => axiMasters_2_readOnly_decoder_io_outputs_1_ar_payload_cache,
      io_inputs_1_ar_payload_qos => axiMasters_2_readOnly_decoder_io_outputs_1_ar_payload_qos,
      io_inputs_1_ar_payload_prot => axiMasters_2_readOnly_decoder_io_outputs_1_ar_payload_prot,
      io_inputs_1_r_valid => axiSlaves_1_readOnly_arbiter_io_inputs_1_r_valid,
      io_inputs_1_r_ready => axiMasters_2_readOnly_decoder_io_outputs_1_r_ready,
      io_inputs_1_r_payload_data => axiSlaves_1_readOnly_arbiter_io_inputs_1_r_payload_data,
      io_inputs_1_r_payload_id => axiSlaves_1_readOnly_arbiter_io_inputs_1_r_payload_id,
      io_inputs_1_r_payload_resp => axiSlaves_1_readOnly_arbiter_io_inputs_1_r_payload_resp,
      io_inputs_1_r_payload_last => axiSlaves_1_readOnly_arbiter_io_inputs_1_r_payload_last,
      io_output_ar_valid => axiSlaves_1_readOnly_arbiter_io_output_ar_valid,
      io_output_ar_ready => axiSlaves_1_readOnly_ar_ready,
      io_output_ar_payload_addr => axiSlaves_1_readOnly_arbiter_io_output_ar_payload_addr,
      io_output_ar_payload_id => axiSlaves_1_readOnly_arbiter_io_output_ar_payload_id,
      io_output_ar_payload_region => axiSlaves_1_readOnly_arbiter_io_output_ar_payload_region,
      io_output_ar_payload_len => axiSlaves_1_readOnly_arbiter_io_output_ar_payload_len,
      io_output_ar_payload_size => axiSlaves_1_readOnly_arbiter_io_output_ar_payload_size,
      io_output_ar_payload_burst => axiSlaves_1_readOnly_arbiter_io_output_ar_payload_burst,
      io_output_ar_payload_lock => axiSlaves_1_readOnly_arbiter_io_output_ar_payload_lock,
      io_output_ar_payload_cache => axiSlaves_1_readOnly_arbiter_io_output_ar_payload_cache,
      io_output_ar_payload_qos => axiSlaves_1_readOnly_arbiter_io_output_ar_payload_qos,
      io_output_ar_payload_prot => axiSlaves_1_readOnly_arbiter_io_output_ar_payload_prot,
      io_output_r_valid => axiSlaves_1_readOnly_r_valid,
      io_output_r_ready => axiSlaves_1_readOnly_arbiter_io_output_r_ready,
      io_output_r_payload_data => axiSlaves_1_readOnly_r_payload_data,
      io_output_r_payload_id => axiSlaves_1_readOnly_r_payload_id,
      io_output_r_payload_resp => axiSlaves_1_readOnly_r_payload_resp,
      io_output_r_payload_last => axiSlaves_1_readOnly_r_payload_last,
      clk => clk,
      reset => reset 
    );
  axiSlaves_1_writeOnly_arbiter : entity work.Axi4WriteOnlyArbiter
    port map ( 
      io_inputs_0_aw_valid => zz_10,
      io_inputs_0_aw_ready => axiSlaves_1_writeOnly_arbiter_io_inputs_0_aw_ready,
      io_inputs_0_aw_payload_addr => axiMasters_0_writeOnly_decoder_io_outputs_0_aw_payload_addr,
      io_inputs_0_aw_payload_id => zz_91,
      io_inputs_0_aw_payload_region => axiMasters_0_writeOnly_decoder_io_outputs_0_aw_payload_region,
      io_inputs_0_aw_payload_len => axiMasters_0_writeOnly_decoder_io_outputs_0_aw_payload_len,
      io_inputs_0_aw_payload_size => axiMasters_0_writeOnly_decoder_io_outputs_0_aw_payload_size,
      io_inputs_0_aw_payload_burst => axiMasters_0_writeOnly_decoder_io_outputs_0_aw_payload_burst,
      io_inputs_0_aw_payload_lock => axiMasters_0_writeOnly_decoder_io_outputs_0_aw_payload_lock,
      io_inputs_0_aw_payload_cache => axiMasters_0_writeOnly_decoder_io_outputs_0_aw_payload_cache,
      io_inputs_0_aw_payload_qos => axiMasters_0_writeOnly_decoder_io_outputs_0_aw_payload_qos,
      io_inputs_0_aw_payload_prot => axiMasters_0_writeOnly_decoder_io_outputs_0_aw_payload_prot,
      io_inputs_0_w_valid => axiMasters_0_writeOnly_decoder_io_outputs_0_w_valid,
      io_inputs_0_w_ready => axiSlaves_1_writeOnly_arbiter_io_inputs_0_w_ready,
      io_inputs_0_w_payload_data => axiMasters_0_writeOnly_decoder_io_outputs_0_w_payload_data,
      io_inputs_0_w_payload_strb => axiMasters_0_writeOnly_decoder_io_outputs_0_w_payload_strb,
      io_inputs_0_w_payload_last => axiMasters_0_writeOnly_decoder_io_outputs_0_w_payload_last,
      io_inputs_0_b_valid => axiSlaves_1_writeOnly_arbiter_io_inputs_0_b_valid,
      io_inputs_0_b_ready => axiMasters_0_writeOnly_decoder_io_outputs_0_b_ready,
      io_inputs_0_b_payload_id => axiSlaves_1_writeOnly_arbiter_io_inputs_0_b_payload_id,
      io_inputs_0_b_payload_resp => axiSlaves_1_writeOnly_arbiter_io_inputs_0_b_payload_resp,
      io_inputs_1_aw_valid => zz_49,
      io_inputs_1_aw_ready => axiSlaves_1_writeOnly_arbiter_io_inputs_1_aw_ready,
      io_inputs_1_aw_payload_addr => axiMasters_2_writeOnly_decoder_io_outputs_1_aw_payload_addr,
      io_inputs_1_aw_payload_id => zz_92,
      io_inputs_1_aw_payload_region => axiMasters_2_writeOnly_decoder_io_outputs_1_aw_payload_region,
      io_inputs_1_aw_payload_len => axiMasters_2_writeOnly_decoder_io_outputs_1_aw_payload_len,
      io_inputs_1_aw_payload_size => axiMasters_2_writeOnly_decoder_io_outputs_1_aw_payload_size,
      io_inputs_1_aw_payload_burst => axiMasters_2_writeOnly_decoder_io_outputs_1_aw_payload_burst,
      io_inputs_1_aw_payload_lock => axiMasters_2_writeOnly_decoder_io_outputs_1_aw_payload_lock,
      io_inputs_1_aw_payload_cache => axiMasters_2_writeOnly_decoder_io_outputs_1_aw_payload_cache,
      io_inputs_1_aw_payload_qos => axiMasters_2_writeOnly_decoder_io_outputs_1_aw_payload_qos,
      io_inputs_1_aw_payload_prot => axiMasters_2_writeOnly_decoder_io_outputs_1_aw_payload_prot,
      io_inputs_1_w_valid => axiMasters_2_writeOnly_decoder_io_outputs_1_w_valid,
      io_inputs_1_w_ready => axiSlaves_1_writeOnly_arbiter_io_inputs_1_w_ready,
      io_inputs_1_w_payload_data => axiMasters_2_writeOnly_decoder_io_outputs_1_w_payload_data,
      io_inputs_1_w_payload_strb => axiMasters_2_writeOnly_decoder_io_outputs_1_w_payload_strb,
      io_inputs_1_w_payload_last => axiMasters_2_writeOnly_decoder_io_outputs_1_w_payload_last,
      io_inputs_1_b_valid => axiSlaves_1_writeOnly_arbiter_io_inputs_1_b_valid,
      io_inputs_1_b_ready => axiMasters_2_writeOnly_decoder_io_outputs_1_b_ready,
      io_inputs_1_b_payload_id => axiSlaves_1_writeOnly_arbiter_io_inputs_1_b_payload_id,
      io_inputs_1_b_payload_resp => axiSlaves_1_writeOnly_arbiter_io_inputs_1_b_payload_resp,
      io_output_aw_valid => axiSlaves_1_writeOnly_arbiter_io_output_aw_valid,
      io_output_aw_ready => axiSlaves_1_writeOnly_aw_ready,
      io_output_aw_payload_addr => axiSlaves_1_writeOnly_arbiter_io_output_aw_payload_addr,
      io_output_aw_payload_id => axiSlaves_1_writeOnly_arbiter_io_output_aw_payload_id,
      io_output_aw_payload_region => axiSlaves_1_writeOnly_arbiter_io_output_aw_payload_region,
      io_output_aw_payload_len => axiSlaves_1_writeOnly_arbiter_io_output_aw_payload_len,
      io_output_aw_payload_size => axiSlaves_1_writeOnly_arbiter_io_output_aw_payload_size,
      io_output_aw_payload_burst => axiSlaves_1_writeOnly_arbiter_io_output_aw_payload_burst,
      io_output_aw_payload_lock => axiSlaves_1_writeOnly_arbiter_io_output_aw_payload_lock,
      io_output_aw_payload_cache => axiSlaves_1_writeOnly_arbiter_io_output_aw_payload_cache,
      io_output_aw_payload_qos => axiSlaves_1_writeOnly_arbiter_io_output_aw_payload_qos,
      io_output_aw_payload_prot => axiSlaves_1_writeOnly_arbiter_io_output_aw_payload_prot,
      io_output_w_valid => axiSlaves_1_writeOnly_arbiter_io_output_w_valid,
      io_output_w_ready => axiSlaves_1_writeOnly_w_ready,
      io_output_w_payload_data => axiSlaves_1_writeOnly_arbiter_io_output_w_payload_data,
      io_output_w_payload_strb => axiSlaves_1_writeOnly_arbiter_io_output_w_payload_strb,
      io_output_w_payload_last => axiSlaves_1_writeOnly_arbiter_io_output_w_payload_last,
      io_output_b_valid => axiSlaves_1_writeOnly_b_valid,
      io_output_b_ready => axiSlaves_1_writeOnly_arbiter_io_output_b_ready,
      io_output_b_payload_id => axiSlaves_1_writeOnly_b_payload_id,
      io_output_b_payload_resp => axiSlaves_1_writeOnly_b_payload_resp,
      clk => clk,
      reset => reset 
    );
  axiSlaves_2_readOnly_arbiter : entity work.Axi4ReadOnlyArbiter
    port map ( 
      io_inputs_0_ar_valid => zz_4,
      io_inputs_0_ar_ready => axiSlaves_2_readOnly_arbiter_io_inputs_0_ar_ready,
      io_inputs_0_ar_payload_addr => axiMasters_0_readOnly_decoder_io_outputs_1_ar_payload_addr,
      io_inputs_0_ar_payload_id => zz_93,
      io_inputs_0_ar_payload_region => axiMasters_0_readOnly_decoder_io_outputs_1_ar_payload_region,
      io_inputs_0_ar_payload_len => axiMasters_0_readOnly_decoder_io_outputs_1_ar_payload_len,
      io_inputs_0_ar_payload_size => axiMasters_0_readOnly_decoder_io_outputs_1_ar_payload_size,
      io_inputs_0_ar_payload_burst => axiMasters_0_readOnly_decoder_io_outputs_1_ar_payload_burst,
      io_inputs_0_ar_payload_lock => axiMasters_0_readOnly_decoder_io_outputs_1_ar_payload_lock,
      io_inputs_0_ar_payload_cache => axiMasters_0_readOnly_decoder_io_outputs_1_ar_payload_cache,
      io_inputs_0_ar_payload_qos => axiMasters_0_readOnly_decoder_io_outputs_1_ar_payload_qos,
      io_inputs_0_ar_payload_prot => axiMasters_0_readOnly_decoder_io_outputs_1_ar_payload_prot,
      io_inputs_0_r_valid => axiSlaves_2_readOnly_arbiter_io_inputs_0_r_valid,
      io_inputs_0_r_ready => axiMasters_0_readOnly_decoder_io_outputs_1_r_ready,
      io_inputs_0_r_payload_data => axiSlaves_2_readOnly_arbiter_io_inputs_0_r_payload_data,
      io_inputs_0_r_payload_id => axiSlaves_2_readOnly_arbiter_io_inputs_0_r_payload_id,
      io_inputs_0_r_payload_resp => axiSlaves_2_readOnly_arbiter_io_inputs_0_r_payload_resp,
      io_inputs_0_r_payload_last => axiSlaves_2_readOnly_arbiter_io_inputs_0_r_payload_last,
      io_inputs_1_ar_valid => zz_22,
      io_inputs_1_ar_ready => axiSlaves_2_readOnly_arbiter_io_inputs_1_ar_ready,
      io_inputs_1_ar_payload_addr => axiMasters_1_readOnly_decoder_io_outputs_1_ar_payload_addr,
      io_inputs_1_ar_payload_id => zz_94,
      io_inputs_1_ar_payload_region => axiMasters_1_readOnly_decoder_io_outputs_1_ar_payload_region,
      io_inputs_1_ar_payload_len => axiMasters_1_readOnly_decoder_io_outputs_1_ar_payload_len,
      io_inputs_1_ar_payload_size => axiMasters_1_readOnly_decoder_io_outputs_1_ar_payload_size,
      io_inputs_1_ar_payload_burst => axiMasters_1_readOnly_decoder_io_outputs_1_ar_payload_burst,
      io_inputs_1_ar_payload_lock => axiMasters_1_readOnly_decoder_io_outputs_1_ar_payload_lock,
      io_inputs_1_ar_payload_cache => axiMasters_1_readOnly_decoder_io_outputs_1_ar_payload_cache,
      io_inputs_1_ar_payload_qos => axiMasters_1_readOnly_decoder_io_outputs_1_ar_payload_qos,
      io_inputs_1_ar_payload_prot => axiMasters_1_readOnly_decoder_io_outputs_1_ar_payload_prot,
      io_inputs_1_r_valid => axiSlaves_2_readOnly_arbiter_io_inputs_1_r_valid,
      io_inputs_1_r_ready => axiMasters_1_readOnly_decoder_io_outputs_1_r_ready,
      io_inputs_1_r_payload_data => axiSlaves_2_readOnly_arbiter_io_inputs_1_r_payload_data,
      io_inputs_1_r_payload_id => axiSlaves_2_readOnly_arbiter_io_inputs_1_r_payload_id,
      io_inputs_1_r_payload_resp => axiSlaves_2_readOnly_arbiter_io_inputs_1_r_payload_resp,
      io_inputs_1_r_payload_last => axiSlaves_2_readOnly_arbiter_io_inputs_1_r_payload_last,
      io_output_ar_valid => axiSlaves_2_readOnly_arbiter_io_output_ar_valid,
      io_output_ar_ready => axiSlaves_2_readOnly_ar_ready,
      io_output_ar_payload_addr => axiSlaves_2_readOnly_arbiter_io_output_ar_payload_addr,
      io_output_ar_payload_id => axiSlaves_2_readOnly_arbiter_io_output_ar_payload_id,
      io_output_ar_payload_region => axiSlaves_2_readOnly_arbiter_io_output_ar_payload_region,
      io_output_ar_payload_len => axiSlaves_2_readOnly_arbiter_io_output_ar_payload_len,
      io_output_ar_payload_size => axiSlaves_2_readOnly_arbiter_io_output_ar_payload_size,
      io_output_ar_payload_burst => axiSlaves_2_readOnly_arbiter_io_output_ar_payload_burst,
      io_output_ar_payload_lock => axiSlaves_2_readOnly_arbiter_io_output_ar_payload_lock,
      io_output_ar_payload_cache => axiSlaves_2_readOnly_arbiter_io_output_ar_payload_cache,
      io_output_ar_payload_qos => axiSlaves_2_readOnly_arbiter_io_output_ar_payload_qos,
      io_output_ar_payload_prot => axiSlaves_2_readOnly_arbiter_io_output_ar_payload_prot,
      io_output_r_valid => axiSlaves_2_readOnly_r_valid,
      io_output_r_ready => axiSlaves_2_readOnly_arbiter_io_output_r_ready,
      io_output_r_payload_data => axiSlaves_2_readOnly_r_payload_data,
      io_output_r_payload_id => axiSlaves_2_readOnly_r_payload_id,
      io_output_r_payload_resp => axiSlaves_2_readOnly_r_payload_resp,
      io_output_r_payload_last => axiSlaves_2_readOnly_r_payload_last,
      clk => clk,
      reset => reset 
    );
  axiSlaves_2_writeOnly_arbiter : entity work.Axi4WriteOnlyArbiter
    port map ( 
      io_inputs_0_aw_valid => zz_13,
      io_inputs_0_aw_ready => axiSlaves_2_writeOnly_arbiter_io_inputs_0_aw_ready,
      io_inputs_0_aw_payload_addr => axiMasters_0_writeOnly_decoder_io_outputs_1_aw_payload_addr,
      io_inputs_0_aw_payload_id => zz_95,
      io_inputs_0_aw_payload_region => axiMasters_0_writeOnly_decoder_io_outputs_1_aw_payload_region,
      io_inputs_0_aw_payload_len => axiMasters_0_writeOnly_decoder_io_outputs_1_aw_payload_len,
      io_inputs_0_aw_payload_size => axiMasters_0_writeOnly_decoder_io_outputs_1_aw_payload_size,
      io_inputs_0_aw_payload_burst => axiMasters_0_writeOnly_decoder_io_outputs_1_aw_payload_burst,
      io_inputs_0_aw_payload_lock => axiMasters_0_writeOnly_decoder_io_outputs_1_aw_payload_lock,
      io_inputs_0_aw_payload_cache => axiMasters_0_writeOnly_decoder_io_outputs_1_aw_payload_cache,
      io_inputs_0_aw_payload_qos => axiMasters_0_writeOnly_decoder_io_outputs_1_aw_payload_qos,
      io_inputs_0_aw_payload_prot => axiMasters_0_writeOnly_decoder_io_outputs_1_aw_payload_prot,
      io_inputs_0_w_valid => axiMasters_0_writeOnly_decoder_io_outputs_1_w_valid,
      io_inputs_0_w_ready => axiSlaves_2_writeOnly_arbiter_io_inputs_0_w_ready,
      io_inputs_0_w_payload_data => axiMasters_0_writeOnly_decoder_io_outputs_1_w_payload_data,
      io_inputs_0_w_payload_strb => axiMasters_0_writeOnly_decoder_io_outputs_1_w_payload_strb,
      io_inputs_0_w_payload_last => axiMasters_0_writeOnly_decoder_io_outputs_1_w_payload_last,
      io_inputs_0_b_valid => axiSlaves_2_writeOnly_arbiter_io_inputs_0_b_valid,
      io_inputs_0_b_ready => axiMasters_0_writeOnly_decoder_io_outputs_1_b_ready,
      io_inputs_0_b_payload_id => axiSlaves_2_writeOnly_arbiter_io_inputs_0_b_payload_id,
      io_inputs_0_b_payload_resp => axiSlaves_2_writeOnly_arbiter_io_inputs_0_b_payload_resp,
      io_inputs_1_aw_valid => zz_31,
      io_inputs_1_aw_ready => axiSlaves_2_writeOnly_arbiter_io_inputs_1_aw_ready,
      io_inputs_1_aw_payload_addr => axiMasters_1_writeOnly_decoder_io_outputs_1_aw_payload_addr,
      io_inputs_1_aw_payload_id => zz_96,
      io_inputs_1_aw_payload_region => axiMasters_1_writeOnly_decoder_io_outputs_1_aw_payload_region,
      io_inputs_1_aw_payload_len => axiMasters_1_writeOnly_decoder_io_outputs_1_aw_payload_len,
      io_inputs_1_aw_payload_size => axiMasters_1_writeOnly_decoder_io_outputs_1_aw_payload_size,
      io_inputs_1_aw_payload_burst => axiMasters_1_writeOnly_decoder_io_outputs_1_aw_payload_burst,
      io_inputs_1_aw_payload_lock => axiMasters_1_writeOnly_decoder_io_outputs_1_aw_payload_lock,
      io_inputs_1_aw_payload_cache => axiMasters_1_writeOnly_decoder_io_outputs_1_aw_payload_cache,
      io_inputs_1_aw_payload_qos => axiMasters_1_writeOnly_decoder_io_outputs_1_aw_payload_qos,
      io_inputs_1_aw_payload_prot => axiMasters_1_writeOnly_decoder_io_outputs_1_aw_payload_prot,
      io_inputs_1_w_valid => axiMasters_1_writeOnly_decoder_io_outputs_1_w_valid,
      io_inputs_1_w_ready => axiSlaves_2_writeOnly_arbiter_io_inputs_1_w_ready,
      io_inputs_1_w_payload_data => axiMasters_1_writeOnly_decoder_io_outputs_1_w_payload_data,
      io_inputs_1_w_payload_strb => axiMasters_1_writeOnly_decoder_io_outputs_1_w_payload_strb,
      io_inputs_1_w_payload_last => axiMasters_1_writeOnly_decoder_io_outputs_1_w_payload_last,
      io_inputs_1_b_valid => axiSlaves_2_writeOnly_arbiter_io_inputs_1_b_valid,
      io_inputs_1_b_ready => axiMasters_1_writeOnly_decoder_io_outputs_1_b_ready,
      io_inputs_1_b_payload_id => axiSlaves_2_writeOnly_arbiter_io_inputs_1_b_payload_id,
      io_inputs_1_b_payload_resp => axiSlaves_2_writeOnly_arbiter_io_inputs_1_b_payload_resp,
      io_output_aw_valid => axiSlaves_2_writeOnly_arbiter_io_output_aw_valid,
      io_output_aw_ready => axiSlaves_2_writeOnly_aw_ready,
      io_output_aw_payload_addr => axiSlaves_2_writeOnly_arbiter_io_output_aw_payload_addr,
      io_output_aw_payload_id => axiSlaves_2_writeOnly_arbiter_io_output_aw_payload_id,
      io_output_aw_payload_region => axiSlaves_2_writeOnly_arbiter_io_output_aw_payload_region,
      io_output_aw_payload_len => axiSlaves_2_writeOnly_arbiter_io_output_aw_payload_len,
      io_output_aw_payload_size => axiSlaves_2_writeOnly_arbiter_io_output_aw_payload_size,
      io_output_aw_payload_burst => axiSlaves_2_writeOnly_arbiter_io_output_aw_payload_burst,
      io_output_aw_payload_lock => axiSlaves_2_writeOnly_arbiter_io_output_aw_payload_lock,
      io_output_aw_payload_cache => axiSlaves_2_writeOnly_arbiter_io_output_aw_payload_cache,
      io_output_aw_payload_qos => axiSlaves_2_writeOnly_arbiter_io_output_aw_payload_qos,
      io_output_aw_payload_prot => axiSlaves_2_writeOnly_arbiter_io_output_aw_payload_prot,
      io_output_w_valid => axiSlaves_2_writeOnly_arbiter_io_output_w_valid,
      io_output_w_ready => axiSlaves_2_writeOnly_w_ready,
      io_output_w_payload_data => axiSlaves_2_writeOnly_arbiter_io_output_w_payload_data,
      io_output_w_payload_strb => axiSlaves_2_writeOnly_arbiter_io_output_w_payload_strb,
      io_output_w_payload_last => axiSlaves_2_writeOnly_arbiter_io_output_w_payload_last,
      io_output_b_valid => axiSlaves_2_writeOnly_b_valid,
      io_output_b_ready => axiSlaves_2_writeOnly_arbiter_io_output_b_ready,
      io_output_b_payload_id => axiSlaves_2_writeOnly_b_payload_id,
      io_output_b_payload_resp => axiSlaves_2_writeOnly_b_payload_resp,
      clk => clk,
      reset => reset 
    );
  axiSlaves_3_readOnly_arbiter : entity work.Axi4ReadOnlyArbiter_3
    port map ( 
      io_inputs_0_ar_valid => zz_7,
      io_inputs_0_ar_ready => axiSlaves_3_readOnly_arbiter_io_inputs_0_ar_ready,
      io_inputs_0_ar_payload_addr => axiMasters_0_readOnly_decoder_io_outputs_2_ar_payload_addr,
      io_inputs_0_ar_payload_id => axiMasters_0_readOnly_decoder_io_outputs_2_ar_payload_id,
      io_inputs_0_ar_payload_region => axiMasters_0_readOnly_decoder_io_outputs_2_ar_payload_region,
      io_inputs_0_ar_payload_len => axiMasters_0_readOnly_decoder_io_outputs_2_ar_payload_len,
      io_inputs_0_ar_payload_size => axiMasters_0_readOnly_decoder_io_outputs_2_ar_payload_size,
      io_inputs_0_ar_payload_burst => axiMasters_0_readOnly_decoder_io_outputs_2_ar_payload_burst,
      io_inputs_0_ar_payload_lock => axiMasters_0_readOnly_decoder_io_outputs_2_ar_payload_lock,
      io_inputs_0_ar_payload_cache => axiMasters_0_readOnly_decoder_io_outputs_2_ar_payload_cache,
      io_inputs_0_ar_payload_qos => axiMasters_0_readOnly_decoder_io_outputs_2_ar_payload_qos,
      io_inputs_0_ar_payload_prot => axiMasters_0_readOnly_decoder_io_outputs_2_ar_payload_prot,
      io_inputs_0_r_valid => axiSlaves_3_readOnly_arbiter_io_inputs_0_r_valid,
      io_inputs_0_r_ready => axiMasters_0_readOnly_decoder_io_outputs_2_r_ready,
      io_inputs_0_r_payload_data => axiSlaves_3_readOnly_arbiter_io_inputs_0_r_payload_data,
      io_inputs_0_r_payload_id => axiSlaves_3_readOnly_arbiter_io_inputs_0_r_payload_id,
      io_inputs_0_r_payload_resp => axiSlaves_3_readOnly_arbiter_io_inputs_0_r_payload_resp,
      io_inputs_0_r_payload_last => axiSlaves_3_readOnly_arbiter_io_inputs_0_r_payload_last,
      io_inputs_1_ar_valid => zz_25,
      io_inputs_1_ar_ready => axiSlaves_3_readOnly_arbiter_io_inputs_1_ar_ready,
      io_inputs_1_ar_payload_addr => axiMasters_1_readOnly_decoder_io_outputs_2_ar_payload_addr,
      io_inputs_1_ar_payload_id => axiMasters_1_readOnly_decoder_io_outputs_2_ar_payload_id,
      io_inputs_1_ar_payload_region => axiMasters_1_readOnly_decoder_io_outputs_2_ar_payload_region,
      io_inputs_1_ar_payload_len => axiMasters_1_readOnly_decoder_io_outputs_2_ar_payload_len,
      io_inputs_1_ar_payload_size => axiMasters_1_readOnly_decoder_io_outputs_2_ar_payload_size,
      io_inputs_1_ar_payload_burst => axiMasters_1_readOnly_decoder_io_outputs_2_ar_payload_burst,
      io_inputs_1_ar_payload_lock => axiMasters_1_readOnly_decoder_io_outputs_2_ar_payload_lock,
      io_inputs_1_ar_payload_cache => axiMasters_1_readOnly_decoder_io_outputs_2_ar_payload_cache,
      io_inputs_1_ar_payload_qos => axiMasters_1_readOnly_decoder_io_outputs_2_ar_payload_qos,
      io_inputs_1_ar_payload_prot => axiMasters_1_readOnly_decoder_io_outputs_2_ar_payload_prot,
      io_inputs_1_r_valid => axiSlaves_3_readOnly_arbiter_io_inputs_1_r_valid,
      io_inputs_1_r_ready => axiMasters_1_readOnly_decoder_io_outputs_2_r_ready,
      io_inputs_1_r_payload_data => axiSlaves_3_readOnly_arbiter_io_inputs_1_r_payload_data,
      io_inputs_1_r_payload_id => axiSlaves_3_readOnly_arbiter_io_inputs_1_r_payload_id,
      io_inputs_1_r_payload_resp => axiSlaves_3_readOnly_arbiter_io_inputs_1_r_payload_resp,
      io_inputs_1_r_payload_last => axiSlaves_3_readOnly_arbiter_io_inputs_1_r_payload_last,
      io_inputs_2_ar_valid => zz_43,
      io_inputs_2_ar_ready => axiSlaves_3_readOnly_arbiter_io_inputs_2_ar_ready,
      io_inputs_2_ar_payload_addr => axiMasters_2_readOnly_decoder_io_outputs_2_ar_payload_addr,
      io_inputs_2_ar_payload_id => axiMasters_2_readOnly_decoder_io_outputs_2_ar_payload_id,
      io_inputs_2_ar_payload_region => axiMasters_2_readOnly_decoder_io_outputs_2_ar_payload_region,
      io_inputs_2_ar_payload_len => axiMasters_2_readOnly_decoder_io_outputs_2_ar_payload_len,
      io_inputs_2_ar_payload_size => axiMasters_2_readOnly_decoder_io_outputs_2_ar_payload_size,
      io_inputs_2_ar_payload_burst => axiMasters_2_readOnly_decoder_io_outputs_2_ar_payload_burst,
      io_inputs_2_ar_payload_lock => axiMasters_2_readOnly_decoder_io_outputs_2_ar_payload_lock,
      io_inputs_2_ar_payload_cache => axiMasters_2_readOnly_decoder_io_outputs_2_ar_payload_cache,
      io_inputs_2_ar_payload_qos => axiMasters_2_readOnly_decoder_io_outputs_2_ar_payload_qos,
      io_inputs_2_ar_payload_prot => axiMasters_2_readOnly_decoder_io_outputs_2_ar_payload_prot,
      io_inputs_2_r_valid => axiSlaves_3_readOnly_arbiter_io_inputs_2_r_valid,
      io_inputs_2_r_ready => axiMasters_2_readOnly_decoder_io_outputs_2_r_ready,
      io_inputs_2_r_payload_data => axiSlaves_3_readOnly_arbiter_io_inputs_2_r_payload_data,
      io_inputs_2_r_payload_id => axiSlaves_3_readOnly_arbiter_io_inputs_2_r_payload_id,
      io_inputs_2_r_payload_resp => axiSlaves_3_readOnly_arbiter_io_inputs_2_r_payload_resp,
      io_inputs_2_r_payload_last => axiSlaves_3_readOnly_arbiter_io_inputs_2_r_payload_last,
      io_output_ar_valid => axiSlaves_3_readOnly_arbiter_io_output_ar_valid,
      io_output_ar_ready => axiSlaves_3_readOnly_ar_ready,
      io_output_ar_payload_addr => axiSlaves_3_readOnly_arbiter_io_output_ar_payload_addr,
      io_output_ar_payload_id => axiSlaves_3_readOnly_arbiter_io_output_ar_payload_id,
      io_output_ar_payload_region => axiSlaves_3_readOnly_arbiter_io_output_ar_payload_region,
      io_output_ar_payload_len => axiSlaves_3_readOnly_arbiter_io_output_ar_payload_len,
      io_output_ar_payload_size => axiSlaves_3_readOnly_arbiter_io_output_ar_payload_size,
      io_output_ar_payload_burst => axiSlaves_3_readOnly_arbiter_io_output_ar_payload_burst,
      io_output_ar_payload_lock => axiSlaves_3_readOnly_arbiter_io_output_ar_payload_lock,
      io_output_ar_payload_cache => axiSlaves_3_readOnly_arbiter_io_output_ar_payload_cache,
      io_output_ar_payload_qos => axiSlaves_3_readOnly_arbiter_io_output_ar_payload_qos,
      io_output_ar_payload_prot => axiSlaves_3_readOnly_arbiter_io_output_ar_payload_prot,
      io_output_r_valid => axiSlaves_3_readOnly_r_valid,
      io_output_r_ready => axiSlaves_3_readOnly_arbiter_io_output_r_ready,
      io_output_r_payload_data => axiSlaves_3_readOnly_r_payload_data,
      io_output_r_payload_id => axiSlaves_3_readOnly_r_payload_id,
      io_output_r_payload_resp => axiSlaves_3_readOnly_r_payload_resp,
      io_output_r_payload_last => axiSlaves_3_readOnly_r_payload_last,
      clk => clk,
      reset => reset 
    );
  axiSlaves_3_writeOnly_arbiter : entity work.Axi4WriteOnlyArbiter_3
    port map ( 
      io_inputs_0_aw_valid => zz_16,
      io_inputs_0_aw_ready => axiSlaves_3_writeOnly_arbiter_io_inputs_0_aw_ready,
      io_inputs_0_aw_payload_addr => axiMasters_0_writeOnly_decoder_io_outputs_2_aw_payload_addr,
      io_inputs_0_aw_payload_id => axiMasters_0_writeOnly_decoder_io_outputs_2_aw_payload_id,
      io_inputs_0_aw_payload_region => axiMasters_0_writeOnly_decoder_io_outputs_2_aw_payload_region,
      io_inputs_0_aw_payload_len => axiMasters_0_writeOnly_decoder_io_outputs_2_aw_payload_len,
      io_inputs_0_aw_payload_size => axiMasters_0_writeOnly_decoder_io_outputs_2_aw_payload_size,
      io_inputs_0_aw_payload_burst => axiMasters_0_writeOnly_decoder_io_outputs_2_aw_payload_burst,
      io_inputs_0_aw_payload_lock => axiMasters_0_writeOnly_decoder_io_outputs_2_aw_payload_lock,
      io_inputs_0_aw_payload_cache => axiMasters_0_writeOnly_decoder_io_outputs_2_aw_payload_cache,
      io_inputs_0_aw_payload_qos => axiMasters_0_writeOnly_decoder_io_outputs_2_aw_payload_qos,
      io_inputs_0_aw_payload_prot => axiMasters_0_writeOnly_decoder_io_outputs_2_aw_payload_prot,
      io_inputs_0_w_valid => axiMasters_0_writeOnly_decoder_io_outputs_2_w_valid,
      io_inputs_0_w_ready => axiSlaves_3_writeOnly_arbiter_io_inputs_0_w_ready,
      io_inputs_0_w_payload_data => axiMasters_0_writeOnly_decoder_io_outputs_2_w_payload_data,
      io_inputs_0_w_payload_strb => axiMasters_0_writeOnly_decoder_io_outputs_2_w_payload_strb,
      io_inputs_0_w_payload_last => axiMasters_0_writeOnly_decoder_io_outputs_2_w_payload_last,
      io_inputs_0_b_valid => axiSlaves_3_writeOnly_arbiter_io_inputs_0_b_valid,
      io_inputs_0_b_ready => axiMasters_0_writeOnly_decoder_io_outputs_2_b_ready,
      io_inputs_0_b_payload_id => axiSlaves_3_writeOnly_arbiter_io_inputs_0_b_payload_id,
      io_inputs_0_b_payload_resp => axiSlaves_3_writeOnly_arbiter_io_inputs_0_b_payload_resp,
      io_inputs_1_aw_valid => zz_34,
      io_inputs_1_aw_ready => axiSlaves_3_writeOnly_arbiter_io_inputs_1_aw_ready,
      io_inputs_1_aw_payload_addr => axiMasters_1_writeOnly_decoder_io_outputs_2_aw_payload_addr,
      io_inputs_1_aw_payload_id => axiMasters_1_writeOnly_decoder_io_outputs_2_aw_payload_id,
      io_inputs_1_aw_payload_region => axiMasters_1_writeOnly_decoder_io_outputs_2_aw_payload_region,
      io_inputs_1_aw_payload_len => axiMasters_1_writeOnly_decoder_io_outputs_2_aw_payload_len,
      io_inputs_1_aw_payload_size => axiMasters_1_writeOnly_decoder_io_outputs_2_aw_payload_size,
      io_inputs_1_aw_payload_burst => axiMasters_1_writeOnly_decoder_io_outputs_2_aw_payload_burst,
      io_inputs_1_aw_payload_lock => axiMasters_1_writeOnly_decoder_io_outputs_2_aw_payload_lock,
      io_inputs_1_aw_payload_cache => axiMasters_1_writeOnly_decoder_io_outputs_2_aw_payload_cache,
      io_inputs_1_aw_payload_qos => axiMasters_1_writeOnly_decoder_io_outputs_2_aw_payload_qos,
      io_inputs_1_aw_payload_prot => axiMasters_1_writeOnly_decoder_io_outputs_2_aw_payload_prot,
      io_inputs_1_w_valid => axiMasters_1_writeOnly_decoder_io_outputs_2_w_valid,
      io_inputs_1_w_ready => axiSlaves_3_writeOnly_arbiter_io_inputs_1_w_ready,
      io_inputs_1_w_payload_data => axiMasters_1_writeOnly_decoder_io_outputs_2_w_payload_data,
      io_inputs_1_w_payload_strb => axiMasters_1_writeOnly_decoder_io_outputs_2_w_payload_strb,
      io_inputs_1_w_payload_last => axiMasters_1_writeOnly_decoder_io_outputs_2_w_payload_last,
      io_inputs_1_b_valid => axiSlaves_3_writeOnly_arbiter_io_inputs_1_b_valid,
      io_inputs_1_b_ready => axiMasters_1_writeOnly_decoder_io_outputs_2_b_ready,
      io_inputs_1_b_payload_id => axiSlaves_3_writeOnly_arbiter_io_inputs_1_b_payload_id,
      io_inputs_1_b_payload_resp => axiSlaves_3_writeOnly_arbiter_io_inputs_1_b_payload_resp,
      io_inputs_2_aw_valid => zz_52,
      io_inputs_2_aw_ready => axiSlaves_3_writeOnly_arbiter_io_inputs_2_aw_ready,
      io_inputs_2_aw_payload_addr => axiMasters_2_writeOnly_decoder_io_outputs_2_aw_payload_addr,
      io_inputs_2_aw_payload_id => axiMasters_2_writeOnly_decoder_io_outputs_2_aw_payload_id,
      io_inputs_2_aw_payload_region => axiMasters_2_writeOnly_decoder_io_outputs_2_aw_payload_region,
      io_inputs_2_aw_payload_len => axiMasters_2_writeOnly_decoder_io_outputs_2_aw_payload_len,
      io_inputs_2_aw_payload_size => axiMasters_2_writeOnly_decoder_io_outputs_2_aw_payload_size,
      io_inputs_2_aw_payload_burst => axiMasters_2_writeOnly_decoder_io_outputs_2_aw_payload_burst,
      io_inputs_2_aw_payload_lock => axiMasters_2_writeOnly_decoder_io_outputs_2_aw_payload_lock,
      io_inputs_2_aw_payload_cache => axiMasters_2_writeOnly_decoder_io_outputs_2_aw_payload_cache,
      io_inputs_2_aw_payload_qos => axiMasters_2_writeOnly_decoder_io_outputs_2_aw_payload_qos,
      io_inputs_2_aw_payload_prot => axiMasters_2_writeOnly_decoder_io_outputs_2_aw_payload_prot,
      io_inputs_2_w_valid => axiMasters_2_writeOnly_decoder_io_outputs_2_w_valid,
      io_inputs_2_w_ready => axiSlaves_3_writeOnly_arbiter_io_inputs_2_w_ready,
      io_inputs_2_w_payload_data => axiMasters_2_writeOnly_decoder_io_outputs_2_w_payload_data,
      io_inputs_2_w_payload_strb => axiMasters_2_writeOnly_decoder_io_outputs_2_w_payload_strb,
      io_inputs_2_w_payload_last => axiMasters_2_writeOnly_decoder_io_outputs_2_w_payload_last,
      io_inputs_2_b_valid => axiSlaves_3_writeOnly_arbiter_io_inputs_2_b_valid,
      io_inputs_2_b_ready => axiMasters_2_writeOnly_decoder_io_outputs_2_b_ready,
      io_inputs_2_b_payload_id => axiSlaves_3_writeOnly_arbiter_io_inputs_2_b_payload_id,
      io_inputs_2_b_payload_resp => axiSlaves_3_writeOnly_arbiter_io_inputs_2_b_payload_resp,
      io_output_aw_valid => axiSlaves_3_writeOnly_arbiter_io_output_aw_valid,
      io_output_aw_ready => axiSlaves_3_writeOnly_aw_ready,
      io_output_aw_payload_addr => axiSlaves_3_writeOnly_arbiter_io_output_aw_payload_addr,
      io_output_aw_payload_id => axiSlaves_3_writeOnly_arbiter_io_output_aw_payload_id,
      io_output_aw_payload_region => axiSlaves_3_writeOnly_arbiter_io_output_aw_payload_region,
      io_output_aw_payload_len => axiSlaves_3_writeOnly_arbiter_io_output_aw_payload_len,
      io_output_aw_payload_size => axiSlaves_3_writeOnly_arbiter_io_output_aw_payload_size,
      io_output_aw_payload_burst => axiSlaves_3_writeOnly_arbiter_io_output_aw_payload_burst,
      io_output_aw_payload_lock => axiSlaves_3_writeOnly_arbiter_io_output_aw_payload_lock,
      io_output_aw_payload_cache => axiSlaves_3_writeOnly_arbiter_io_output_aw_payload_cache,
      io_output_aw_payload_qos => axiSlaves_3_writeOnly_arbiter_io_output_aw_payload_qos,
      io_output_aw_payload_prot => axiSlaves_3_writeOnly_arbiter_io_output_aw_payload_prot,
      io_output_w_valid => axiSlaves_3_writeOnly_arbiter_io_output_w_valid,
      io_output_w_ready => axiSlaves_3_writeOnly_w_ready,
      io_output_w_payload_data => axiSlaves_3_writeOnly_arbiter_io_output_w_payload_data,
      io_output_w_payload_strb => axiSlaves_3_writeOnly_arbiter_io_output_w_payload_strb,
      io_output_w_payload_last => axiSlaves_3_writeOnly_arbiter_io_output_w_payload_last,
      io_output_b_valid => axiSlaves_3_writeOnly_b_valid,
      io_output_b_ready => axiSlaves_3_writeOnly_arbiter_io_output_b_ready,
      io_output_b_payload_id => axiSlaves_3_writeOnly_b_payload_id,
      io_output_b_payload_resp => axiSlaves_3_writeOnly_b_payload_resp,
      clk => clk,
      reset => reset 
    );
  axiSlaves_0_ar_valid <= axiSlaves_0_readOnly_ar_valid;
  axiSlaves_0_readOnly_ar_ready <= axiSlaves_0_ar_ready;
  axiSlaves_0_ar_payload_addr <= axiSlaves_0_readOnly_ar_payload_addr;
  axiSlaves_0_ar_payload_id <= axiSlaves_0_readOnly_ar_payload_id;
  axiSlaves_0_ar_payload_region <= axiSlaves_0_readOnly_ar_payload_region;
  axiSlaves_0_ar_payload_len <= axiSlaves_0_readOnly_ar_payload_len;
  axiSlaves_0_ar_payload_size <= axiSlaves_0_readOnly_ar_payload_size;
  axiSlaves_0_ar_payload_burst <= axiSlaves_0_readOnly_ar_payload_burst;
  axiSlaves_0_ar_payload_lock <= axiSlaves_0_readOnly_ar_payload_lock;
  axiSlaves_0_ar_payload_cache <= axiSlaves_0_readOnly_ar_payload_cache;
  axiSlaves_0_ar_payload_qos <= axiSlaves_0_readOnly_ar_payload_qos;
  axiSlaves_0_ar_payload_prot <= axiSlaves_0_readOnly_ar_payload_prot;
  axiSlaves_0_readOnly_r_valid <= axiSlaves_0_r_valid;
  axiSlaves_0_r_ready <= axiSlaves_0_readOnly_r_ready;
  axiSlaves_0_readOnly_r_payload_data <= axiSlaves_0_r_payload_data;
  axiSlaves_0_readOnly_r_payload_last <= axiSlaves_0_r_payload_last;
  axiSlaves_0_readOnly_r_payload_id <= axiSlaves_0_r_payload_id;
  axiSlaves_0_readOnly_r_payload_resp <= axiSlaves_0_r_payload_resp;
  axiSlaves_0_aw_valid <= axiSlaves_0_writeOnly_aw_valid;
  axiSlaves_0_writeOnly_aw_ready <= axiSlaves_0_aw_ready;
  axiSlaves_0_aw_payload_addr <= axiSlaves_0_writeOnly_aw_payload_addr;
  axiSlaves_0_aw_payload_id <= axiSlaves_0_writeOnly_aw_payload_id;
  axiSlaves_0_aw_payload_region <= axiSlaves_0_writeOnly_aw_payload_region;
  axiSlaves_0_aw_payload_len <= axiSlaves_0_writeOnly_aw_payload_len;
  axiSlaves_0_aw_payload_size <= axiSlaves_0_writeOnly_aw_payload_size;
  axiSlaves_0_aw_payload_burst <= axiSlaves_0_writeOnly_aw_payload_burst;
  axiSlaves_0_aw_payload_lock <= axiSlaves_0_writeOnly_aw_payload_lock;
  axiSlaves_0_aw_payload_cache <= axiSlaves_0_writeOnly_aw_payload_cache;
  axiSlaves_0_aw_payload_qos <= axiSlaves_0_writeOnly_aw_payload_qos;
  axiSlaves_0_aw_payload_prot <= axiSlaves_0_writeOnly_aw_payload_prot;
  axiSlaves_0_w_valid <= axiSlaves_0_writeOnly_w_valid;
  axiSlaves_0_writeOnly_w_ready <= axiSlaves_0_w_ready;
  axiSlaves_0_w_payload_data <= axiSlaves_0_writeOnly_w_payload_data;
  axiSlaves_0_w_payload_strb <= axiSlaves_0_writeOnly_w_payload_strb;
  axiSlaves_0_w_payload_last <= axiSlaves_0_writeOnly_w_payload_last;
  axiSlaves_0_writeOnly_b_valid <= axiSlaves_0_b_valid;
  axiSlaves_0_b_ready <= axiSlaves_0_writeOnly_b_ready;
  axiSlaves_0_writeOnly_b_payload_id <= axiSlaves_0_b_payload_id;
  axiSlaves_0_writeOnly_b_payload_resp <= axiSlaves_0_b_payload_resp;
  axiSlaves_1_ar_valid <= axiSlaves_1_readOnly_ar_valid;
  axiSlaves_1_readOnly_ar_ready <= axiSlaves_1_ar_ready;
  axiSlaves_1_ar_payload_addr <= axiSlaves_1_readOnly_ar_payload_addr;
  axiSlaves_1_ar_payload_id <= axiSlaves_1_readOnly_ar_payload_id;
  axiSlaves_1_ar_payload_region <= axiSlaves_1_readOnly_ar_payload_region;
  axiSlaves_1_ar_payload_len <= axiSlaves_1_readOnly_ar_payload_len;
  axiSlaves_1_ar_payload_size <= axiSlaves_1_readOnly_ar_payload_size;
  axiSlaves_1_ar_payload_burst <= axiSlaves_1_readOnly_ar_payload_burst;
  axiSlaves_1_ar_payload_lock <= axiSlaves_1_readOnly_ar_payload_lock;
  axiSlaves_1_ar_payload_cache <= axiSlaves_1_readOnly_ar_payload_cache;
  axiSlaves_1_ar_payload_qos <= axiSlaves_1_readOnly_ar_payload_qos;
  axiSlaves_1_ar_payload_prot <= axiSlaves_1_readOnly_ar_payload_prot;
  axiSlaves_1_readOnly_r_valid <= axiSlaves_1_r_valid;
  axiSlaves_1_r_ready <= axiSlaves_1_readOnly_r_ready;
  axiSlaves_1_readOnly_r_payload_data <= axiSlaves_1_r_payload_data;
  axiSlaves_1_readOnly_r_payload_last <= axiSlaves_1_r_payload_last;
  axiSlaves_1_readOnly_r_payload_id <= axiSlaves_1_r_payload_id;
  axiSlaves_1_readOnly_r_payload_resp <= axiSlaves_1_r_payload_resp;
  axiSlaves_1_aw_valid <= axiSlaves_1_writeOnly_aw_valid;
  axiSlaves_1_writeOnly_aw_ready <= axiSlaves_1_aw_ready;
  axiSlaves_1_aw_payload_addr <= axiSlaves_1_writeOnly_aw_payload_addr;
  axiSlaves_1_aw_payload_id <= axiSlaves_1_writeOnly_aw_payload_id;
  axiSlaves_1_aw_payload_region <= axiSlaves_1_writeOnly_aw_payload_region;
  axiSlaves_1_aw_payload_len <= axiSlaves_1_writeOnly_aw_payload_len;
  axiSlaves_1_aw_payload_size <= axiSlaves_1_writeOnly_aw_payload_size;
  axiSlaves_1_aw_payload_burst <= axiSlaves_1_writeOnly_aw_payload_burst;
  axiSlaves_1_aw_payload_lock <= axiSlaves_1_writeOnly_aw_payload_lock;
  axiSlaves_1_aw_payload_cache <= axiSlaves_1_writeOnly_aw_payload_cache;
  axiSlaves_1_aw_payload_qos <= axiSlaves_1_writeOnly_aw_payload_qos;
  axiSlaves_1_aw_payload_prot <= axiSlaves_1_writeOnly_aw_payload_prot;
  axiSlaves_1_w_valid <= axiSlaves_1_writeOnly_w_valid;
  axiSlaves_1_writeOnly_w_ready <= axiSlaves_1_w_ready;
  axiSlaves_1_w_payload_data <= axiSlaves_1_writeOnly_w_payload_data;
  axiSlaves_1_w_payload_strb <= axiSlaves_1_writeOnly_w_payload_strb;
  axiSlaves_1_w_payload_last <= axiSlaves_1_writeOnly_w_payload_last;
  axiSlaves_1_writeOnly_b_valid <= axiSlaves_1_b_valid;
  axiSlaves_1_b_ready <= axiSlaves_1_writeOnly_b_ready;
  axiSlaves_1_writeOnly_b_payload_id <= axiSlaves_1_b_payload_id;
  axiSlaves_1_writeOnly_b_payload_resp <= axiSlaves_1_b_payload_resp;
  axiSlaves_2_ar_valid <= axiSlaves_2_readOnly_ar_valid;
  axiSlaves_2_readOnly_ar_ready <= axiSlaves_2_ar_ready;
  axiSlaves_2_ar_payload_addr <= axiSlaves_2_readOnly_ar_payload_addr;
  axiSlaves_2_ar_payload_id <= axiSlaves_2_readOnly_ar_payload_id;
  axiSlaves_2_ar_payload_region <= axiSlaves_2_readOnly_ar_payload_region;
  axiSlaves_2_ar_payload_len <= axiSlaves_2_readOnly_ar_payload_len;
  axiSlaves_2_ar_payload_size <= axiSlaves_2_readOnly_ar_payload_size;
  axiSlaves_2_ar_payload_burst <= axiSlaves_2_readOnly_ar_payload_burst;
  axiSlaves_2_ar_payload_lock <= axiSlaves_2_readOnly_ar_payload_lock;
  axiSlaves_2_ar_payload_cache <= axiSlaves_2_readOnly_ar_payload_cache;
  axiSlaves_2_ar_payload_qos <= axiSlaves_2_readOnly_ar_payload_qos;
  axiSlaves_2_ar_payload_prot <= axiSlaves_2_readOnly_ar_payload_prot;
  axiSlaves_2_readOnly_r_valid <= axiSlaves_2_r_valid;
  axiSlaves_2_r_ready <= axiSlaves_2_readOnly_r_ready;
  axiSlaves_2_readOnly_r_payload_data <= axiSlaves_2_r_payload_data;
  axiSlaves_2_readOnly_r_payload_last <= axiSlaves_2_r_payload_last;
  axiSlaves_2_readOnly_r_payload_id <= axiSlaves_2_r_payload_id;
  axiSlaves_2_readOnly_r_payload_resp <= axiSlaves_2_r_payload_resp;
  axiSlaves_2_aw_valid <= axiSlaves_2_writeOnly_aw_valid;
  axiSlaves_2_writeOnly_aw_ready <= axiSlaves_2_aw_ready;
  axiSlaves_2_aw_payload_addr <= axiSlaves_2_writeOnly_aw_payload_addr;
  axiSlaves_2_aw_payload_id <= axiSlaves_2_writeOnly_aw_payload_id;
  axiSlaves_2_aw_payload_region <= axiSlaves_2_writeOnly_aw_payload_region;
  axiSlaves_2_aw_payload_len <= axiSlaves_2_writeOnly_aw_payload_len;
  axiSlaves_2_aw_payload_size <= axiSlaves_2_writeOnly_aw_payload_size;
  axiSlaves_2_aw_payload_burst <= axiSlaves_2_writeOnly_aw_payload_burst;
  axiSlaves_2_aw_payload_lock <= axiSlaves_2_writeOnly_aw_payload_lock;
  axiSlaves_2_aw_payload_cache <= axiSlaves_2_writeOnly_aw_payload_cache;
  axiSlaves_2_aw_payload_qos <= axiSlaves_2_writeOnly_aw_payload_qos;
  axiSlaves_2_aw_payload_prot <= axiSlaves_2_writeOnly_aw_payload_prot;
  axiSlaves_2_w_valid <= axiSlaves_2_writeOnly_w_valid;
  axiSlaves_2_writeOnly_w_ready <= axiSlaves_2_w_ready;
  axiSlaves_2_w_payload_data <= axiSlaves_2_writeOnly_w_payload_data;
  axiSlaves_2_w_payload_strb <= axiSlaves_2_writeOnly_w_payload_strb;
  axiSlaves_2_w_payload_last <= axiSlaves_2_writeOnly_w_payload_last;
  axiSlaves_2_writeOnly_b_valid <= axiSlaves_2_b_valid;
  axiSlaves_2_b_ready <= axiSlaves_2_writeOnly_b_ready;
  axiSlaves_2_writeOnly_b_payload_id <= axiSlaves_2_b_payload_id;
  axiSlaves_2_writeOnly_b_payload_resp <= axiSlaves_2_b_payload_resp;
  axiSlaves_3_ar_valid <= axiSlaves_3_readOnly_ar_valid;
  axiSlaves_3_readOnly_ar_ready <= axiSlaves_3_ar_ready;
  axiSlaves_3_ar_payload_addr <= axiSlaves_3_readOnly_ar_payload_addr;
  axiSlaves_3_ar_payload_id <= axiSlaves_3_readOnly_ar_payload_id;
  axiSlaves_3_ar_payload_region <= axiSlaves_3_readOnly_ar_payload_region;
  axiSlaves_3_ar_payload_len <= axiSlaves_3_readOnly_ar_payload_len;
  axiSlaves_3_ar_payload_size <= axiSlaves_3_readOnly_ar_payload_size;
  axiSlaves_3_ar_payload_burst <= axiSlaves_3_readOnly_ar_payload_burst;
  axiSlaves_3_ar_payload_lock <= axiSlaves_3_readOnly_ar_payload_lock;
  axiSlaves_3_ar_payload_cache <= axiSlaves_3_readOnly_ar_payload_cache;
  axiSlaves_3_ar_payload_qos <= axiSlaves_3_readOnly_ar_payload_qos;
  axiSlaves_3_ar_payload_prot <= axiSlaves_3_readOnly_ar_payload_prot;
  axiSlaves_3_readOnly_r_valid <= axiSlaves_3_r_valid;
  axiSlaves_3_r_ready <= axiSlaves_3_readOnly_r_ready;
  axiSlaves_3_readOnly_r_payload_data <= axiSlaves_3_r_payload_data;
  axiSlaves_3_readOnly_r_payload_last <= axiSlaves_3_r_payload_last;
  axiSlaves_3_readOnly_r_payload_id <= axiSlaves_3_r_payload_id;
  axiSlaves_3_readOnly_r_payload_resp <= axiSlaves_3_r_payload_resp;
  axiSlaves_3_aw_valid <= axiSlaves_3_writeOnly_aw_valid;
  axiSlaves_3_writeOnly_aw_ready <= axiSlaves_3_aw_ready;
  axiSlaves_3_aw_payload_addr <= axiSlaves_3_writeOnly_aw_payload_addr;
  axiSlaves_3_aw_payload_id <= axiSlaves_3_writeOnly_aw_payload_id;
  axiSlaves_3_aw_payload_region <= axiSlaves_3_writeOnly_aw_payload_region;
  axiSlaves_3_aw_payload_len <= axiSlaves_3_writeOnly_aw_payload_len;
  axiSlaves_3_aw_payload_size <= axiSlaves_3_writeOnly_aw_payload_size;
  axiSlaves_3_aw_payload_burst <= axiSlaves_3_writeOnly_aw_payload_burst;
  axiSlaves_3_aw_payload_lock <= axiSlaves_3_writeOnly_aw_payload_lock;
  axiSlaves_3_aw_payload_cache <= axiSlaves_3_writeOnly_aw_payload_cache;
  axiSlaves_3_aw_payload_qos <= axiSlaves_3_writeOnly_aw_payload_qos;
  axiSlaves_3_aw_payload_prot <= axiSlaves_3_writeOnly_aw_payload_prot;
  axiSlaves_3_w_valid <= axiSlaves_3_writeOnly_w_valid;
  axiSlaves_3_writeOnly_w_ready <= axiSlaves_3_w_ready;
  axiSlaves_3_w_payload_data <= axiSlaves_3_writeOnly_w_payload_data;
  axiSlaves_3_w_payload_strb <= axiSlaves_3_writeOnly_w_payload_strb;
  axiSlaves_3_w_payload_last <= axiSlaves_3_writeOnly_w_payload_last;
  axiSlaves_3_writeOnly_b_valid <= axiSlaves_3_b_valid;
  axiSlaves_3_b_ready <= axiSlaves_3_writeOnly_b_ready;
  axiSlaves_3_writeOnly_b_payload_id <= axiSlaves_3_b_payload_id;
  axiSlaves_3_writeOnly_b_payload_resp <= axiSlaves_3_b_payload_resp;
  axiMasters_0_readOnly_ar_valid <= axiMasters_0_ar_valid;
  axiMasters_0_ar_ready <= axiMasters_0_readOnly_ar_ready;
  axiMasters_0_readOnly_ar_payload_addr <= axiMasters_0_ar_payload_addr;
  axiMasters_0_readOnly_ar_payload_id <= axiMasters_0_ar_payload_id;
  axiMasters_0_readOnly_ar_payload_region <= axiMasters_0_ar_payload_region;
  axiMasters_0_readOnly_ar_payload_len <= axiMasters_0_ar_payload_len;
  axiMasters_0_readOnly_ar_payload_size <= axiMasters_0_ar_payload_size;
  axiMasters_0_readOnly_ar_payload_burst <= axiMasters_0_ar_payload_burst;
  axiMasters_0_readOnly_ar_payload_lock <= axiMasters_0_ar_payload_lock;
  axiMasters_0_readOnly_ar_payload_cache <= axiMasters_0_ar_payload_cache;
  axiMasters_0_readOnly_ar_payload_qos <= axiMasters_0_ar_payload_qos;
  axiMasters_0_readOnly_ar_payload_prot <= axiMasters_0_ar_payload_prot;
  axiMasters_0_r_valid <= axiMasters_0_readOnly_r_valid;
  axiMasters_0_readOnly_r_ready <= axiMasters_0_r_ready;
  axiMasters_0_r_payload_data <= axiMasters_0_readOnly_r_payload_data;
  axiMasters_0_r_payload_last <= axiMasters_0_readOnly_r_payload_last;
  axiMasters_0_r_payload_id <= axiMasters_0_readOnly_r_payload_id;
  axiMasters_0_r_payload_resp <= axiMasters_0_readOnly_r_payload_resp;
  axiMasters_0_writeOnly_aw_valid <= axiMasters_0_aw_valid;
  axiMasters_0_aw_ready <= axiMasters_0_writeOnly_aw_ready;
  axiMasters_0_writeOnly_aw_payload_addr <= axiMasters_0_aw_payload_addr;
  axiMasters_0_writeOnly_aw_payload_id <= axiMasters_0_aw_payload_id;
  axiMasters_0_writeOnly_aw_payload_region <= axiMasters_0_aw_payload_region;
  axiMasters_0_writeOnly_aw_payload_len <= axiMasters_0_aw_payload_len;
  axiMasters_0_writeOnly_aw_payload_size <= axiMasters_0_aw_payload_size;
  axiMasters_0_writeOnly_aw_payload_burst <= axiMasters_0_aw_payload_burst;
  axiMasters_0_writeOnly_aw_payload_lock <= axiMasters_0_aw_payload_lock;
  axiMasters_0_writeOnly_aw_payload_cache <= axiMasters_0_aw_payload_cache;
  axiMasters_0_writeOnly_aw_payload_qos <= axiMasters_0_aw_payload_qos;
  axiMasters_0_writeOnly_aw_payload_prot <= axiMasters_0_aw_payload_prot;
  axiMasters_0_writeOnly_w_valid <= axiMasters_0_w_valid;
  axiMasters_0_w_ready <= axiMasters_0_writeOnly_w_ready;
  axiMasters_0_writeOnly_w_payload_data <= axiMasters_0_w_payload_data;
  axiMasters_0_writeOnly_w_payload_strb <= axiMasters_0_w_payload_strb;
  axiMasters_0_writeOnly_w_payload_last <= axiMasters_0_w_payload_last;
  axiMasters_0_b_valid <= axiMasters_0_writeOnly_b_valid;
  axiMasters_0_writeOnly_b_ready <= axiMasters_0_b_ready;
  axiMasters_0_b_payload_id <= axiMasters_0_writeOnly_b_payload_id;
  axiMasters_0_b_payload_resp <= axiMasters_0_writeOnly_b_payload_resp;
  axiMasters_1_readOnly_ar_valid <= axiMasters_1_ar_valid;
  axiMasters_1_ar_ready <= axiMasters_1_readOnly_ar_ready;
  axiMasters_1_readOnly_ar_payload_addr <= axiMasters_1_ar_payload_addr;
  axiMasters_1_readOnly_ar_payload_id <= axiMasters_1_ar_payload_id;
  axiMasters_1_readOnly_ar_payload_region <= axiMasters_1_ar_payload_region;
  axiMasters_1_readOnly_ar_payload_len <= axiMasters_1_ar_payload_len;
  axiMasters_1_readOnly_ar_payload_size <= axiMasters_1_ar_payload_size;
  axiMasters_1_readOnly_ar_payload_burst <= axiMasters_1_ar_payload_burst;
  axiMasters_1_readOnly_ar_payload_lock <= axiMasters_1_ar_payload_lock;
  axiMasters_1_readOnly_ar_payload_cache <= axiMasters_1_ar_payload_cache;
  axiMasters_1_readOnly_ar_payload_qos <= axiMasters_1_ar_payload_qos;
  axiMasters_1_readOnly_ar_payload_prot <= axiMasters_1_ar_payload_prot;
  axiMasters_1_r_valid <= axiMasters_1_readOnly_r_valid;
  axiMasters_1_readOnly_r_ready <= axiMasters_1_r_ready;
  axiMasters_1_r_payload_data <= axiMasters_1_readOnly_r_payload_data;
  axiMasters_1_r_payload_last <= axiMasters_1_readOnly_r_payload_last;
  axiMasters_1_r_payload_id <= axiMasters_1_readOnly_r_payload_id;
  axiMasters_1_r_payload_resp <= axiMasters_1_readOnly_r_payload_resp;
  axiMasters_1_writeOnly_aw_valid <= axiMasters_1_aw_valid;
  axiMasters_1_aw_ready <= axiMasters_1_writeOnly_aw_ready;
  axiMasters_1_writeOnly_aw_payload_addr <= axiMasters_1_aw_payload_addr;
  axiMasters_1_writeOnly_aw_payload_id <= axiMasters_1_aw_payload_id;
  axiMasters_1_writeOnly_aw_payload_region <= axiMasters_1_aw_payload_region;
  axiMasters_1_writeOnly_aw_payload_len <= axiMasters_1_aw_payload_len;
  axiMasters_1_writeOnly_aw_payload_size <= axiMasters_1_aw_payload_size;
  axiMasters_1_writeOnly_aw_payload_burst <= axiMasters_1_aw_payload_burst;
  axiMasters_1_writeOnly_aw_payload_lock <= axiMasters_1_aw_payload_lock;
  axiMasters_1_writeOnly_aw_payload_cache <= axiMasters_1_aw_payload_cache;
  axiMasters_1_writeOnly_aw_payload_qos <= axiMasters_1_aw_payload_qos;
  axiMasters_1_writeOnly_aw_payload_prot <= axiMasters_1_aw_payload_prot;
  axiMasters_1_writeOnly_w_valid <= axiMasters_1_w_valid;
  axiMasters_1_w_ready <= axiMasters_1_writeOnly_w_ready;
  axiMasters_1_writeOnly_w_payload_data <= axiMasters_1_w_payload_data;
  axiMasters_1_writeOnly_w_payload_strb <= axiMasters_1_w_payload_strb;
  axiMasters_1_writeOnly_w_payload_last <= axiMasters_1_w_payload_last;
  axiMasters_1_b_valid <= axiMasters_1_writeOnly_b_valid;
  axiMasters_1_writeOnly_b_ready <= axiMasters_1_b_ready;
  axiMasters_1_b_payload_id <= axiMasters_1_writeOnly_b_payload_id;
  axiMasters_1_b_payload_resp <= axiMasters_1_writeOnly_b_payload_resp;
  axiMasters_2_readOnly_ar_valid <= axiMasters_2_ar_valid;
  axiMasters_2_ar_ready <= axiMasters_2_readOnly_ar_ready;
  axiMasters_2_readOnly_ar_payload_addr <= axiMasters_2_ar_payload_addr;
  axiMasters_2_readOnly_ar_payload_id <= axiMasters_2_ar_payload_id;
  axiMasters_2_readOnly_ar_payload_region <= axiMasters_2_ar_payload_region;
  axiMasters_2_readOnly_ar_payload_len <= axiMasters_2_ar_payload_len;
  axiMasters_2_readOnly_ar_payload_size <= axiMasters_2_ar_payload_size;
  axiMasters_2_readOnly_ar_payload_burst <= axiMasters_2_ar_payload_burst;
  axiMasters_2_readOnly_ar_payload_lock <= axiMasters_2_ar_payload_lock;
  axiMasters_2_readOnly_ar_payload_cache <= axiMasters_2_ar_payload_cache;
  axiMasters_2_readOnly_ar_payload_qos <= axiMasters_2_ar_payload_qos;
  axiMasters_2_readOnly_ar_payload_prot <= axiMasters_2_ar_payload_prot;
  axiMasters_2_r_valid <= axiMasters_2_readOnly_r_valid;
  axiMasters_2_readOnly_r_ready <= axiMasters_2_r_ready;
  axiMasters_2_r_payload_data <= axiMasters_2_readOnly_r_payload_data;
  axiMasters_2_r_payload_last <= axiMasters_2_readOnly_r_payload_last;
  axiMasters_2_r_payload_id <= axiMasters_2_readOnly_r_payload_id;
  axiMasters_2_r_payload_resp <= axiMasters_2_readOnly_r_payload_resp;
  axiMasters_2_writeOnly_aw_valid <= axiMasters_2_aw_valid;
  axiMasters_2_aw_ready <= axiMasters_2_writeOnly_aw_ready;
  axiMasters_2_writeOnly_aw_payload_addr <= axiMasters_2_aw_payload_addr;
  axiMasters_2_writeOnly_aw_payload_id <= axiMasters_2_aw_payload_id;
  axiMasters_2_writeOnly_aw_payload_region <= axiMasters_2_aw_payload_region;
  axiMasters_2_writeOnly_aw_payload_len <= axiMasters_2_aw_payload_len;
  axiMasters_2_writeOnly_aw_payload_size <= axiMasters_2_aw_payload_size;
  axiMasters_2_writeOnly_aw_payload_burst <= axiMasters_2_aw_payload_burst;
  axiMasters_2_writeOnly_aw_payload_lock <= axiMasters_2_aw_payload_lock;
  axiMasters_2_writeOnly_aw_payload_cache <= axiMasters_2_aw_payload_cache;
  axiMasters_2_writeOnly_aw_payload_qos <= axiMasters_2_aw_payload_qos;
  axiMasters_2_writeOnly_aw_payload_prot <= axiMasters_2_aw_payload_prot;
  axiMasters_2_writeOnly_w_valid <= axiMasters_2_w_valid;
  axiMasters_2_w_ready <= axiMasters_2_writeOnly_w_ready;
  axiMasters_2_writeOnly_w_payload_data <= axiMasters_2_w_payload_data;
  axiMasters_2_writeOnly_w_payload_strb <= axiMasters_2_w_payload_strb;
  axiMasters_2_writeOnly_w_payload_last <= axiMasters_2_w_payload_last;
  axiMasters_2_b_valid <= axiMasters_2_writeOnly_b_valid;
  axiMasters_2_writeOnly_b_ready <= axiMasters_2_b_ready;
  axiMasters_2_b_payload_id <= axiMasters_2_writeOnly_b_payload_id;
  axiMasters_2_b_payload_resp <= axiMasters_2_writeOnly_b_payload_resp;
  zz_1 <= zz_3;
  zz_55 <= (zz_2 and zz_3);
  zz_2 <= axiSlaves_1_readOnly_arbiter_io_inputs_0_ar_ready;
  zz_56 <= pkg_resize(axiSlaves_1_readOnly_arbiter_io_inputs_0_r_payload_id,4);
  zz_4 <= zz_6;
  zz_57 <= (zz_5 and zz_6);
  zz_5 <= axiSlaves_2_readOnly_arbiter_io_inputs_0_ar_ready;
  zz_58 <= pkg_resize(axiSlaves_2_readOnly_arbiter_io_inputs_0_r_payload_id,4);
  zz_7 <= zz_9;
  zz_59 <= (zz_8 and zz_9);
  zz_8 <= axiSlaves_3_readOnly_arbiter_io_inputs_0_ar_ready;
  axiMasters_0_readOnly_ar_ready <= axiMasters_0_readOnly_decoder_io_input_ar_ready;
  axiMasters_0_readOnly_r_valid <= axiMasters_0_readOnly_decoder_io_input_r_valid;
  axiMasters_0_readOnly_r_payload_data <= axiMasters_0_readOnly_decoder_io_input_r_payload_data;
  axiMasters_0_readOnly_r_payload_last <= axiMasters_0_readOnly_decoder_io_input_r_payload_last;
  axiMasters_0_readOnly_r_payload_id <= axiMasters_0_readOnly_decoder_io_input_r_payload_id;
  axiMasters_0_readOnly_r_payload_resp <= axiMasters_0_readOnly_decoder_io_input_r_payload_resp;
  zz_10 <= zz_12;
  zz_60 <= (zz_11 and zz_12);
  zz_11 <= axiSlaves_1_writeOnly_arbiter_io_inputs_0_aw_ready;
  zz_61 <= pkg_resize(axiSlaves_1_writeOnly_arbiter_io_inputs_0_b_payload_id,4);
  zz_13 <= zz_15;
  zz_62 <= (zz_14 and zz_15);
  zz_14 <= axiSlaves_2_writeOnly_arbiter_io_inputs_0_aw_ready;
  zz_63 <= pkg_resize(axiSlaves_2_writeOnly_arbiter_io_inputs_0_b_payload_id,4);
  zz_16 <= zz_18;
  zz_64 <= (zz_17 and zz_18);
  zz_17 <= axiSlaves_3_writeOnly_arbiter_io_inputs_0_aw_ready;
  axiMasters_0_writeOnly_aw_ready <= axiMasters_0_writeOnly_decoder_io_input_aw_ready;
  axiMasters_0_writeOnly_w_ready <= axiMasters_0_writeOnly_decoder_io_input_w_ready;
  axiMasters_0_writeOnly_b_valid <= axiMasters_0_writeOnly_decoder_io_input_b_valid;
  axiMasters_0_writeOnly_b_payload_id <= axiMasters_0_writeOnly_decoder_io_input_b_payload_id;
  axiMasters_0_writeOnly_b_payload_resp <= axiMasters_0_writeOnly_decoder_io_input_b_payload_resp;
  zz_19 <= zz_21;
  zz_65 <= (zz_20 and zz_21);
  zz_20 <= axiSlaves_0_readOnly_arbiter_io_inputs_0_ar_ready;
  zz_66 <= pkg_resize(axiSlaves_0_readOnly_arbiter_io_inputs_0_r_payload_id,4);
  zz_22 <= zz_24;
  zz_67 <= (zz_23 and zz_24);
  zz_23 <= axiSlaves_2_readOnly_arbiter_io_inputs_1_ar_ready;
  zz_68 <= pkg_resize(axiSlaves_2_readOnly_arbiter_io_inputs_1_r_payload_id,4);
  zz_25 <= zz_27;
  zz_69 <= (zz_26 and zz_27);
  zz_26 <= axiSlaves_3_readOnly_arbiter_io_inputs_1_ar_ready;
  axiMasters_1_readOnly_ar_ready <= axiMasters_1_readOnly_decoder_io_input_ar_ready;
  axiMasters_1_readOnly_r_valid <= axiMasters_1_readOnly_decoder_io_input_r_valid;
  axiMasters_1_readOnly_r_payload_data <= axiMasters_1_readOnly_decoder_io_input_r_payload_data;
  axiMasters_1_readOnly_r_payload_last <= axiMasters_1_readOnly_decoder_io_input_r_payload_last;
  axiMasters_1_readOnly_r_payload_id <= axiMasters_1_readOnly_decoder_io_input_r_payload_id;
  axiMasters_1_readOnly_r_payload_resp <= axiMasters_1_readOnly_decoder_io_input_r_payload_resp;
  zz_28 <= zz_30;
  zz_70 <= (zz_29 and zz_30);
  zz_29 <= axiSlaves_0_writeOnly_arbiter_io_inputs_0_aw_ready;
  zz_71 <= pkg_resize(axiSlaves_0_writeOnly_arbiter_io_inputs_0_b_payload_id,4);
  zz_31 <= zz_33;
  zz_72 <= (zz_32 and zz_33);
  zz_32 <= axiSlaves_2_writeOnly_arbiter_io_inputs_1_aw_ready;
  zz_73 <= pkg_resize(axiSlaves_2_writeOnly_arbiter_io_inputs_1_b_payload_id,4);
  zz_34 <= zz_36;
  zz_74 <= (zz_35 and zz_36);
  zz_35 <= axiSlaves_3_writeOnly_arbiter_io_inputs_1_aw_ready;
  axiMasters_1_writeOnly_aw_ready <= axiMasters_1_writeOnly_decoder_io_input_aw_ready;
  axiMasters_1_writeOnly_w_ready <= axiMasters_1_writeOnly_decoder_io_input_w_ready;
  axiMasters_1_writeOnly_b_valid <= axiMasters_1_writeOnly_decoder_io_input_b_valid;
  axiMasters_1_writeOnly_b_payload_id <= axiMasters_1_writeOnly_decoder_io_input_b_payload_id;
  axiMasters_1_writeOnly_b_payload_resp <= axiMasters_1_writeOnly_decoder_io_input_b_payload_resp;
  zz_37 <= zz_39;
  zz_75 <= (zz_38 and zz_39);
  zz_38 <= axiSlaves_0_readOnly_arbiter_io_inputs_1_ar_ready;
  zz_76 <= pkg_resize(axiSlaves_0_readOnly_arbiter_io_inputs_1_r_payload_id,4);
  zz_40 <= zz_42;
  zz_77 <= (zz_41 and zz_42);
  zz_41 <= axiSlaves_1_readOnly_arbiter_io_inputs_1_ar_ready;
  zz_78 <= pkg_resize(axiSlaves_1_readOnly_arbiter_io_inputs_1_r_payload_id,4);
  zz_43 <= zz_45;
  zz_79 <= (zz_44 and zz_45);
  zz_44 <= axiSlaves_3_readOnly_arbiter_io_inputs_2_ar_ready;
  axiMasters_2_readOnly_ar_ready <= axiMasters_2_readOnly_decoder_io_input_ar_ready;
  axiMasters_2_readOnly_r_valid <= axiMasters_2_readOnly_decoder_io_input_r_valid;
  axiMasters_2_readOnly_r_payload_data <= axiMasters_2_readOnly_decoder_io_input_r_payload_data;
  axiMasters_2_readOnly_r_payload_last <= axiMasters_2_readOnly_decoder_io_input_r_payload_last;
  axiMasters_2_readOnly_r_payload_id <= axiMasters_2_readOnly_decoder_io_input_r_payload_id;
  axiMasters_2_readOnly_r_payload_resp <= axiMasters_2_readOnly_decoder_io_input_r_payload_resp;
  zz_46 <= zz_48;
  zz_80 <= (zz_47 and zz_48);
  zz_47 <= axiSlaves_0_writeOnly_arbiter_io_inputs_1_aw_ready;
  zz_81 <= pkg_resize(axiSlaves_0_writeOnly_arbiter_io_inputs_1_b_payload_id,4);
  zz_49 <= zz_51;
  zz_82 <= (zz_50 and zz_51);
  zz_50 <= axiSlaves_1_writeOnly_arbiter_io_inputs_1_aw_ready;
  zz_83 <= pkg_resize(axiSlaves_1_writeOnly_arbiter_io_inputs_1_b_payload_id,4);
  zz_52 <= zz_54;
  zz_84 <= (zz_53 and zz_54);
  zz_53 <= axiSlaves_3_writeOnly_arbiter_io_inputs_2_aw_ready;
  axiMasters_2_writeOnly_aw_ready <= axiMasters_2_writeOnly_decoder_io_input_aw_ready;
  axiMasters_2_writeOnly_w_ready <= axiMasters_2_writeOnly_decoder_io_input_w_ready;
  axiMasters_2_writeOnly_b_valid <= axiMasters_2_writeOnly_decoder_io_input_b_valid;
  axiMasters_2_writeOnly_b_payload_id <= axiMasters_2_writeOnly_decoder_io_input_b_payload_id;
  axiMasters_2_writeOnly_b_payload_resp <= axiMasters_2_writeOnly_decoder_io_input_b_payload_resp;
  zz_85 <= pkg_resize(axiMasters_1_readOnly_decoder_io_outputs_0_ar_payload_id,5);
  zz_86 <= pkg_resize(axiMasters_2_readOnly_decoder_io_outputs_0_ar_payload_id,5);
  axiSlaves_0_readOnly_ar_valid <= axiSlaves_0_readOnly_arbiter_io_output_ar_valid;
  axiSlaves_0_readOnly_ar_payload_addr <= axiSlaves_0_readOnly_arbiter_io_output_ar_payload_addr;
  axiSlaves_0_readOnly_ar_payload_id <= axiSlaves_0_readOnly_arbiter_io_output_ar_payload_id;
  axiSlaves_0_readOnly_ar_payload_region <= axiSlaves_0_readOnly_arbiter_io_output_ar_payload_region;
  axiSlaves_0_readOnly_ar_payload_len <= axiSlaves_0_readOnly_arbiter_io_output_ar_payload_len;
  axiSlaves_0_readOnly_ar_payload_size <= axiSlaves_0_readOnly_arbiter_io_output_ar_payload_size;
  axiSlaves_0_readOnly_ar_payload_burst <= axiSlaves_0_readOnly_arbiter_io_output_ar_payload_burst;
  axiSlaves_0_readOnly_ar_payload_lock <= axiSlaves_0_readOnly_arbiter_io_output_ar_payload_lock;
  axiSlaves_0_readOnly_ar_payload_cache <= axiSlaves_0_readOnly_arbiter_io_output_ar_payload_cache;
  axiSlaves_0_readOnly_ar_payload_qos <= axiSlaves_0_readOnly_arbiter_io_output_ar_payload_qos;
  axiSlaves_0_readOnly_ar_payload_prot <= axiSlaves_0_readOnly_arbiter_io_output_ar_payload_prot;
  axiSlaves_0_readOnly_r_ready <= axiSlaves_0_readOnly_arbiter_io_output_r_ready;
  zz_87 <= pkg_resize(axiMasters_1_writeOnly_decoder_io_outputs_0_aw_payload_id,5);
  zz_88 <= pkg_resize(axiMasters_2_writeOnly_decoder_io_outputs_0_aw_payload_id,5);
  axiSlaves_0_writeOnly_aw_valid <= axiSlaves_0_writeOnly_arbiter_io_output_aw_valid;
  axiSlaves_0_writeOnly_aw_payload_addr <= axiSlaves_0_writeOnly_arbiter_io_output_aw_payload_addr;
  axiSlaves_0_writeOnly_aw_payload_id <= axiSlaves_0_writeOnly_arbiter_io_output_aw_payload_id;
  axiSlaves_0_writeOnly_aw_payload_region <= axiSlaves_0_writeOnly_arbiter_io_output_aw_payload_region;
  axiSlaves_0_writeOnly_aw_payload_len <= axiSlaves_0_writeOnly_arbiter_io_output_aw_payload_len;
  axiSlaves_0_writeOnly_aw_payload_size <= axiSlaves_0_writeOnly_arbiter_io_output_aw_payload_size;
  axiSlaves_0_writeOnly_aw_payload_burst <= axiSlaves_0_writeOnly_arbiter_io_output_aw_payload_burst;
  axiSlaves_0_writeOnly_aw_payload_lock <= axiSlaves_0_writeOnly_arbiter_io_output_aw_payload_lock;
  axiSlaves_0_writeOnly_aw_payload_cache <= axiSlaves_0_writeOnly_arbiter_io_output_aw_payload_cache;
  axiSlaves_0_writeOnly_aw_payload_qos <= axiSlaves_0_writeOnly_arbiter_io_output_aw_payload_qos;
  axiSlaves_0_writeOnly_aw_payload_prot <= axiSlaves_0_writeOnly_arbiter_io_output_aw_payload_prot;
  axiSlaves_0_writeOnly_w_valid <= axiSlaves_0_writeOnly_arbiter_io_output_w_valid;
  axiSlaves_0_writeOnly_w_payload_data <= axiSlaves_0_writeOnly_arbiter_io_output_w_payload_data;
  axiSlaves_0_writeOnly_w_payload_strb <= axiSlaves_0_writeOnly_arbiter_io_output_w_payload_strb;
  axiSlaves_0_writeOnly_w_payload_last <= axiSlaves_0_writeOnly_arbiter_io_output_w_payload_last;
  axiSlaves_0_writeOnly_b_ready <= axiSlaves_0_writeOnly_arbiter_io_output_b_ready;
  zz_89 <= pkg_resize(axiMasters_0_readOnly_decoder_io_outputs_0_ar_payload_id,5);
  zz_90 <= pkg_resize(axiMasters_2_readOnly_decoder_io_outputs_1_ar_payload_id,5);
  axiSlaves_1_readOnly_ar_valid <= axiSlaves_1_readOnly_arbiter_io_output_ar_valid;
  axiSlaves_1_readOnly_ar_payload_addr <= axiSlaves_1_readOnly_arbiter_io_output_ar_payload_addr;
  axiSlaves_1_readOnly_ar_payload_id <= axiSlaves_1_readOnly_arbiter_io_output_ar_payload_id;
  axiSlaves_1_readOnly_ar_payload_region <= axiSlaves_1_readOnly_arbiter_io_output_ar_payload_region;
  axiSlaves_1_readOnly_ar_payload_len <= axiSlaves_1_readOnly_arbiter_io_output_ar_payload_len;
  axiSlaves_1_readOnly_ar_payload_size <= axiSlaves_1_readOnly_arbiter_io_output_ar_payload_size;
  axiSlaves_1_readOnly_ar_payload_burst <= axiSlaves_1_readOnly_arbiter_io_output_ar_payload_burst;
  axiSlaves_1_readOnly_ar_payload_lock <= axiSlaves_1_readOnly_arbiter_io_output_ar_payload_lock;
  axiSlaves_1_readOnly_ar_payload_cache <= axiSlaves_1_readOnly_arbiter_io_output_ar_payload_cache;
  axiSlaves_1_readOnly_ar_payload_qos <= axiSlaves_1_readOnly_arbiter_io_output_ar_payload_qos;
  axiSlaves_1_readOnly_ar_payload_prot <= axiSlaves_1_readOnly_arbiter_io_output_ar_payload_prot;
  axiSlaves_1_readOnly_r_ready <= axiSlaves_1_readOnly_arbiter_io_output_r_ready;
  zz_91 <= pkg_resize(axiMasters_0_writeOnly_decoder_io_outputs_0_aw_payload_id,5);
  zz_92 <= pkg_resize(axiMasters_2_writeOnly_decoder_io_outputs_1_aw_payload_id,5);
  axiSlaves_1_writeOnly_aw_valid <= axiSlaves_1_writeOnly_arbiter_io_output_aw_valid;
  axiSlaves_1_writeOnly_aw_payload_addr <= axiSlaves_1_writeOnly_arbiter_io_output_aw_payload_addr;
  axiSlaves_1_writeOnly_aw_payload_id <= axiSlaves_1_writeOnly_arbiter_io_output_aw_payload_id;
  axiSlaves_1_writeOnly_aw_payload_region <= axiSlaves_1_writeOnly_arbiter_io_output_aw_payload_region;
  axiSlaves_1_writeOnly_aw_payload_len <= axiSlaves_1_writeOnly_arbiter_io_output_aw_payload_len;
  axiSlaves_1_writeOnly_aw_payload_size <= axiSlaves_1_writeOnly_arbiter_io_output_aw_payload_size;
  axiSlaves_1_writeOnly_aw_payload_burst <= axiSlaves_1_writeOnly_arbiter_io_output_aw_payload_burst;
  axiSlaves_1_writeOnly_aw_payload_lock <= axiSlaves_1_writeOnly_arbiter_io_output_aw_payload_lock;
  axiSlaves_1_writeOnly_aw_payload_cache <= axiSlaves_1_writeOnly_arbiter_io_output_aw_payload_cache;
  axiSlaves_1_writeOnly_aw_payload_qos <= axiSlaves_1_writeOnly_arbiter_io_output_aw_payload_qos;
  axiSlaves_1_writeOnly_aw_payload_prot <= axiSlaves_1_writeOnly_arbiter_io_output_aw_payload_prot;
  axiSlaves_1_writeOnly_w_valid <= axiSlaves_1_writeOnly_arbiter_io_output_w_valid;
  axiSlaves_1_writeOnly_w_payload_data <= axiSlaves_1_writeOnly_arbiter_io_output_w_payload_data;
  axiSlaves_1_writeOnly_w_payload_strb <= axiSlaves_1_writeOnly_arbiter_io_output_w_payload_strb;
  axiSlaves_1_writeOnly_w_payload_last <= axiSlaves_1_writeOnly_arbiter_io_output_w_payload_last;
  axiSlaves_1_writeOnly_b_ready <= axiSlaves_1_writeOnly_arbiter_io_output_b_ready;
  zz_93 <= pkg_resize(axiMasters_0_readOnly_decoder_io_outputs_1_ar_payload_id,5);
  zz_94 <= pkg_resize(axiMasters_1_readOnly_decoder_io_outputs_1_ar_payload_id,5);
  axiSlaves_2_readOnly_ar_valid <= axiSlaves_2_readOnly_arbiter_io_output_ar_valid;
  axiSlaves_2_readOnly_ar_payload_addr <= axiSlaves_2_readOnly_arbiter_io_output_ar_payload_addr;
  axiSlaves_2_readOnly_ar_payload_id <= axiSlaves_2_readOnly_arbiter_io_output_ar_payload_id;
  axiSlaves_2_readOnly_ar_payload_region <= axiSlaves_2_readOnly_arbiter_io_output_ar_payload_region;
  axiSlaves_2_readOnly_ar_payload_len <= axiSlaves_2_readOnly_arbiter_io_output_ar_payload_len;
  axiSlaves_2_readOnly_ar_payload_size <= axiSlaves_2_readOnly_arbiter_io_output_ar_payload_size;
  axiSlaves_2_readOnly_ar_payload_burst <= axiSlaves_2_readOnly_arbiter_io_output_ar_payload_burst;
  axiSlaves_2_readOnly_ar_payload_lock <= axiSlaves_2_readOnly_arbiter_io_output_ar_payload_lock;
  axiSlaves_2_readOnly_ar_payload_cache <= axiSlaves_2_readOnly_arbiter_io_output_ar_payload_cache;
  axiSlaves_2_readOnly_ar_payload_qos <= axiSlaves_2_readOnly_arbiter_io_output_ar_payload_qos;
  axiSlaves_2_readOnly_ar_payload_prot <= axiSlaves_2_readOnly_arbiter_io_output_ar_payload_prot;
  axiSlaves_2_readOnly_r_ready <= axiSlaves_2_readOnly_arbiter_io_output_r_ready;
  zz_95 <= pkg_resize(axiMasters_0_writeOnly_decoder_io_outputs_1_aw_payload_id,5);
  zz_96 <= pkg_resize(axiMasters_1_writeOnly_decoder_io_outputs_1_aw_payload_id,5);
  axiSlaves_2_writeOnly_aw_valid <= axiSlaves_2_writeOnly_arbiter_io_output_aw_valid;
  axiSlaves_2_writeOnly_aw_payload_addr <= axiSlaves_2_writeOnly_arbiter_io_output_aw_payload_addr;
  axiSlaves_2_writeOnly_aw_payload_id <= axiSlaves_2_writeOnly_arbiter_io_output_aw_payload_id;
  axiSlaves_2_writeOnly_aw_payload_region <= axiSlaves_2_writeOnly_arbiter_io_output_aw_payload_region;
  axiSlaves_2_writeOnly_aw_payload_len <= axiSlaves_2_writeOnly_arbiter_io_output_aw_payload_len;
  axiSlaves_2_writeOnly_aw_payload_size <= axiSlaves_2_writeOnly_arbiter_io_output_aw_payload_size;
  axiSlaves_2_writeOnly_aw_payload_burst <= axiSlaves_2_writeOnly_arbiter_io_output_aw_payload_burst;
  axiSlaves_2_writeOnly_aw_payload_lock <= axiSlaves_2_writeOnly_arbiter_io_output_aw_payload_lock;
  axiSlaves_2_writeOnly_aw_payload_cache <= axiSlaves_2_writeOnly_arbiter_io_output_aw_payload_cache;
  axiSlaves_2_writeOnly_aw_payload_qos <= axiSlaves_2_writeOnly_arbiter_io_output_aw_payload_qos;
  axiSlaves_2_writeOnly_aw_payload_prot <= axiSlaves_2_writeOnly_arbiter_io_output_aw_payload_prot;
  axiSlaves_2_writeOnly_w_valid <= axiSlaves_2_writeOnly_arbiter_io_output_w_valid;
  axiSlaves_2_writeOnly_w_payload_data <= axiSlaves_2_writeOnly_arbiter_io_output_w_payload_data;
  axiSlaves_2_writeOnly_w_payload_strb <= axiSlaves_2_writeOnly_arbiter_io_output_w_payload_strb;
  axiSlaves_2_writeOnly_w_payload_last <= axiSlaves_2_writeOnly_arbiter_io_output_w_payload_last;
  axiSlaves_2_writeOnly_b_ready <= axiSlaves_2_writeOnly_arbiter_io_output_b_ready;
  axiSlaves_3_readOnly_ar_valid <= axiSlaves_3_readOnly_arbiter_io_output_ar_valid;
  axiSlaves_3_readOnly_ar_payload_addr <= axiSlaves_3_readOnly_arbiter_io_output_ar_payload_addr;
  axiSlaves_3_readOnly_ar_payload_id <= axiSlaves_3_readOnly_arbiter_io_output_ar_payload_id;
  axiSlaves_3_readOnly_ar_payload_region <= axiSlaves_3_readOnly_arbiter_io_output_ar_payload_region;
  axiSlaves_3_readOnly_ar_payload_len <= axiSlaves_3_readOnly_arbiter_io_output_ar_payload_len;
  axiSlaves_3_readOnly_ar_payload_size <= axiSlaves_3_readOnly_arbiter_io_output_ar_payload_size;
  axiSlaves_3_readOnly_ar_payload_burst <= axiSlaves_3_readOnly_arbiter_io_output_ar_payload_burst;
  axiSlaves_3_readOnly_ar_payload_lock <= axiSlaves_3_readOnly_arbiter_io_output_ar_payload_lock;
  axiSlaves_3_readOnly_ar_payload_cache <= axiSlaves_3_readOnly_arbiter_io_output_ar_payload_cache;
  axiSlaves_3_readOnly_ar_payload_qos <= axiSlaves_3_readOnly_arbiter_io_output_ar_payload_qos;
  axiSlaves_3_readOnly_ar_payload_prot <= axiSlaves_3_readOnly_arbiter_io_output_ar_payload_prot;
  axiSlaves_3_readOnly_r_ready <= axiSlaves_3_readOnly_arbiter_io_output_r_ready;
  axiSlaves_3_writeOnly_aw_valid <= axiSlaves_3_writeOnly_arbiter_io_output_aw_valid;
  axiSlaves_3_writeOnly_aw_payload_addr <= axiSlaves_3_writeOnly_arbiter_io_output_aw_payload_addr;
  axiSlaves_3_writeOnly_aw_payload_id <= axiSlaves_3_writeOnly_arbiter_io_output_aw_payload_id;
  axiSlaves_3_writeOnly_aw_payload_region <= axiSlaves_3_writeOnly_arbiter_io_output_aw_payload_region;
  axiSlaves_3_writeOnly_aw_payload_len <= axiSlaves_3_writeOnly_arbiter_io_output_aw_payload_len;
  axiSlaves_3_writeOnly_aw_payload_size <= axiSlaves_3_writeOnly_arbiter_io_output_aw_payload_size;
  axiSlaves_3_writeOnly_aw_payload_burst <= axiSlaves_3_writeOnly_arbiter_io_output_aw_payload_burst;
  axiSlaves_3_writeOnly_aw_payload_lock <= axiSlaves_3_writeOnly_arbiter_io_output_aw_payload_lock;
  axiSlaves_3_writeOnly_aw_payload_cache <= axiSlaves_3_writeOnly_arbiter_io_output_aw_payload_cache;
  axiSlaves_3_writeOnly_aw_payload_qos <= axiSlaves_3_writeOnly_arbiter_io_output_aw_payload_qos;
  axiSlaves_3_writeOnly_aw_payload_prot <= axiSlaves_3_writeOnly_arbiter_io_output_aw_payload_prot;
  axiSlaves_3_writeOnly_w_valid <= axiSlaves_3_writeOnly_arbiter_io_output_w_valid;
  axiSlaves_3_writeOnly_w_payload_data <= axiSlaves_3_writeOnly_arbiter_io_output_w_payload_data;
  axiSlaves_3_writeOnly_w_payload_strb <= axiSlaves_3_writeOnly_arbiter_io_output_w_payload_strb;
  axiSlaves_3_writeOnly_w_payload_last <= axiSlaves_3_writeOnly_arbiter_io_output_w_payload_last;
  axiSlaves_3_writeOnly_b_ready <= axiSlaves_3_writeOnly_arbiter_io_output_b_ready;
  process(clk, reset)
  begin
    if reset = '1' then
      zz_3 <= pkg_toStdLogic(false);
      zz_6 <= pkg_toStdLogic(false);
      zz_9 <= pkg_toStdLogic(false);
      zz_12 <= pkg_toStdLogic(false);
      zz_15 <= pkg_toStdLogic(false);
      zz_18 <= pkg_toStdLogic(false);
      zz_21 <= pkg_toStdLogic(false);
      zz_24 <= pkg_toStdLogic(false);
      zz_27 <= pkg_toStdLogic(false);
      zz_30 <= pkg_toStdLogic(false);
      zz_33 <= pkg_toStdLogic(false);
      zz_36 <= pkg_toStdLogic(false);
      zz_39 <= pkg_toStdLogic(false);
      zz_42 <= pkg_toStdLogic(false);
      zz_45 <= pkg_toStdLogic(false);
      zz_48 <= pkg_toStdLogic(false);
      zz_51 <= pkg_toStdLogic(false);
      zz_54 <= pkg_toStdLogic(false);
    elsif rising_edge(clk) then
      if axiMasters_0_readOnly_decoder_io_outputs_0_ar_valid = '1' then
        zz_3 <= pkg_toStdLogic(true);
      end if;
      if (zz_1 and zz_2) = '1' then
        zz_3 <= pkg_toStdLogic(false);
      end if;
      if axiMasters_0_readOnly_decoder_io_outputs_1_ar_valid = '1' then
        zz_6 <= pkg_toStdLogic(true);
      end if;
      if (zz_4 and zz_5) = '1' then
        zz_6 <= pkg_toStdLogic(false);
      end if;
      if axiMasters_0_readOnly_decoder_io_outputs_2_ar_valid = '1' then
        zz_9 <= pkg_toStdLogic(true);
      end if;
      if (zz_7 and zz_8) = '1' then
        zz_9 <= pkg_toStdLogic(false);
      end if;
      if axiMasters_0_writeOnly_decoder_io_outputs_0_aw_valid = '1' then
        zz_12 <= pkg_toStdLogic(true);
      end if;
      if (zz_10 and zz_11) = '1' then
        zz_12 <= pkg_toStdLogic(false);
      end if;
      if axiMasters_0_writeOnly_decoder_io_outputs_1_aw_valid = '1' then
        zz_15 <= pkg_toStdLogic(true);
      end if;
      if (zz_13 and zz_14) = '1' then
        zz_15 <= pkg_toStdLogic(false);
      end if;
      if axiMasters_0_writeOnly_decoder_io_outputs_2_aw_valid = '1' then
        zz_18 <= pkg_toStdLogic(true);
      end if;
      if (zz_16 and zz_17) = '1' then
        zz_18 <= pkg_toStdLogic(false);
      end if;
      if axiMasters_1_readOnly_decoder_io_outputs_0_ar_valid = '1' then
        zz_21 <= pkg_toStdLogic(true);
      end if;
      if (zz_19 and zz_20) = '1' then
        zz_21 <= pkg_toStdLogic(false);
      end if;
      if axiMasters_1_readOnly_decoder_io_outputs_1_ar_valid = '1' then
        zz_24 <= pkg_toStdLogic(true);
      end if;
      if (zz_22 and zz_23) = '1' then
        zz_24 <= pkg_toStdLogic(false);
      end if;
      if axiMasters_1_readOnly_decoder_io_outputs_2_ar_valid = '1' then
        zz_27 <= pkg_toStdLogic(true);
      end if;
      if (zz_25 and zz_26) = '1' then
        zz_27 <= pkg_toStdLogic(false);
      end if;
      if axiMasters_1_writeOnly_decoder_io_outputs_0_aw_valid = '1' then
        zz_30 <= pkg_toStdLogic(true);
      end if;
      if (zz_28 and zz_29) = '1' then
        zz_30 <= pkg_toStdLogic(false);
      end if;
      if axiMasters_1_writeOnly_decoder_io_outputs_1_aw_valid = '1' then
        zz_33 <= pkg_toStdLogic(true);
      end if;
      if (zz_31 and zz_32) = '1' then
        zz_33 <= pkg_toStdLogic(false);
      end if;
      if axiMasters_1_writeOnly_decoder_io_outputs_2_aw_valid = '1' then
        zz_36 <= pkg_toStdLogic(true);
      end if;
      if (zz_34 and zz_35) = '1' then
        zz_36 <= pkg_toStdLogic(false);
      end if;
      if axiMasters_2_readOnly_decoder_io_outputs_0_ar_valid = '1' then
        zz_39 <= pkg_toStdLogic(true);
      end if;
      if (zz_37 and zz_38) = '1' then
        zz_39 <= pkg_toStdLogic(false);
      end if;
      if axiMasters_2_readOnly_decoder_io_outputs_1_ar_valid = '1' then
        zz_42 <= pkg_toStdLogic(true);
      end if;
      if (zz_40 and zz_41) = '1' then
        zz_42 <= pkg_toStdLogic(false);
      end if;
      if axiMasters_2_readOnly_decoder_io_outputs_2_ar_valid = '1' then
        zz_45 <= pkg_toStdLogic(true);
      end if;
      if (zz_43 and zz_44) = '1' then
        zz_45 <= pkg_toStdLogic(false);
      end if;
      if axiMasters_2_writeOnly_decoder_io_outputs_0_aw_valid = '1' then
        zz_48 <= pkg_toStdLogic(true);
      end if;
      if (zz_46 and zz_47) = '1' then
        zz_48 <= pkg_toStdLogic(false);
      end if;
      if axiMasters_2_writeOnly_decoder_io_outputs_1_aw_valid = '1' then
        zz_51 <= pkg_toStdLogic(true);
      end if;
      if (zz_49 and zz_50) = '1' then
        zz_51 <= pkg_toStdLogic(false);
      end if;
      if axiMasters_2_writeOnly_decoder_io_outputs_2_aw_valid = '1' then
        zz_54 <= pkg_toStdLogic(true);
      end if;
      if (zz_52 and zz_53) = '1' then
        zz_54 <= pkg_toStdLogic(false);
      end if;
    end if;
  end process;

end arch;

