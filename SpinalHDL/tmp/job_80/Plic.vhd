-- Generator : SpinalHDL v1.4.3    git head : adf552d8f500e7419fff395b7049228e4bc5de26
-- Component : Plic
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


entity Plic is
  port(
    io_apb_PADDR : in unsigned(23 downto 0);
    io_apb_PSEL : in std_logic_vector(0 downto 0);
    io_apb_PENABLE : in std_logic;
    io_apb_PREADY : out std_logic;
    io_apb_PWRITE : in std_logic;
    io_apb_PWDATA : in std_logic_vector(31 downto 0);
    io_apb_PRDATA : out std_logic_vector(31 downto 0);
    io_apb_PSLVERROR : out std_logic;
    io_sources : in std_logic_vector(34 downto 0);
    io_targets : out std_logic_vector(2 downto 0);
    clk : in std_logic;
    reset : in std_logic
  );
end Plic;

architecture arch of Plic is
  signal zz_708 : std_logic;
  signal zz_709 : std_logic;
  signal zz_710 : unsigned(6 downto 0);
  signal zz_711 : unsigned(6 downto 0);
  signal zz_712 : unsigned(6 downto 0);
  signal zz_713 : unsigned(6 downto 0);
  signal zz_714 : unsigned(6 downto 0);
  signal zz_715 : unsigned(6 downto 0);
  signal zz_716 : unsigned(6 downto 0);
  signal zz_717 : unsigned(6 downto 0);
  signal zz_718 : unsigned(6 downto 0);
  signal zz_719 : unsigned(6 downto 0);
  signal zz_720 : unsigned(6 downto 0);
  signal zz_721 : unsigned(6 downto 0);
  signal zz_722 : unsigned(6 downto 0);
  signal zz_723 : unsigned(6 downto 0);
  signal zz_724 : unsigned(6 downto 0);
  signal zz_725 : unsigned(6 downto 0);
  signal zz_726 : unsigned(6 downto 0);
  signal zz_727 : unsigned(6 downto 0);
  signal zz_728 : unsigned(6 downto 0);
  signal zz_729 : unsigned(6 downto 0);
  signal zz_730 : unsigned(6 downto 0);
  signal zz_731 : unsigned(6 downto 0);
  signal zz_732 : unsigned(6 downto 0);
  signal zz_733 : unsigned(6 downto 0);
  signal zz_734 : unsigned(6 downto 0);
  signal zz_735 : unsigned(6 downto 0);
  signal zz_736 : unsigned(6 downto 0);
  signal zz_737 : unsigned(6 downto 0);
  signal zz_738 : unsigned(6 downto 0);
  signal zz_739 : unsigned(6 downto 0);
  signal zz_740 : unsigned(6 downto 0);
  signal zz_741 : unsigned(6 downto 0);
  signal zz_742 : unsigned(6 downto 0);
  signal zz_743 : unsigned(6 downto 0);
  signal zz_744 : unsigned(6 downto 0);
  signal zz_745 : unsigned(6 downto 0);
  signal zz_746 : unsigned(6 downto 0);
  signal zz_747 : unsigned(6 downto 0);
  signal zz_748 : unsigned(6 downto 0);
  signal zz_749 : unsigned(6 downto 0);
  signal zz_750 : unsigned(6 downto 0);
  signal zz_751 : unsigned(6 downto 0);
  signal zz_752 : unsigned(6 downto 0);
  signal zz_753 : unsigned(6 downto 0);
  signal zz_754 : unsigned(6 downto 0);
  signal zz_755 : unsigned(6 downto 0);
  signal zz_756 : unsigned(6 downto 0);
  signal zz_757 : unsigned(6 downto 0);
  signal zz_758 : unsigned(6 downto 0);
  signal zz_759 : unsigned(6 downto 0);
  signal zz_760 : unsigned(6 downto 0);
  signal zz_761 : unsigned(6 downto 0);
  signal zz_762 : unsigned(6 downto 0);
  signal zz_763 : unsigned(6 downto 0);
  signal zz_764 : unsigned(6 downto 0);
  signal zz_765 : unsigned(6 downto 0);
  signal zz_766 : unsigned(6 downto 0);
  signal zz_767 : unsigned(6 downto 0);
  signal zz_768 : unsigned(6 downto 0);
  signal zz_769 : unsigned(6 downto 0);
  signal zz_770 : unsigned(6 downto 0);
  signal zz_771 : unsigned(6 downto 0);
  signal zz_772 : unsigned(6 downto 0);
  signal zz_773 : unsigned(6 downto 0);
  signal zz_774 : unsigned(6 downto 0);
  signal zz_775 : unsigned(6 downto 0);
  signal zz_776 : unsigned(6 downto 0);
  signal zz_777 : unsigned(6 downto 0);
  signal zz_778 : unsigned(6 downto 0);
  signal zz_779 : unsigned(6 downto 0);
  signal zz_780 : unsigned(6 downto 0);
  signal zz_781 : unsigned(6 downto 0);
  signal zz_782 : unsigned(6 downto 0);
  signal zz_783 : unsigned(6 downto 0);
  signal zz_784 : unsigned(6 downto 0);
  signal zz_785 : unsigned(6 downto 0);
  signal zz_786 : unsigned(6 downto 0);
  signal zz_787 : unsigned(6 downto 0);
  signal zz_788 : unsigned(6 downto 0);
  signal zz_789 : unsigned(6 downto 0);
  signal zz_790 : unsigned(6 downto 0);
  signal zz_791 : unsigned(6 downto 0);
  signal zz_792 : unsigned(6 downto 0);
  signal zz_793 : unsigned(6 downto 0);
  signal zz_794 : unsigned(6 downto 0);
  signal zz_795 : unsigned(6 downto 0);
  signal zz_796 : unsigned(6 downto 0);
  signal zz_797 : unsigned(6 downto 0);

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
  signal gateways_0_priority : unsigned(1 downto 0);
  signal gateways_0_ip : std_logic;
  signal gateways_0_waitCompletion : std_logic;
  signal gateways_1_priority : unsigned(1 downto 0);
  signal gateways_1_ip : std_logic;
  signal gateways_1_waitCompletion : std_logic;
  signal gateways_2_priority : unsigned(1 downto 0);
  signal gateways_2_ip : std_logic;
  signal gateways_2_waitCompletion : std_logic;
  signal gateways_3_priority : unsigned(1 downto 0);
  signal gateways_3_ip : std_logic;
  signal gateways_3_waitCompletion : std_logic;
  signal gateways_4_priority : unsigned(1 downto 0);
  signal gateways_4_ip : std_logic;
  signal gateways_4_waitCompletion : std_logic;
  signal gateways_5_priority : unsigned(1 downto 0);
  signal gateways_5_ip : std_logic;
  signal gateways_5_waitCompletion : std_logic;
  signal gateways_6_priority : unsigned(1 downto 0);
  signal gateways_6_ip : std_logic;
  signal gateways_6_waitCompletion : std_logic;
  signal gateways_7_priority : unsigned(1 downto 0);
  signal gateways_7_ip : std_logic;
  signal gateways_7_waitCompletion : std_logic;
  signal gateways_8_priority : unsigned(1 downto 0);
  signal gateways_8_ip : std_logic;
  signal gateways_8_waitCompletion : std_logic;
  signal gateways_9_priority : unsigned(1 downto 0);
  signal gateways_9_ip : std_logic;
  signal gateways_9_waitCompletion : std_logic;
  signal gateways_10_priority : unsigned(1 downto 0);
  signal gateways_10_ip : std_logic;
  signal gateways_10_waitCompletion : std_logic;
  signal gateways_11_priority : unsigned(1 downto 0);
  signal gateways_11_ip : std_logic;
  signal gateways_11_waitCompletion : std_logic;
  signal gateways_12_priority : unsigned(1 downto 0);
  signal gateways_12_ip : std_logic;
  signal gateways_12_waitCompletion : std_logic;
  signal gateways_13_priority : unsigned(1 downto 0);
  signal gateways_13_ip : std_logic;
  signal gateways_13_waitCompletion : std_logic;
  signal gateways_14_priority : unsigned(1 downto 0);
  signal gateways_14_ip : std_logic;
  signal gateways_14_waitCompletion : std_logic;
  signal gateways_15_priority : unsigned(1 downto 0);
  signal gateways_15_ip : std_logic;
  signal gateways_15_waitCompletion : std_logic;
  signal gateways_16_priority : unsigned(1 downto 0);
  signal gateways_16_ip : std_logic;
  signal gateways_16_waitCompletion : std_logic;
  signal gateways_17_priority : unsigned(1 downto 0);
  signal gateways_17_ip : std_logic;
  signal gateways_17_waitCompletion : std_logic;
  signal gateways_18_priority : unsigned(1 downto 0);
  signal gateways_18_ip : std_logic;
  signal gateways_18_waitCompletion : std_logic;
  signal gateways_19_priority : unsigned(1 downto 0);
  signal gateways_19_ip : std_logic;
  signal gateways_19_waitCompletion : std_logic;
  signal gateways_20_priority : unsigned(1 downto 0);
  signal gateways_20_ip : std_logic;
  signal gateways_20_waitCompletion : std_logic;
  signal gateways_21_priority : unsigned(1 downto 0);
  signal gateways_21_ip : std_logic;
  signal gateways_21_waitCompletion : std_logic;
  signal gateways_22_priority : unsigned(1 downto 0);
  signal gateways_22_ip : std_logic;
  signal gateways_22_waitCompletion : std_logic;
  signal gateways_23_priority : unsigned(1 downto 0);
  signal gateways_23_ip : std_logic;
  signal gateways_23_waitCompletion : std_logic;
  signal gateways_24_priority : unsigned(1 downto 0);
  signal gateways_24_ip : std_logic;
  signal gateways_24_waitCompletion : std_logic;
  signal gateways_25_priority : unsigned(1 downto 0);
  signal gateways_25_ip : std_logic;
  signal gateways_25_waitCompletion : std_logic;
  signal gateways_26_priority : unsigned(1 downto 0);
  signal gateways_26_ip : std_logic;
  signal gateways_26_waitCompletion : std_logic;
  signal gateways_27_priority : unsigned(1 downto 0);
  signal gateways_27_ip : std_logic;
  signal gateways_27_waitCompletion : std_logic;
  signal gateways_28_priority : unsigned(1 downto 0);
  signal gateways_28_ip : std_logic;
  signal gateways_28_waitCompletion : std_logic;
  signal gateways_29_priority : unsigned(1 downto 0);
  signal gateways_29_ip : std_logic;
  signal gateways_29_waitCompletion : std_logic;
  signal gateways_30_priority : unsigned(1 downto 0);
  signal gateways_30_ip : std_logic;
  signal gateways_30_waitCompletion : std_logic;
  signal gateways_31_priority : unsigned(1 downto 0);
  signal gateways_31_ip : std_logic;
  signal gateways_31_waitCompletion : std_logic;
  signal gateways_32_priority : unsigned(1 downto 0);
  signal gateways_32_ip : std_logic;
  signal gateways_32_waitCompletion : std_logic;
  signal gateways_33_priority : unsigned(1 downto 0);
  signal gateways_33_ip : std_logic;
  signal gateways_33_waitCompletion : std_logic;
  signal gateways_34_priority : unsigned(1 downto 0);
  signal gateways_34_ip : std_logic;
  signal gateways_34_waitCompletion : std_logic;
  signal targets_0_ie_0 : std_logic;
  signal targets_0_ie_1 : std_logic;
  signal targets_0_ie_2 : std_logic;
  signal targets_0_ie_3 : std_logic;
  signal targets_0_ie_4 : std_logic;
  signal targets_0_ie_5 : std_logic;
  signal targets_0_ie_6 : std_logic;
  signal targets_0_ie_7 : std_logic;
  signal targets_0_ie_8 : std_logic;
  signal targets_0_ie_9 : std_logic;
  signal targets_0_ie_10 : std_logic;
  signal targets_0_ie_11 : std_logic;
  signal targets_0_ie_12 : std_logic;
  signal targets_0_ie_13 : std_logic;
  signal targets_0_ie_14 : std_logic;
  signal targets_0_ie_15 : std_logic;
  signal targets_0_ie_16 : std_logic;
  signal targets_0_ie_17 : std_logic;
  signal targets_0_ie_18 : std_logic;
  signal targets_0_ie_19 : std_logic;
  signal targets_0_ie_20 : std_logic;
  signal targets_0_ie_21 : std_logic;
  signal targets_0_ie_22 : std_logic;
  signal targets_0_ie_23 : std_logic;
  signal targets_0_ie_24 : std_logic;
  signal targets_0_ie_25 : std_logic;
  signal targets_0_ie_26 : std_logic;
  signal targets_0_ie_27 : std_logic;
  signal targets_0_ie_28 : std_logic;
  signal targets_0_ie_29 : std_logic;
  signal targets_0_ie_30 : std_logic;
  signal targets_0_ie_31 : std_logic;
  signal targets_0_ie_32 : std_logic;
  signal targets_0_ie_33 : std_logic;
  signal targets_0_ie_34 : std_logic;
  signal targets_0_threshold : unsigned(1 downto 0);
  signal targets_0_requests_0_priority : unsigned(1 downto 0);
  signal targets_0_requests_0_id : unsigned(6 downto 0);
  signal targets_0_requests_0_valid : std_logic;
  signal targets_0_requests_1_priority : unsigned(1 downto 0);
  signal targets_0_requests_1_id : unsigned(6 downto 0);
  signal targets_0_requests_1_valid : std_logic;
  signal targets_0_requests_2_priority : unsigned(1 downto 0);
  signal targets_0_requests_2_id : unsigned(6 downto 0);
  signal targets_0_requests_2_valid : std_logic;
  signal targets_0_requests_3_priority : unsigned(1 downto 0);
  signal targets_0_requests_3_id : unsigned(6 downto 0);
  signal targets_0_requests_3_valid : std_logic;
  signal targets_0_requests_4_priority : unsigned(1 downto 0);
  signal targets_0_requests_4_id : unsigned(6 downto 0);
  signal targets_0_requests_4_valid : std_logic;
  signal targets_0_requests_5_priority : unsigned(1 downto 0);
  signal targets_0_requests_5_id : unsigned(6 downto 0);
  signal targets_0_requests_5_valid : std_logic;
  signal targets_0_requests_6_priority : unsigned(1 downto 0);
  signal targets_0_requests_6_id : unsigned(6 downto 0);
  signal targets_0_requests_6_valid : std_logic;
  signal targets_0_requests_7_priority : unsigned(1 downto 0);
  signal targets_0_requests_7_id : unsigned(6 downto 0);
  signal targets_0_requests_7_valid : std_logic;
  signal targets_0_requests_8_priority : unsigned(1 downto 0);
  signal targets_0_requests_8_id : unsigned(6 downto 0);
  signal targets_0_requests_8_valid : std_logic;
  signal targets_0_requests_9_priority : unsigned(1 downto 0);
  signal targets_0_requests_9_id : unsigned(6 downto 0);
  signal targets_0_requests_9_valid : std_logic;
  signal targets_0_requests_10_priority : unsigned(1 downto 0);
  signal targets_0_requests_10_id : unsigned(6 downto 0);
  signal targets_0_requests_10_valid : std_logic;
  signal targets_0_requests_11_priority : unsigned(1 downto 0);
  signal targets_0_requests_11_id : unsigned(6 downto 0);
  signal targets_0_requests_11_valid : std_logic;
  signal targets_0_requests_12_priority : unsigned(1 downto 0);
  signal targets_0_requests_12_id : unsigned(6 downto 0);
  signal targets_0_requests_12_valid : std_logic;
  signal targets_0_requests_13_priority : unsigned(1 downto 0);
  signal targets_0_requests_13_id : unsigned(6 downto 0);
  signal targets_0_requests_13_valid : std_logic;
  signal targets_0_requests_14_priority : unsigned(1 downto 0);
  signal targets_0_requests_14_id : unsigned(6 downto 0);
  signal targets_0_requests_14_valid : std_logic;
  signal targets_0_requests_15_priority : unsigned(1 downto 0);
  signal targets_0_requests_15_id : unsigned(6 downto 0);
  signal targets_0_requests_15_valid : std_logic;
  signal targets_0_requests_16_priority : unsigned(1 downto 0);
  signal targets_0_requests_16_id : unsigned(6 downto 0);
  signal targets_0_requests_16_valid : std_logic;
  signal targets_0_requests_17_priority : unsigned(1 downto 0);
  signal targets_0_requests_17_id : unsigned(6 downto 0);
  signal targets_0_requests_17_valid : std_logic;
  signal targets_0_requests_18_priority : unsigned(1 downto 0);
  signal targets_0_requests_18_id : unsigned(6 downto 0);
  signal targets_0_requests_18_valid : std_logic;
  signal targets_0_requests_19_priority : unsigned(1 downto 0);
  signal targets_0_requests_19_id : unsigned(6 downto 0);
  signal targets_0_requests_19_valid : std_logic;
  signal targets_0_requests_20_priority : unsigned(1 downto 0);
  signal targets_0_requests_20_id : unsigned(6 downto 0);
  signal targets_0_requests_20_valid : std_logic;
  signal targets_0_requests_21_priority : unsigned(1 downto 0);
  signal targets_0_requests_21_id : unsigned(6 downto 0);
  signal targets_0_requests_21_valid : std_logic;
  signal targets_0_requests_22_priority : unsigned(1 downto 0);
  signal targets_0_requests_22_id : unsigned(6 downto 0);
  signal targets_0_requests_22_valid : std_logic;
  signal targets_0_requests_23_priority : unsigned(1 downto 0);
  signal targets_0_requests_23_id : unsigned(6 downto 0);
  signal targets_0_requests_23_valid : std_logic;
  signal targets_0_requests_24_priority : unsigned(1 downto 0);
  signal targets_0_requests_24_id : unsigned(6 downto 0);
  signal targets_0_requests_24_valid : std_logic;
  signal targets_0_requests_25_priority : unsigned(1 downto 0);
  signal targets_0_requests_25_id : unsigned(6 downto 0);
  signal targets_0_requests_25_valid : std_logic;
  signal targets_0_requests_26_priority : unsigned(1 downto 0);
  signal targets_0_requests_26_id : unsigned(6 downto 0);
  signal targets_0_requests_26_valid : std_logic;
  signal targets_0_requests_27_priority : unsigned(1 downto 0);
  signal targets_0_requests_27_id : unsigned(6 downto 0);
  signal targets_0_requests_27_valid : std_logic;
  signal targets_0_requests_28_priority : unsigned(1 downto 0);
  signal targets_0_requests_28_id : unsigned(6 downto 0);
  signal targets_0_requests_28_valid : std_logic;
  signal targets_0_requests_29_priority : unsigned(1 downto 0);
  signal targets_0_requests_29_id : unsigned(6 downto 0);
  signal targets_0_requests_29_valid : std_logic;
  signal targets_0_requests_30_priority : unsigned(1 downto 0);
  signal targets_0_requests_30_id : unsigned(6 downto 0);
  signal targets_0_requests_30_valid : std_logic;
  signal targets_0_requests_31_priority : unsigned(1 downto 0);
  signal targets_0_requests_31_id : unsigned(6 downto 0);
  signal targets_0_requests_31_valid : std_logic;
  signal targets_0_requests_32_priority : unsigned(1 downto 0);
  signal targets_0_requests_32_id : unsigned(6 downto 0);
  signal targets_0_requests_32_valid : std_logic;
  signal targets_0_requests_33_priority : unsigned(1 downto 0);
  signal targets_0_requests_33_id : unsigned(6 downto 0);
  signal targets_0_requests_33_valid : std_logic;
  signal targets_0_requests_34_priority : unsigned(1 downto 0);
  signal targets_0_requests_34_id : unsigned(6 downto 0);
  signal targets_0_requests_34_valid : std_logic;
  signal targets_0_requests_35_priority : unsigned(1 downto 0);
  signal targets_0_requests_35_id : unsigned(6 downto 0);
  signal targets_0_requests_35_valid : std_logic;
  signal zz_36 : std_logic;
  signal zz_37 : unsigned(1 downto 0);
  signal zz_38 : std_logic;
  signal zz_39 : std_logic;
  signal zz_40 : unsigned(1 downto 0);
  signal zz_41 : std_logic;
  signal zz_42 : std_logic;
  signal zz_43 : unsigned(1 downto 0);
  signal zz_44 : std_logic;
  signal zz_45 : std_logic;
  signal zz_46 : unsigned(1 downto 0);
  signal zz_47 : std_logic;
  signal zz_48 : std_logic;
  signal zz_49 : unsigned(1 downto 0);
  signal zz_50 : std_logic;
  signal zz_51 : std_logic;
  signal zz_52 : unsigned(1 downto 0);
  signal zz_53 : std_logic;
  signal zz_54 : std_logic;
  signal zz_55 : unsigned(1 downto 0);
  signal zz_56 : std_logic;
  signal zz_57 : std_logic;
  signal zz_58 : unsigned(1 downto 0);
  signal zz_59 : std_logic;
  signal zz_60 : std_logic;
  signal zz_61 : unsigned(1 downto 0);
  signal zz_62 : std_logic;
  signal zz_63 : std_logic;
  signal zz_64 : unsigned(1 downto 0);
  signal zz_65 : std_logic;
  signal zz_66 : std_logic;
  signal zz_67 : unsigned(1 downto 0);
  signal zz_68 : std_logic;
  signal zz_69 : std_logic;
  signal zz_70 : unsigned(1 downto 0);
  signal zz_71 : std_logic;
  signal zz_72 : std_logic;
  signal zz_73 : unsigned(1 downto 0);
  signal zz_74 : std_logic;
  signal zz_75 : std_logic;
  signal zz_76 : unsigned(1 downto 0);
  signal zz_77 : std_logic;
  signal zz_78 : std_logic;
  signal zz_79 : unsigned(1 downto 0);
  signal zz_80 : std_logic;
  signal zz_81 : std_logic;
  signal zz_82 : unsigned(1 downto 0);
  signal zz_83 : std_logic;
  signal zz_84 : std_logic;
  signal zz_85 : unsigned(1 downto 0);
  signal zz_86 : std_logic;
  signal zz_87 : std_logic;
  signal zz_88 : unsigned(1 downto 0);
  signal zz_89 : std_logic;
  signal zz_90 : std_logic;
  signal zz_91 : unsigned(1 downto 0);
  signal zz_92 : std_logic;
  signal zz_93 : std_logic;
  signal zz_94 : unsigned(1 downto 0);
  signal zz_95 : std_logic;
  signal zz_96 : std_logic;
  signal zz_97 : unsigned(1 downto 0);
  signal zz_98 : std_logic;
  signal zz_99 : std_logic;
  signal zz_100 : unsigned(1 downto 0);
  signal zz_101 : std_logic;
  signal zz_102 : std_logic;
  signal zz_103 : unsigned(1 downto 0);
  signal zz_104 : std_logic;
  signal zz_105 : std_logic;
  signal zz_106 : unsigned(1 downto 0);
  signal zz_107 : std_logic;
  signal zz_108 : std_logic;
  signal zz_109 : unsigned(1 downto 0);
  signal zz_110 : std_logic;
  signal zz_111 : std_logic;
  signal zz_112 : unsigned(1 downto 0);
  signal zz_113 : std_logic;
  signal zz_114 : std_logic;
  signal zz_115 : unsigned(1 downto 0);
  signal zz_116 : std_logic;
  signal zz_117 : std_logic;
  signal zz_118 : unsigned(1 downto 0);
  signal zz_119 : std_logic;
  signal zz_120 : std_logic;
  signal zz_121 : unsigned(1 downto 0);
  signal zz_122 : std_logic;
  signal zz_123 : std_logic;
  signal zz_124 : unsigned(1 downto 0);
  signal zz_125 : std_logic;
  signal zz_126 : std_logic;
  signal zz_127 : unsigned(1 downto 0);
  signal zz_128 : std_logic;
  signal zz_129 : std_logic;
  signal zz_130 : unsigned(1 downto 0);
  signal zz_131 : std_logic;
  signal zz_132 : std_logic;
  signal zz_133 : unsigned(1 downto 0);
  signal zz_134 : std_logic;
  signal zz_135 : std_logic;
  signal zz_136 : unsigned(1 downto 0);
  signal zz_137 : std_logic;
  signal zz_138 : std_logic;
  signal targets_0_bestRequest_priority : unsigned(1 downto 0);
  signal targets_0_bestRequest_id : unsigned(6 downto 0);
  signal targets_0_bestRequest_valid : std_logic;
  signal targets_0_iep : std_logic;
  signal targets_0_claim : unsigned(6 downto 0);
  signal zz_139 : std_logic;
  signal zz_140 : std_logic;
  signal zz_141 : std_logic;
  signal zz_142 : std_logic;
  signal zz_143 : std_logic;
  signal zz_144 : std_logic;
  signal zz_145 : std_logic;
  signal zz_146 : std_logic;
  signal zz_147 : std_logic;
  signal zz_148 : std_logic;
  signal zz_149 : std_logic;
  signal zz_150 : std_logic;
  signal zz_151 : std_logic;
  signal zz_152 : std_logic;
  signal zz_153 : std_logic;
  signal zz_154 : std_logic;
  signal zz_155 : std_logic;
  signal zz_156 : std_logic;
  signal zz_157 : std_logic;
  signal zz_158 : std_logic;
  signal zz_159 : std_logic;
  signal zz_160 : std_logic;
  signal zz_161 : std_logic;
  signal zz_162 : std_logic;
  signal zz_163 : std_logic;
  signal zz_164 : std_logic;
  signal zz_165 : std_logic;
  signal zz_166 : std_logic;
  signal zz_167 : std_logic;
  signal zz_168 : std_logic;
  signal zz_169 : std_logic;
  signal zz_170 : std_logic;
  signal zz_171 : std_logic;
  signal zz_172 : std_logic;
  signal zz_173 : std_logic;
  signal zz_174 : unsigned(1 downto 0);
  signal zz_175 : unsigned(1 downto 0);
  signal zz_176 : std_logic;
  signal zz_177 : unsigned(1 downto 0);
  signal zz_178 : std_logic;
  signal zz_179 : unsigned(1 downto 0);
  signal zz_180 : std_logic;
  signal zz_181 : unsigned(1 downto 0);
  signal zz_182 : std_logic;
  signal zz_183 : unsigned(1 downto 0);
  signal zz_184 : std_logic;
  signal zz_185 : unsigned(1 downto 0);
  signal zz_186 : std_logic;
  signal zz_187 : unsigned(1 downto 0);
  signal zz_188 : std_logic;
  signal zz_189 : unsigned(1 downto 0);
  signal zz_190 : std_logic;
  signal zz_191 : unsigned(1 downto 0);
  signal zz_192 : std_logic;
  signal zz_193 : unsigned(1 downto 0);
  signal zz_194 : std_logic;
  signal zz_195 : unsigned(1 downto 0);
  signal zz_196 : std_logic;
  signal zz_197 : unsigned(1 downto 0);
  signal zz_198 : std_logic;
  signal zz_199 : unsigned(1 downto 0);
  signal zz_200 : std_logic;
  signal zz_201 : unsigned(1 downto 0);
  signal zz_202 : std_logic;
  signal zz_203 : unsigned(1 downto 0);
  signal zz_204 : std_logic;
  signal zz_205 : unsigned(1 downto 0);
  signal zz_206 : std_logic;
  signal zz_207 : unsigned(1 downto 0);
  signal zz_208 : std_logic;
  signal zz_209 : unsigned(1 downto 0);
  signal zz_210 : std_logic;
  signal zz_211 : unsigned(1 downto 0);
  signal zz_212 : std_logic;
  signal zz_213 : unsigned(1 downto 0);
  signal zz_214 : std_logic;
  signal zz_215 : unsigned(1 downto 0);
  signal zz_216 : std_logic;
  signal zz_217 : unsigned(1 downto 0);
  signal zz_218 : std_logic;
  signal zz_219 : unsigned(1 downto 0);
  signal zz_220 : std_logic;
  signal zz_221 : unsigned(1 downto 0);
  signal zz_222 : std_logic;
  signal zz_223 : unsigned(1 downto 0);
  signal zz_224 : std_logic;
  signal zz_225 : unsigned(1 downto 0);
  signal zz_226 : std_logic;
  signal zz_227 : unsigned(1 downto 0);
  signal zz_228 : std_logic;
  signal zz_229 : unsigned(1 downto 0);
  signal zz_230 : std_logic;
  signal zz_231 : unsigned(1 downto 0);
  signal zz_232 : std_logic;
  signal zz_233 : unsigned(1 downto 0);
  signal zz_234 : std_logic;
  signal zz_235 : unsigned(1 downto 0);
  signal zz_236 : std_logic;
  signal zz_237 : unsigned(1 downto 0);
  signal zz_238 : std_logic;
  signal zz_239 : unsigned(1 downto 0);
  signal zz_240 : std_logic;
  signal zz_241 : unsigned(1 downto 0);
  signal zz_242 : std_logic;
  signal zz_243 : unsigned(1 downto 0);
  signal zz_244 : std_logic;
  signal zz_245 : unsigned(1 downto 0);
  signal zz_246 : std_logic;
  signal zz_247 : std_logic;
  signal zz_248 : unsigned(1 downto 0);
  signal zz_249 : std_logic;
  signal zz_250 : std_logic;
  signal zz_251 : unsigned(1 downto 0);
  signal zz_252 : std_logic;
  signal zz_253 : std_logic;
  signal zz_254 : unsigned(1 downto 0);
  signal zz_255 : std_logic;
  signal zz_256 : std_logic;
  signal zz_257 : unsigned(1 downto 0);
  signal zz_258 : std_logic;
  signal zz_259 : std_logic;
  signal zz_260 : unsigned(1 downto 0);
  signal zz_261 : std_logic;
  signal zz_262 : std_logic;
  signal zz_263 : unsigned(1 downto 0);
  signal zz_264 : std_logic;
  signal zz_265 : std_logic;
  signal zz_266 : unsigned(1 downto 0);
  signal zz_267 : std_logic;
  signal zz_268 : std_logic;
  signal zz_269 : unsigned(1 downto 0);
  signal zz_270 : std_logic;
  signal zz_271 : std_logic;
  signal zz_272 : unsigned(1 downto 0);
  signal zz_273 : std_logic;
  signal zz_274 : std_logic;
  signal zz_275 : unsigned(1 downto 0);
  signal zz_276 : std_logic;
  signal zz_277 : std_logic;
  signal zz_278 : unsigned(1 downto 0);
  signal zz_279 : std_logic;
  signal zz_280 : std_logic;
  signal zz_281 : unsigned(1 downto 0);
  signal zz_282 : std_logic;
  signal zz_283 : std_logic;
  signal zz_284 : unsigned(1 downto 0);
  signal zz_285 : std_logic;
  signal zz_286 : std_logic;
  signal zz_287 : unsigned(1 downto 0);
  signal zz_288 : std_logic;
  signal zz_289 : std_logic;
  signal zz_290 : unsigned(1 downto 0);
  signal zz_291 : std_logic;
  signal zz_292 : std_logic;
  signal zz_293 : unsigned(1 downto 0);
  signal zz_294 : std_logic;
  signal zz_295 : std_logic;
  signal zz_296 : unsigned(1 downto 0);
  signal zz_297 : std_logic;
  signal zz_298 : std_logic;
  signal zz_299 : unsigned(1 downto 0);
  signal zz_300 : std_logic;
  signal zz_301 : std_logic;
  signal zz_302 : unsigned(1 downto 0);
  signal zz_303 : std_logic;
  signal zz_304 : std_logic;
  signal zz_305 : unsigned(1 downto 0);
  signal zz_306 : std_logic;
  signal zz_307 : std_logic;
  signal zz_308 : unsigned(1 downto 0);
  signal zz_309 : std_logic;
  signal zz_310 : std_logic;
  signal zz_311 : unsigned(1 downto 0);
  signal zz_312 : std_logic;
  signal zz_313 : std_logic;
  signal zz_314 : unsigned(1 downto 0);
  signal zz_315 : std_logic;
  signal zz_316 : std_logic;
  signal zz_317 : unsigned(1 downto 0);
  signal zz_318 : std_logic;
  signal zz_319 : std_logic;
  signal zz_320 : unsigned(1 downto 0);
  signal zz_321 : std_logic;
  signal zz_322 : std_logic;
  signal zz_323 : unsigned(1 downto 0);
  signal zz_324 : std_logic;
  signal zz_325 : std_logic;
  signal zz_326 : unsigned(1 downto 0);
  signal zz_327 : std_logic;
  signal zz_328 : unsigned(1 downto 0);
  signal zz_329 : std_logic;
  signal zz_330 : std_logic;
  signal zz_331 : unsigned(1 downto 0);
  signal zz_332 : std_logic;
  signal zz_333 : std_logic;
  signal zz_334 : unsigned(1 downto 0);
  signal zz_335 : std_logic;
  signal zz_336 : std_logic;
  signal zz_337 : unsigned(1 downto 0);
  signal zz_338 : std_logic;
  signal zz_339 : std_logic;
  signal zz_340 : unsigned(1 downto 0);
  signal zz_341 : std_logic;
  signal zz_342 : std_logic;
  signal zz_343 : unsigned(1 downto 0);
  signal zz_344 : std_logic;
  signal zz_345 : std_logic;
  signal zz_346 : unsigned(1 downto 0);
  signal zz_347 : std_logic;
  signal zz_348 : unsigned(1 downto 0);
  signal zz_349 : unsigned(6 downto 0);
  signal zz_350 : std_logic;
  signal zz_351 : unsigned(6 downto 0);
  signal zz_352 : std_logic;
  signal zz_353 : std_logic;
  signal zz_354 : std_logic;
  signal zz_355 : std_logic;
  signal zz_356 : std_logic;
  signal zz_357 : std_logic;
  signal zz_358 : std_logic;
  signal zz_359 : std_logic;
  signal zz_360 : std_logic;
  signal zz_361 : std_logic;
  signal zz_362 : std_logic;
  signal zz_363 : std_logic;
  signal zz_364 : std_logic;
  signal zz_365 : std_logic;
  signal zz_366 : std_logic;
  signal zz_367 : std_logic;
  signal zz_368 : std_logic;
  signal zz_369 : std_logic;
  signal zz_370 : std_logic;
  signal zz_371 : std_logic;
  signal zz_372 : std_logic;
  signal zz_373 : std_logic;
  signal zz_374 : std_logic;
  signal zz_375 : std_logic;
  signal zz_376 : std_logic;
  signal zz_377 : std_logic;
  signal zz_378 : std_logic;
  signal zz_379 : std_logic;
  signal zz_380 : std_logic;
  signal zz_381 : std_logic;
  signal zz_382 : std_logic;
  signal zz_383 : std_logic;
  signal zz_384 : std_logic;
  signal zz_385 : std_logic;
  signal zz_386 : std_logic;
  signal zz_387 : unsigned(1 downto 0);
  signal zz_388 : unsigned(1 downto 0);
  signal zz_389 : std_logic;
  signal zz_390 : unsigned(1 downto 0);
  signal zz_391 : std_logic;
  signal zz_392 : unsigned(1 downto 0);
  signal zz_393 : std_logic;
  signal zz_394 : unsigned(1 downto 0);
  signal zz_395 : std_logic;
  signal zz_396 : unsigned(1 downto 0);
  signal zz_397 : std_logic;
  signal zz_398 : unsigned(1 downto 0);
  signal zz_399 : std_logic;
  signal zz_400 : unsigned(1 downto 0);
  signal zz_401 : std_logic;
  signal zz_402 : unsigned(1 downto 0);
  signal zz_403 : std_logic;
  signal zz_404 : unsigned(1 downto 0);
  signal zz_405 : std_logic;
  signal zz_406 : unsigned(1 downto 0);
  signal zz_407 : std_logic;
  signal zz_408 : unsigned(1 downto 0);
  signal zz_409 : std_logic;
  signal zz_410 : unsigned(1 downto 0);
  signal zz_411 : std_logic;
  signal zz_412 : unsigned(1 downto 0);
  signal zz_413 : std_logic;
  signal zz_414 : unsigned(1 downto 0);
  signal zz_415 : std_logic;
  signal zz_416 : unsigned(1 downto 0);
  signal zz_417 : std_logic;
  signal zz_418 : unsigned(1 downto 0);
  signal zz_419 : std_logic;
  signal zz_420 : unsigned(1 downto 0);
  signal zz_421 : std_logic;
  signal zz_422 : unsigned(1 downto 0);
  signal zz_423 : std_logic;
  signal zz_424 : unsigned(1 downto 0);
  signal zz_425 : std_logic;
  signal zz_426 : unsigned(1 downto 0);
  signal zz_427 : std_logic;
  signal zz_428 : unsigned(1 downto 0);
  signal zz_429 : std_logic;
  signal zz_430 : unsigned(1 downto 0);
  signal zz_431 : std_logic;
  signal zz_432 : unsigned(1 downto 0);
  signal zz_433 : std_logic;
  signal zz_434 : unsigned(1 downto 0);
  signal zz_435 : std_logic;
  signal zz_436 : unsigned(1 downto 0);
  signal zz_437 : std_logic;
  signal zz_438 : unsigned(1 downto 0);
  signal zz_439 : std_logic;
  signal zz_440 : unsigned(1 downto 0);
  signal zz_441 : std_logic;
  signal zz_442 : unsigned(1 downto 0);
  signal zz_443 : std_logic;
  signal zz_444 : unsigned(1 downto 0);
  signal zz_445 : std_logic;
  signal zz_446 : unsigned(1 downto 0);
  signal zz_447 : std_logic;
  signal zz_448 : unsigned(1 downto 0);
  signal zz_449 : std_logic;
  signal zz_450 : unsigned(1 downto 0);
  signal zz_451 : std_logic;
  signal zz_452 : unsigned(1 downto 0);
  signal zz_453 : std_logic;
  signal zz_454 : unsigned(1 downto 0);
  signal zz_455 : std_logic;
  signal zz_456 : unsigned(1 downto 0);
  signal zz_457 : std_logic;
  signal zz_458 : unsigned(1 downto 0);
  signal zz_459 : std_logic;
  signal zz_460 : std_logic;
  signal zz_461 : unsigned(1 downto 0);
  signal zz_462 : std_logic;
  signal zz_463 : std_logic;
  signal zz_464 : unsigned(1 downto 0);
  signal zz_465 : std_logic;
  signal zz_466 : std_logic;
  signal zz_467 : unsigned(1 downto 0);
  signal zz_468 : std_logic;
  signal zz_469 : std_logic;
  signal zz_470 : unsigned(1 downto 0);
  signal zz_471 : std_logic;
  signal zz_472 : std_logic;
  signal zz_473 : unsigned(1 downto 0);
  signal zz_474 : std_logic;
  signal zz_475 : std_logic;
  signal zz_476 : unsigned(1 downto 0);
  signal zz_477 : std_logic;
  signal zz_478 : std_logic;
  signal zz_479 : unsigned(1 downto 0);
  signal zz_480 : std_logic;
  signal zz_481 : std_logic;
  signal zz_482 : unsigned(1 downto 0);
  signal zz_483 : std_logic;
  signal zz_484 : std_logic;
  signal zz_485 : unsigned(1 downto 0);
  signal zz_486 : std_logic;
  signal zz_487 : std_logic;
  signal zz_488 : unsigned(1 downto 0);
  signal zz_489 : std_logic;
  signal zz_490 : std_logic;
  signal zz_491 : unsigned(1 downto 0);
  signal zz_492 : std_logic;
  signal zz_493 : std_logic;
  signal zz_494 : unsigned(1 downto 0);
  signal zz_495 : std_logic;
  signal zz_496 : std_logic;
  signal zz_497 : unsigned(1 downto 0);
  signal zz_498 : std_logic;
  signal zz_499 : std_logic;
  signal zz_500 : unsigned(1 downto 0);
  signal zz_501 : std_logic;
  signal zz_502 : std_logic;
  signal zz_503 : unsigned(1 downto 0);
  signal zz_504 : std_logic;
  signal zz_505 : std_logic;
  signal zz_506 : unsigned(1 downto 0);
  signal zz_507 : std_logic;
  signal zz_508 : std_logic;
  signal zz_509 : unsigned(1 downto 0);
  signal zz_510 : std_logic;
  signal zz_511 : std_logic;
  signal zz_512 : unsigned(1 downto 0);
  signal zz_513 : std_logic;
  signal zz_514 : std_logic;
  signal zz_515 : unsigned(1 downto 0);
  signal zz_516 : std_logic;
  signal zz_517 : std_logic;
  signal zz_518 : unsigned(1 downto 0);
  signal zz_519 : std_logic;
  signal zz_520 : std_logic;
  signal zz_521 : unsigned(1 downto 0);
  signal zz_522 : std_logic;
  signal zz_523 : std_logic;
  signal zz_524 : unsigned(1 downto 0);
  signal zz_525 : std_logic;
  signal zz_526 : std_logic;
  signal zz_527 : unsigned(1 downto 0);
  signal zz_528 : std_logic;
  signal zz_529 : std_logic;
  signal zz_530 : unsigned(1 downto 0);
  signal zz_531 : std_logic;
  signal zz_532 : std_logic;
  signal zz_533 : unsigned(1 downto 0);
  signal zz_534 : std_logic;
  signal zz_535 : std_logic;
  signal zz_536 : unsigned(1 downto 0);
  signal zz_537 : std_logic;
  signal zz_538 : std_logic;
  signal zz_539 : unsigned(1 downto 0);
  signal zz_540 : std_logic;
  signal zz_541 : unsigned(1 downto 0);
  signal zz_542 : std_logic;
  signal zz_543 : std_logic;
  signal zz_544 : unsigned(1 downto 0);
  signal zz_545 : std_logic;
  signal zz_546 : std_logic;
  signal zz_547 : unsigned(1 downto 0);
  signal zz_548 : std_logic;
  signal zz_549 : std_logic;
  signal zz_550 : unsigned(1 downto 0);
  signal zz_551 : std_logic;
  signal zz_552 : std_logic;
  signal zz_553 : unsigned(1 downto 0);
  signal zz_554 : std_logic;
  signal zz_555 : std_logic;
  signal zz_556 : unsigned(1 downto 0);
  signal zz_557 : std_logic;
  signal zz_558 : std_logic;
  signal zz_559 : unsigned(1 downto 0);
  signal zz_560 : std_logic;
  signal zz_561 : unsigned(1 downto 0);
  signal zz_562 : unsigned(6 downto 0);
  signal zz_563 : std_logic;
  signal zz_564 : unsigned(6 downto 0);
  signal bus_askWrite : std_logic;
  signal bus_askRead : std_logic;
  signal bus_doWrite : std_logic;
  signal bus_doRead : std_logic;
  signal zz_565 : unsigned(1 downto 0);
  signal zz_566 : unsigned(1 downto 0);
  signal zz_567 : unsigned(1 downto 0);
  signal zz_568 : unsigned(1 downto 0);
  signal zz_569 : unsigned(1 downto 0);
  signal zz_570 : unsigned(1 downto 0);
  signal zz_571 : unsigned(1 downto 0);
  signal zz_572 : unsigned(1 downto 0);
  signal zz_573 : unsigned(1 downto 0);
  signal zz_574 : unsigned(1 downto 0);
  signal zz_575 : unsigned(1 downto 0);
  signal zz_576 : unsigned(1 downto 0);
  signal zz_577 : unsigned(1 downto 0);
  signal zz_578 : unsigned(1 downto 0);
  signal zz_579 : unsigned(1 downto 0);
  signal zz_580 : unsigned(1 downto 0);
  signal zz_581 : unsigned(1 downto 0);
  signal zz_582 : unsigned(1 downto 0);
  signal zz_583 : unsigned(1 downto 0);
  signal zz_584 : unsigned(1 downto 0);
  signal zz_585 : unsigned(1 downto 0);
  signal zz_586 : unsigned(1 downto 0);
  signal zz_587 : unsigned(1 downto 0);
  signal zz_588 : unsigned(1 downto 0);
  signal zz_589 : unsigned(1 downto 0);
  signal zz_590 : unsigned(1 downto 0);
  signal zz_591 : unsigned(1 downto 0);
  signal zz_592 : unsigned(1 downto 0);
  signal zz_593 : unsigned(1 downto 0);
  signal zz_594 : unsigned(1 downto 0);
  signal zz_595 : unsigned(1 downto 0);
  signal zz_596 : unsigned(1 downto 0);
  signal zz_597 : unsigned(1 downto 0);
  signal zz_598 : unsigned(1 downto 0);
  signal zz_599 : unsigned(1 downto 0);
  signal mapping_claim_valid : std_logic;
  signal mapping_claim_payload : unsigned(6 downto 0);
  signal mapping_completion_valid : std_logic;
  signal mapping_completion_payload : unsigned(6 downto 0);
  signal mapping_coherencyStall_willIncrement : std_logic;
  signal mapping_coherencyStall_willClear : std_logic;
  signal mapping_coherencyStall_valueNext : unsigned(0 downto 0);
  signal mapping_coherencyStall_value : unsigned(0 downto 0);
  signal mapping_coherencyStall_willOverflowIfInc : std_logic;
  signal mapping_coherencyStall_willOverflow : std_logic;
  signal zz_600 : unsigned(1 downto 0);
  signal mapping_targetMapping_0_targetCompletion_valid : std_logic;
  signal mapping_targetMapping_0_targetCompletion_payload : unsigned(6 downto 0);
  signal zz_601 : std_logic;
  signal zz_602 : std_logic;
  signal zz_603 : std_logic;
  signal zz_604 : std_logic;
  signal zz_605 : std_logic;
  signal zz_606 : std_logic;
  signal zz_607 : std_logic;
  signal zz_608 : std_logic;
  signal zz_609 : std_logic;
  signal zz_610 : std_logic;
  signal zz_611 : std_logic;
  signal zz_612 : std_logic;
  signal zz_613 : std_logic;
  signal zz_614 : std_logic;
  signal zz_615 : std_logic;
  signal zz_616 : std_logic;
  signal zz_617 : std_logic;
  signal zz_618 : std_logic;
  signal zz_619 : std_logic;
  signal zz_620 : std_logic;
  signal zz_621 : std_logic;
  signal zz_622 : std_logic;
  signal zz_623 : std_logic;
  signal zz_624 : std_logic;
  signal zz_625 : std_logic;
  signal zz_626 : std_logic;
  signal zz_627 : std_logic;
  signal zz_628 : std_logic;
  signal zz_629 : std_logic;
  signal zz_630 : std_logic;
  signal zz_631 : std_logic;
  signal zz_632 : std_logic;
  signal zz_633 : std_logic;
  signal zz_634 : std_logic;
  signal zz_635 : std_logic;
  signal zz_636 : unsigned(1 downto 0);
  signal mapping_targetMapping_1_targetCompletion_valid : std_logic;
  signal mapping_targetMapping_1_targetCompletion_payload : unsigned(6 downto 0);
  signal zz_637 : std_logic;
  signal zz_638 : std_logic;
  signal zz_639 : std_logic;
  signal zz_640 : std_logic;
  signal zz_641 : std_logic;
  signal zz_642 : std_logic;
  signal zz_643 : std_logic;
  signal zz_644 : std_logic;
  signal zz_645 : std_logic;
  signal zz_646 : std_logic;
  signal zz_647 : std_logic;
  signal zz_648 : std_logic;
  signal zz_649 : std_logic;
  signal zz_650 : std_logic;
  signal zz_651 : std_logic;
  signal zz_652 : std_logic;
  signal zz_653 : std_logic;
  signal zz_654 : std_logic;
  signal zz_655 : std_logic;
  signal zz_656 : std_logic;
  signal zz_657 : std_logic;
  signal zz_658 : std_logic;
  signal zz_659 : std_logic;
  signal zz_660 : std_logic;
  signal zz_661 : std_logic;
  signal zz_662 : std_logic;
  signal zz_663 : std_logic;
  signal zz_664 : std_logic;
  signal zz_665 : std_logic;
  signal zz_666 : std_logic;
  signal zz_667 : std_logic;
  signal zz_668 : std_logic;
  signal zz_669 : std_logic;
  signal zz_670 : std_logic;
  signal zz_671 : std_logic;
  signal zz_672 : unsigned(1 downto 0);
  signal mapping_targetMapping_2_targetCompletion_valid : std_logic;
  signal mapping_targetMapping_2_targetCompletion_payload : unsigned(6 downto 0);
  signal zz_673 : std_logic;
  signal zz_674 : std_logic;
  signal zz_675 : std_logic;
  signal zz_676 : std_logic;
  signal zz_677 : std_logic;
  signal zz_678 : std_logic;
  signal zz_679 : std_logic;
  signal zz_680 : std_logic;
  signal zz_681 : std_logic;
  signal zz_682 : std_logic;
  signal zz_683 : std_logic;
  signal zz_684 : std_logic;
  signal zz_685 : std_logic;
  signal zz_686 : std_logic;
  signal zz_687 : std_logic;
  signal zz_688 : std_logic;
  signal zz_689 : std_logic;
  signal zz_690 : std_logic;
  signal zz_691 : std_logic;
  signal zz_692 : std_logic;
  signal zz_693 : std_logic;
  signal zz_694 : std_logic;
  signal zz_695 : std_logic;
  signal zz_696 : std_logic;
  signal zz_697 : std_logic;
  signal zz_698 : std_logic;
  signal zz_699 : std_logic;
  signal zz_700 : std_logic;
  signal zz_701 : std_logic;
  signal zz_702 : std_logic;
  signal zz_703 : std_logic;
  signal zz_704 : std_logic;
  signal zz_705 : std_logic;
  signal zz_706 : std_logic;
  signal zz_707 : std_logic;
begin
  io_apb_PREADY <= zz_708;
  zz_709 <= pkg_toStdLogic(mapping_coherencyStall_value /= pkg_unsigned("0"));
  zz_710 <= pkg_mux(zz_90,pkg_mux(zz_36,targets_0_requests_0_id,targets_0_requests_1_id),pkg_mux(zz_39,targets_0_requests_2_id,targets_0_requests_3_id));
  zz_711 <= pkg_mux(zz_93,pkg_mux(zz_42,targets_0_requests_4_id,targets_0_requests_5_id),pkg_mux(zz_45,targets_0_requests_6_id,targets_0_requests_7_id));
  zz_712 <= pkg_mux(zz_96,pkg_mux(zz_48,targets_0_requests_8_id,targets_0_requests_9_id),pkg_mux(zz_51,targets_0_requests_10_id,targets_0_requests_11_id));
  zz_713 <= pkg_mux(zz_99,pkg_mux(zz_54,targets_0_requests_12_id,targets_0_requests_13_id),pkg_mux(zz_57,targets_0_requests_14_id,targets_0_requests_15_id));
  zz_714 <= pkg_mux(zz_102,pkg_mux(zz_60,targets_0_requests_16_id,targets_0_requests_17_id),pkg_mux(zz_63,targets_0_requests_18_id,targets_0_requests_19_id));
  zz_715 <= pkg_mux(zz_105,pkg_mux(zz_66,targets_0_requests_20_id,targets_0_requests_21_id),pkg_mux(zz_69,targets_0_requests_22_id,targets_0_requests_23_id));
  zz_716 <= pkg_mux(zz_108,pkg_mux(zz_72,targets_0_requests_24_id,targets_0_requests_25_id),pkg_mux(zz_75,targets_0_requests_26_id,targets_0_requests_27_id));
  zz_717 <= pkg_mux(zz_111,pkg_mux(zz_78,targets_0_requests_28_id,targets_0_requests_29_id),pkg_mux(zz_81,targets_0_requests_30_id,targets_0_requests_31_id));
  zz_718 <= pkg_mux(zz_301,pkg_mux(zz_247,zz_726,zz_727),pkg_mux(zz_250,zz_728,zz_729));
  zz_719 <= pkg_mux(zz_304,pkg_mux(zz_253,zz_730,zz_731),pkg_mux(zz_256,zz_732,zz_733));
  zz_720 <= pkg_mux(zz_307,pkg_mux(zz_259,zz_734,zz_735),pkg_mux(zz_262,zz_736,zz_737));
  zz_721 <= pkg_mux(zz_310,pkg_mux(zz_265,zz_738,zz_739),pkg_mux(zz_268,zz_740,zz_741));
  zz_722 <= pkg_mux(zz_313,pkg_mux(zz_271,zz_742,zz_743),pkg_mux(zz_274,zz_744,zz_745));
  zz_723 <= pkg_mux(zz_316,pkg_mux(zz_277,zz_746,zz_747),pkg_mux(zz_280,zz_748,zz_749));
  zz_724 <= pkg_mux(zz_319,pkg_mux(zz_283,zz_750,zz_751),pkg_mux(zz_286,zz_752,zz_753));
  zz_725 <= pkg_mux(zz_322,pkg_mux(zz_289,zz_754,zz_755),pkg_mux(zz_292,zz_756,zz_757));
  zz_726 <= pkg_unsigned("0000000");
  zz_727 <= pkg_unsigned("0000111");
  zz_728 <= pkg_unsigned("0001000");
  zz_729 <= pkg_unsigned("0001010");
  zz_730 <= pkg_unsigned("0001100");
  zz_731 <= pkg_unsigned("0010010");
  zz_732 <= pkg_unsigned("0010101");
  zz_733 <= pkg_unsigned("0010110");
  zz_734 <= pkg_unsigned("0011000");
  zz_735 <= pkg_unsigned("0011001");
  zz_736 <= pkg_unsigned("0100011");
  zz_737 <= pkg_unsigned("0101000");
  zz_738 <= pkg_unsigned("0101001");
  zz_739 <= pkg_unsigned("0110000");
  zz_740 <= pkg_unsigned("0110110");
  zz_741 <= pkg_unsigned("0111000");
  zz_742 <= pkg_unsigned("0111001");
  zz_743 <= pkg_unsigned("0111111");
  zz_744 <= pkg_unsigned("1000010");
  zz_745 <= pkg_unsigned("1000100");
  zz_746 <= pkg_unsigned("1000110");
  zz_747 <= pkg_unsigned("1001001");
  zz_748 <= pkg_unsigned("1001100");
  zz_749 <= pkg_unsigned("1001101");
  zz_750 <= pkg_unsigned("1001110");
  zz_751 <= pkg_unsigned("1010010");
  zz_752 <= pkg_unsigned("1011011");
  zz_753 <= pkg_unsigned("1011110");
  zz_754 <= pkg_unsigned("1011111");
  zz_755 <= pkg_unsigned("1100111");
  zz_756 <= pkg_unsigned("1101100");
  zz_757 <= pkg_unsigned("1110001");
  zz_758 <= pkg_mux(zz_514,pkg_mux(zz_460,zz_766,zz_767),pkg_mux(zz_463,zz_768,zz_769));
  zz_759 <= pkg_mux(zz_517,pkg_mux(zz_466,zz_770,zz_771),pkg_mux(zz_469,zz_772,zz_773));
  zz_760 <= pkg_mux(zz_520,pkg_mux(zz_472,zz_774,zz_775),pkg_mux(zz_475,zz_776,zz_777));
  zz_761 <= pkg_mux(zz_523,pkg_mux(zz_478,zz_778,zz_779),pkg_mux(zz_481,zz_780,zz_781));
  zz_762 <= pkg_mux(zz_526,pkg_mux(zz_484,zz_782,zz_783),pkg_mux(zz_487,zz_784,zz_785));
  zz_763 <= pkg_mux(zz_529,pkg_mux(zz_490,zz_786,zz_787),pkg_mux(zz_493,zz_788,zz_789));
  zz_764 <= pkg_mux(zz_532,pkg_mux(zz_496,zz_790,zz_791),pkg_mux(zz_499,zz_792,zz_793));
  zz_765 <= pkg_mux(zz_535,pkg_mux(zz_502,zz_794,zz_795),pkg_mux(zz_505,zz_796,zz_797));
  zz_766 <= pkg_unsigned("0000000");
  zz_767 <= pkg_unsigned("0000111");
  zz_768 <= pkg_unsigned("0001000");
  zz_769 <= pkg_unsigned("0001010");
  zz_770 <= pkg_unsigned("0001100");
  zz_771 <= pkg_unsigned("0010010");
  zz_772 <= pkg_unsigned("0010101");
  zz_773 <= pkg_unsigned("0010110");
  zz_774 <= pkg_unsigned("0011000");
  zz_775 <= pkg_unsigned("0011001");
  zz_776 <= pkg_unsigned("0100011");
  zz_777 <= pkg_unsigned("0101000");
  zz_778 <= pkg_unsigned("0101001");
  zz_779 <= pkg_unsigned("0110000");
  zz_780 <= pkg_unsigned("0110110");
  zz_781 <= pkg_unsigned("0111000");
  zz_782 <= pkg_unsigned("0111001");
  zz_783 <= pkg_unsigned("0111111");
  zz_784 <= pkg_unsigned("1000010");
  zz_785 <= pkg_unsigned("1000100");
  zz_786 <= pkg_unsigned("1000110");
  zz_787 <= pkg_unsigned("1001001");
  zz_788 <= pkg_unsigned("1001100");
  zz_789 <= pkg_unsigned("1001101");
  zz_790 <= pkg_unsigned("1001110");
  zz_791 <= pkg_unsigned("1010010");
  zz_792 <= pkg_unsigned("1011011");
  zz_793 <= pkg_unsigned("1011110");
  zz_794 <= pkg_unsigned("1011111");
  zz_795 <= pkg_unsigned("1100111");
  zz_796 <= pkg_unsigned("1101100");
  zz_797 <= pkg_unsigned("1110001");
  zz_1 <= pkg_extract(io_sources,0);
  zz_2 <= pkg_extract(io_sources,1);
  zz_3 <= pkg_extract(io_sources,2);
  zz_4 <= pkg_extract(io_sources,3);
  zz_5 <= pkg_extract(io_sources,4);
  zz_6 <= pkg_extract(io_sources,5);
  zz_7 <= pkg_extract(io_sources,6);
  zz_8 <= pkg_extract(io_sources,7);
  zz_9 <= pkg_extract(io_sources,8);
  zz_10 <= pkg_extract(io_sources,9);
  zz_11 <= pkg_extract(io_sources,10);
  zz_12 <= pkg_extract(io_sources,11);
  zz_13 <= pkg_extract(io_sources,12);
  zz_14 <= pkg_extract(io_sources,13);
  zz_15 <= pkg_extract(io_sources,14);
  zz_16 <= pkg_extract(io_sources,15);
  zz_17 <= pkg_extract(io_sources,16);
  zz_18 <= pkg_extract(io_sources,17);
  zz_19 <= pkg_extract(io_sources,18);
  zz_20 <= pkg_extract(io_sources,19);
  zz_21 <= pkg_extract(io_sources,20);
  zz_22 <= pkg_extract(io_sources,21);
  zz_23 <= pkg_extract(io_sources,22);
  zz_24 <= pkg_extract(io_sources,23);
  zz_25 <= pkg_extract(io_sources,24);
  zz_26 <= pkg_extract(io_sources,25);
  zz_27 <= pkg_extract(io_sources,26);
  zz_28 <= pkg_extract(io_sources,27);
  zz_29 <= pkg_extract(io_sources,28);
  zz_30 <= pkg_extract(io_sources,29);
  zz_31 <= pkg_extract(io_sources,30);
  zz_32 <= pkg_extract(io_sources,31);
  zz_33 <= pkg_extract(io_sources,32);
  zz_34 <= pkg_extract(io_sources,33);
  zz_35 <= pkg_extract(io_sources,34);
  targets_0_requests_0_priority <= pkg_unsigned("00");
  targets_0_requests_0_id <= pkg_unsigned("0000000");
  targets_0_requests_0_valid <= pkg_toStdLogic(true);
  targets_0_requests_1_priority <= gateways_21_priority;
  targets_0_requests_1_id <= pkg_unsigned("0000111");
  targets_0_requests_1_valid <= (gateways_21_ip and targets_0_ie_21);
  targets_0_requests_2_priority <= gateways_7_priority;
  targets_0_requests_2_id <= pkg_unsigned("0001000");
  targets_0_requests_2_valid <= (gateways_7_ip and targets_0_ie_7);
  targets_0_requests_3_priority <= gateways_12_priority;
  targets_0_requests_3_id <= pkg_unsigned("0001010");
  targets_0_requests_3_valid <= (gateways_12_ip and targets_0_ie_12);
  targets_0_requests_4_priority <= gateways_15_priority;
  targets_0_requests_4_id <= pkg_unsigned("0001100");
  targets_0_requests_4_valid <= (gateways_15_ip and targets_0_ie_15);
  targets_0_requests_5_priority <= gateways_33_priority;
  targets_0_requests_5_id <= pkg_unsigned("0010010");
  targets_0_requests_5_valid <= (gateways_33_ip and targets_0_ie_33);
  targets_0_requests_6_priority <= gateways_26_priority;
  targets_0_requests_6_id <= pkg_unsigned("0010101");
  targets_0_requests_6_valid <= (gateways_26_ip and targets_0_ie_26);
  targets_0_requests_7_priority <= gateways_0_priority;
  targets_0_requests_7_id <= pkg_unsigned("0010110");
  targets_0_requests_7_valid <= (gateways_0_ip and targets_0_ie_0);
  targets_0_requests_8_priority <= gateways_24_priority;
  targets_0_requests_8_id <= pkg_unsigned("0011000");
  targets_0_requests_8_valid <= (gateways_24_ip and targets_0_ie_24);
  targets_0_requests_9_priority <= gateways_10_priority;
  targets_0_requests_9_id <= pkg_unsigned("0011001");
  targets_0_requests_9_valid <= (gateways_10_ip and targets_0_ie_10);
  targets_0_requests_10_priority <= gateways_4_priority;
  targets_0_requests_10_id <= pkg_unsigned("0100011");
  targets_0_requests_10_valid <= (gateways_4_ip and targets_0_ie_4);
  targets_0_requests_11_priority <= gateways_11_priority;
  targets_0_requests_11_id <= pkg_unsigned("0101000");
  targets_0_requests_11_valid <= (gateways_11_ip and targets_0_ie_11);
  targets_0_requests_12_priority <= gateways_29_priority;
  targets_0_requests_12_id <= pkg_unsigned("0101001");
  targets_0_requests_12_valid <= (gateways_29_ip and targets_0_ie_29);
  targets_0_requests_13_priority <= gateways_25_priority;
  targets_0_requests_13_id <= pkg_unsigned("0110000");
  targets_0_requests_13_valid <= (gateways_25_ip and targets_0_ie_25);
  targets_0_requests_14_priority <= gateways_23_priority;
  targets_0_requests_14_id <= pkg_unsigned("0110110");
  targets_0_requests_14_valid <= (gateways_23_ip and targets_0_ie_23);
  targets_0_requests_15_priority <= gateways_1_priority;
  targets_0_requests_15_id <= pkg_unsigned("0111000");
  targets_0_requests_15_valid <= (gateways_1_ip and targets_0_ie_1);
  targets_0_requests_16_priority <= gateways_20_priority;
  targets_0_requests_16_id <= pkg_unsigned("0111001");
  targets_0_requests_16_valid <= (gateways_20_ip and targets_0_ie_20);
  targets_0_requests_17_priority <= gateways_27_priority;
  targets_0_requests_17_id <= pkg_unsigned("0111111");
  targets_0_requests_17_valid <= (gateways_27_ip and targets_0_ie_27);
  targets_0_requests_18_priority <= gateways_18_priority;
  targets_0_requests_18_id <= pkg_unsigned("1000010");
  targets_0_requests_18_valid <= (gateways_18_ip and targets_0_ie_18);
  targets_0_requests_19_priority <= gateways_32_priority;
  targets_0_requests_19_id <= pkg_unsigned("1000100");
  targets_0_requests_19_valid <= (gateways_32_ip and targets_0_ie_32);
  targets_0_requests_20_priority <= gateways_16_priority;
  targets_0_requests_20_id <= pkg_unsigned("1000110");
  targets_0_requests_20_valid <= (gateways_16_ip and targets_0_ie_16);
  targets_0_requests_21_priority <= gateways_6_priority;
  targets_0_requests_21_id <= pkg_unsigned("1001001");
  targets_0_requests_21_valid <= (gateways_6_ip and targets_0_ie_6);
  targets_0_requests_22_priority <= gateways_28_priority;
  targets_0_requests_22_id <= pkg_unsigned("1001100");
  targets_0_requests_22_valid <= (gateways_28_ip and targets_0_ie_28);
  targets_0_requests_23_priority <= gateways_31_priority;
  targets_0_requests_23_id <= pkg_unsigned("1001101");
  targets_0_requests_23_valid <= (gateways_31_ip and targets_0_ie_31);
  targets_0_requests_24_priority <= gateways_14_priority;
  targets_0_requests_24_id <= pkg_unsigned("1001110");
  targets_0_requests_24_valid <= (gateways_14_ip and targets_0_ie_14);
  targets_0_requests_25_priority <= gateways_3_priority;
  targets_0_requests_25_id <= pkg_unsigned("1010010");
  targets_0_requests_25_valid <= (gateways_3_ip and targets_0_ie_3);
  targets_0_requests_26_priority <= gateways_19_priority;
  targets_0_requests_26_id <= pkg_unsigned("1011011");
  targets_0_requests_26_valid <= (gateways_19_ip and targets_0_ie_19);
  targets_0_requests_27_priority <= gateways_5_priority;
  targets_0_requests_27_id <= pkg_unsigned("1011110");
  targets_0_requests_27_valid <= (gateways_5_ip and targets_0_ie_5);
  targets_0_requests_28_priority <= gateways_30_priority;
  targets_0_requests_28_id <= pkg_unsigned("1011111");
  targets_0_requests_28_valid <= (gateways_30_ip and targets_0_ie_30);
  targets_0_requests_29_priority <= gateways_17_priority;
  targets_0_requests_29_id <= pkg_unsigned("1100111");
  targets_0_requests_29_valid <= (gateways_17_ip and targets_0_ie_17);
  targets_0_requests_30_priority <= gateways_34_priority;
  targets_0_requests_30_id <= pkg_unsigned("1101100");
  targets_0_requests_30_valid <= (gateways_34_ip and targets_0_ie_34);
  targets_0_requests_31_priority <= gateways_2_priority;
  targets_0_requests_31_id <= pkg_unsigned("1110001");
  targets_0_requests_31_valid <= (gateways_2_ip and targets_0_ie_2);
  targets_0_requests_32_priority <= gateways_9_priority;
  targets_0_requests_32_id <= pkg_unsigned("1110011");
  targets_0_requests_32_valid <= (gateways_9_ip and targets_0_ie_9);
  targets_0_requests_33_priority <= gateways_8_priority;
  targets_0_requests_33_id <= pkg_unsigned("1111010");
  targets_0_requests_33_valid <= (gateways_8_ip and targets_0_ie_8);
  targets_0_requests_34_priority <= gateways_13_priority;
  targets_0_requests_34_id <= pkg_unsigned("1111100");
  targets_0_requests_34_valid <= (gateways_13_ip and targets_0_ie_13);
  targets_0_requests_35_priority <= gateways_22_priority;
  targets_0_requests_35_id <= pkg_unsigned("1111101");
  targets_0_requests_35_valid <= (gateways_22_ip and targets_0_ie_22);
  zz_36 <= ((not targets_0_requests_1_valid) or (targets_0_requests_0_valid and pkg_toStdLogic(targets_0_requests_1_priority <= targets_0_requests_0_priority)));
  zz_37 <= pkg_mux(zz_36,targets_0_requests_0_priority,targets_0_requests_1_priority);
  zz_38 <= pkg_mux(zz_36,targets_0_requests_0_valid,targets_0_requests_1_valid);
  zz_39 <= ((not targets_0_requests_3_valid) or (targets_0_requests_2_valid and pkg_toStdLogic(targets_0_requests_3_priority <= targets_0_requests_2_priority)));
  zz_40 <= pkg_mux(zz_39,targets_0_requests_2_priority,targets_0_requests_3_priority);
  zz_41 <= pkg_mux(zz_39,targets_0_requests_2_valid,targets_0_requests_3_valid);
  zz_42 <= ((not targets_0_requests_5_valid) or (targets_0_requests_4_valid and pkg_toStdLogic(targets_0_requests_5_priority <= targets_0_requests_4_priority)));
  zz_43 <= pkg_mux(zz_42,targets_0_requests_4_priority,targets_0_requests_5_priority);
  zz_44 <= pkg_mux(zz_42,targets_0_requests_4_valid,targets_0_requests_5_valid);
  zz_45 <= ((not targets_0_requests_7_valid) or (targets_0_requests_6_valid and pkg_toStdLogic(targets_0_requests_7_priority <= targets_0_requests_6_priority)));
  zz_46 <= pkg_mux(zz_45,targets_0_requests_6_priority,targets_0_requests_7_priority);
  zz_47 <= pkg_mux(zz_45,targets_0_requests_6_valid,targets_0_requests_7_valid);
  zz_48 <= ((not targets_0_requests_9_valid) or (targets_0_requests_8_valid and pkg_toStdLogic(targets_0_requests_9_priority <= targets_0_requests_8_priority)));
  zz_49 <= pkg_mux(zz_48,targets_0_requests_8_priority,targets_0_requests_9_priority);
  zz_50 <= pkg_mux(zz_48,targets_0_requests_8_valid,targets_0_requests_9_valid);
  zz_51 <= ((not targets_0_requests_11_valid) or (targets_0_requests_10_valid and pkg_toStdLogic(targets_0_requests_11_priority <= targets_0_requests_10_priority)));
  zz_52 <= pkg_mux(zz_51,targets_0_requests_10_priority,targets_0_requests_11_priority);
  zz_53 <= pkg_mux(zz_51,targets_0_requests_10_valid,targets_0_requests_11_valid);
  zz_54 <= ((not targets_0_requests_13_valid) or (targets_0_requests_12_valid and pkg_toStdLogic(targets_0_requests_13_priority <= targets_0_requests_12_priority)));
  zz_55 <= pkg_mux(zz_54,targets_0_requests_12_priority,targets_0_requests_13_priority);
  zz_56 <= pkg_mux(zz_54,targets_0_requests_12_valid,targets_0_requests_13_valid);
  zz_57 <= ((not targets_0_requests_15_valid) or (targets_0_requests_14_valid and pkg_toStdLogic(targets_0_requests_15_priority <= targets_0_requests_14_priority)));
  zz_58 <= pkg_mux(zz_57,targets_0_requests_14_priority,targets_0_requests_15_priority);
  zz_59 <= pkg_mux(zz_57,targets_0_requests_14_valid,targets_0_requests_15_valid);
  zz_60 <= ((not targets_0_requests_17_valid) or (targets_0_requests_16_valid and pkg_toStdLogic(targets_0_requests_17_priority <= targets_0_requests_16_priority)));
  zz_61 <= pkg_mux(zz_60,targets_0_requests_16_priority,targets_0_requests_17_priority);
  zz_62 <= pkg_mux(zz_60,targets_0_requests_16_valid,targets_0_requests_17_valid);
  zz_63 <= ((not targets_0_requests_19_valid) or (targets_0_requests_18_valid and pkg_toStdLogic(targets_0_requests_19_priority <= targets_0_requests_18_priority)));
  zz_64 <= pkg_mux(zz_63,targets_0_requests_18_priority,targets_0_requests_19_priority);
  zz_65 <= pkg_mux(zz_63,targets_0_requests_18_valid,targets_0_requests_19_valid);
  zz_66 <= ((not targets_0_requests_21_valid) or (targets_0_requests_20_valid and pkg_toStdLogic(targets_0_requests_21_priority <= targets_0_requests_20_priority)));
  zz_67 <= pkg_mux(zz_66,targets_0_requests_20_priority,targets_0_requests_21_priority);
  zz_68 <= pkg_mux(zz_66,targets_0_requests_20_valid,targets_0_requests_21_valid);
  zz_69 <= ((not targets_0_requests_23_valid) or (targets_0_requests_22_valid and pkg_toStdLogic(targets_0_requests_23_priority <= targets_0_requests_22_priority)));
  zz_70 <= pkg_mux(zz_69,targets_0_requests_22_priority,targets_0_requests_23_priority);
  zz_71 <= pkg_mux(zz_69,targets_0_requests_22_valid,targets_0_requests_23_valid);
  zz_72 <= ((not targets_0_requests_25_valid) or (targets_0_requests_24_valid and pkg_toStdLogic(targets_0_requests_25_priority <= targets_0_requests_24_priority)));
  zz_73 <= pkg_mux(zz_72,targets_0_requests_24_priority,targets_0_requests_25_priority);
  zz_74 <= pkg_mux(zz_72,targets_0_requests_24_valid,targets_0_requests_25_valid);
  zz_75 <= ((not targets_0_requests_27_valid) or (targets_0_requests_26_valid and pkg_toStdLogic(targets_0_requests_27_priority <= targets_0_requests_26_priority)));
  zz_76 <= pkg_mux(zz_75,targets_0_requests_26_priority,targets_0_requests_27_priority);
  zz_77 <= pkg_mux(zz_75,targets_0_requests_26_valid,targets_0_requests_27_valid);
  zz_78 <= ((not targets_0_requests_29_valid) or (targets_0_requests_28_valid and pkg_toStdLogic(targets_0_requests_29_priority <= targets_0_requests_28_priority)));
  zz_79 <= pkg_mux(zz_78,targets_0_requests_28_priority,targets_0_requests_29_priority);
  zz_80 <= pkg_mux(zz_78,targets_0_requests_28_valid,targets_0_requests_29_valid);
  zz_81 <= ((not targets_0_requests_31_valid) or (targets_0_requests_30_valid and pkg_toStdLogic(targets_0_requests_31_priority <= targets_0_requests_30_priority)));
  zz_82 <= pkg_mux(zz_81,targets_0_requests_30_priority,targets_0_requests_31_priority);
  zz_83 <= pkg_mux(zz_81,targets_0_requests_30_valid,targets_0_requests_31_valid);
  zz_84 <= ((not targets_0_requests_33_valid) or (targets_0_requests_32_valid and pkg_toStdLogic(targets_0_requests_33_priority <= targets_0_requests_32_priority)));
  zz_85 <= pkg_mux(zz_84,targets_0_requests_32_priority,targets_0_requests_33_priority);
  zz_86 <= pkg_mux(zz_84,targets_0_requests_32_valid,targets_0_requests_33_valid);
  zz_87 <= ((not targets_0_requests_35_valid) or (targets_0_requests_34_valid and pkg_toStdLogic(targets_0_requests_35_priority <= targets_0_requests_34_priority)));
  zz_88 <= pkg_mux(zz_87,targets_0_requests_34_priority,targets_0_requests_35_priority);
  zz_89 <= pkg_mux(zz_87,targets_0_requests_34_valid,targets_0_requests_35_valid);
  zz_90 <= ((not zz_41) or (zz_38 and pkg_toStdLogic(zz_40 <= zz_37)));
  zz_91 <= pkg_mux(zz_90,zz_37,zz_40);
  zz_92 <= pkg_mux(zz_90,zz_38,zz_41);
  zz_93 <= ((not zz_47) or (zz_44 and pkg_toStdLogic(zz_46 <= zz_43)));
  zz_94 <= pkg_mux(zz_93,zz_43,zz_46);
  zz_95 <= pkg_mux(zz_93,zz_44,zz_47);
  zz_96 <= ((not zz_53) or (zz_50 and pkg_toStdLogic(zz_52 <= zz_49)));
  zz_97 <= pkg_mux(zz_96,zz_49,zz_52);
  zz_98 <= pkg_mux(zz_96,zz_50,zz_53);
  zz_99 <= ((not zz_59) or (zz_56 and pkg_toStdLogic(zz_58 <= zz_55)));
  zz_100 <= pkg_mux(zz_99,zz_55,zz_58);
  zz_101 <= pkg_mux(zz_99,zz_56,zz_59);
  zz_102 <= ((not zz_65) or (zz_62 and pkg_toStdLogic(zz_64 <= zz_61)));
  zz_103 <= pkg_mux(zz_102,zz_61,zz_64);
  zz_104 <= pkg_mux(zz_102,zz_62,zz_65);
  zz_105 <= ((not zz_71) or (zz_68 and pkg_toStdLogic(zz_70 <= zz_67)));
  zz_106 <= pkg_mux(zz_105,zz_67,zz_70);
  zz_107 <= pkg_mux(zz_105,zz_68,zz_71);
  zz_108 <= ((not zz_77) or (zz_74 and pkg_toStdLogic(zz_76 <= zz_73)));
  zz_109 <= pkg_mux(zz_108,zz_73,zz_76);
  zz_110 <= pkg_mux(zz_108,zz_74,zz_77);
  zz_111 <= ((not zz_83) or (zz_80 and pkg_toStdLogic(zz_82 <= zz_79)));
  zz_112 <= pkg_mux(zz_111,zz_79,zz_82);
  zz_113 <= pkg_mux(zz_111,zz_80,zz_83);
  zz_114 <= ((not zz_89) or (zz_86 and pkg_toStdLogic(zz_88 <= zz_85)));
  zz_115 <= pkg_mux(zz_114,zz_85,zz_88);
  zz_116 <= pkg_mux(zz_114,zz_86,zz_89);
  zz_117 <= ((not zz_95) or (zz_92 and pkg_toStdLogic(zz_94 <= zz_91)));
  zz_118 <= pkg_mux(zz_117,zz_91,zz_94);
  zz_119 <= pkg_mux(zz_117,zz_92,zz_95);
  zz_120 <= ((not zz_101) or (zz_98 and pkg_toStdLogic(zz_100 <= zz_97)));
  zz_121 <= pkg_mux(zz_120,zz_97,zz_100);
  zz_122 <= pkg_mux(zz_120,zz_98,zz_101);
  zz_123 <= ((not zz_107) or (zz_104 and pkg_toStdLogic(zz_106 <= zz_103)));
  zz_124 <= pkg_mux(zz_123,zz_103,zz_106);
  zz_125 <= pkg_mux(zz_123,zz_104,zz_107);
  zz_126 <= ((not zz_113) or (zz_110 and pkg_toStdLogic(zz_112 <= zz_109)));
  zz_127 <= pkg_mux(zz_126,zz_109,zz_112);
  zz_128 <= pkg_mux(zz_126,zz_110,zz_113);
  zz_129 <= ((not zz_122) or (zz_119 and pkg_toStdLogic(zz_121 <= zz_118)));
  zz_130 <= pkg_mux(zz_129,zz_118,zz_121);
  zz_131 <= pkg_mux(zz_129,zz_119,zz_122);
  zz_132 <= ((not zz_128) or (zz_125 and pkg_toStdLogic(zz_127 <= zz_124)));
  zz_133 <= pkg_mux(zz_132,zz_124,zz_127);
  zz_134 <= pkg_mux(zz_132,zz_125,zz_128);
  zz_135 <= ((not zz_134) or (zz_131 and pkg_toStdLogic(zz_133 <= zz_130)));
  zz_136 <= pkg_mux(zz_135,zz_130,zz_133);
  zz_137 <= pkg_mux(zz_135,zz_131,zz_134);
  zz_138 <= ((not zz_116) or (zz_137 and pkg_toStdLogic(zz_115 <= zz_136)));
  targets_0_iep <= pkg_toStdLogic(targets_0_threshold < targets_0_bestRequest_priority);
  targets_0_claim <= pkg_mux(targets_0_iep,targets_0_bestRequest_id,pkg_unsigned("0000000"));
  zz_175 <= pkg_unsigned("00");
  zz_176 <= pkg_toStdLogic(true);
  zz_177 <= gateways_21_priority;
  zz_178 <= (gateways_21_ip and zz_160);
  zz_179 <= gateways_7_priority;
  zz_180 <= (gateways_7_ip and zz_146);
  zz_181 <= gateways_12_priority;
  zz_182 <= (gateways_12_ip and zz_151);
  zz_183 <= gateways_15_priority;
  zz_184 <= (gateways_15_ip and zz_154);
  zz_185 <= gateways_33_priority;
  zz_186 <= (gateways_33_ip and zz_172);
  zz_187 <= gateways_26_priority;
  zz_188 <= (gateways_26_ip and zz_165);
  zz_189 <= gateways_0_priority;
  zz_190 <= (gateways_0_ip and zz_139);
  zz_191 <= gateways_24_priority;
  zz_192 <= (gateways_24_ip and zz_163);
  zz_193 <= gateways_10_priority;
  zz_194 <= (gateways_10_ip and zz_149);
  zz_195 <= gateways_4_priority;
  zz_196 <= (gateways_4_ip and zz_143);
  zz_197 <= gateways_11_priority;
  zz_198 <= (gateways_11_ip and zz_150);
  zz_199 <= gateways_29_priority;
  zz_200 <= (gateways_29_ip and zz_168);
  zz_201 <= gateways_25_priority;
  zz_202 <= (gateways_25_ip and zz_164);
  zz_203 <= gateways_23_priority;
  zz_204 <= (gateways_23_ip and zz_162);
  zz_205 <= gateways_1_priority;
  zz_206 <= (gateways_1_ip and zz_140);
  zz_207 <= gateways_20_priority;
  zz_208 <= (gateways_20_ip and zz_159);
  zz_209 <= gateways_27_priority;
  zz_210 <= (gateways_27_ip and zz_166);
  zz_211 <= gateways_18_priority;
  zz_212 <= (gateways_18_ip and zz_157);
  zz_213 <= gateways_32_priority;
  zz_214 <= (gateways_32_ip and zz_171);
  zz_215 <= gateways_16_priority;
  zz_216 <= (gateways_16_ip and zz_155);
  zz_217 <= gateways_6_priority;
  zz_218 <= (gateways_6_ip and zz_145);
  zz_219 <= gateways_28_priority;
  zz_220 <= (gateways_28_ip and zz_167);
  zz_221 <= gateways_31_priority;
  zz_222 <= (gateways_31_ip and zz_170);
  zz_223 <= gateways_14_priority;
  zz_224 <= (gateways_14_ip and zz_153);
  zz_225 <= gateways_3_priority;
  zz_226 <= (gateways_3_ip and zz_142);
  zz_227 <= gateways_19_priority;
  zz_228 <= (gateways_19_ip and zz_158);
  zz_229 <= gateways_5_priority;
  zz_230 <= (gateways_5_ip and zz_144);
  zz_231 <= gateways_30_priority;
  zz_232 <= (gateways_30_ip and zz_169);
  zz_233 <= gateways_17_priority;
  zz_234 <= (gateways_17_ip and zz_156);
  zz_235 <= gateways_34_priority;
  zz_236 <= (gateways_34_ip and zz_173);
  zz_237 <= gateways_2_priority;
  zz_238 <= (gateways_2_ip and zz_141);
  zz_239 <= gateways_9_priority;
  zz_240 <= (gateways_9_ip and zz_148);
  zz_241 <= gateways_8_priority;
  zz_242 <= (gateways_8_ip and zz_147);
  zz_243 <= gateways_13_priority;
  zz_244 <= (gateways_13_ip and zz_152);
  zz_245 <= gateways_22_priority;
  zz_246 <= (gateways_22_ip and zz_161);
  zz_247 <= ((not zz_178) or (zz_176 and pkg_toStdLogic(zz_177 <= zz_175)));
  zz_248 <= pkg_mux(zz_247,zz_175,zz_177);
  zz_249 <= pkg_mux(zz_247,zz_176,zz_178);
  zz_250 <= ((not zz_182) or (zz_180 and pkg_toStdLogic(zz_181 <= zz_179)));
  zz_251 <= pkg_mux(zz_250,zz_179,zz_181);
  zz_252 <= pkg_mux(zz_250,zz_180,zz_182);
  zz_253 <= ((not zz_186) or (zz_184 and pkg_toStdLogic(zz_185 <= zz_183)));
  zz_254 <= pkg_mux(zz_253,zz_183,zz_185);
  zz_255 <= pkg_mux(zz_253,zz_184,zz_186);
  zz_256 <= ((not zz_190) or (zz_188 and pkg_toStdLogic(zz_189 <= zz_187)));
  zz_257 <= pkg_mux(zz_256,zz_187,zz_189);
  zz_258 <= pkg_mux(zz_256,zz_188,zz_190);
  zz_259 <= ((not zz_194) or (zz_192 and pkg_toStdLogic(zz_193 <= zz_191)));
  zz_260 <= pkg_mux(zz_259,zz_191,zz_193);
  zz_261 <= pkg_mux(zz_259,zz_192,zz_194);
  zz_262 <= ((not zz_198) or (zz_196 and pkg_toStdLogic(zz_197 <= zz_195)));
  zz_263 <= pkg_mux(zz_262,zz_195,zz_197);
  zz_264 <= pkg_mux(zz_262,zz_196,zz_198);
  zz_265 <= ((not zz_202) or (zz_200 and pkg_toStdLogic(zz_201 <= zz_199)));
  zz_266 <= pkg_mux(zz_265,zz_199,zz_201);
  zz_267 <= pkg_mux(zz_265,zz_200,zz_202);
  zz_268 <= ((not zz_206) or (zz_204 and pkg_toStdLogic(zz_205 <= zz_203)));
  zz_269 <= pkg_mux(zz_268,zz_203,zz_205);
  zz_270 <= pkg_mux(zz_268,zz_204,zz_206);
  zz_271 <= ((not zz_210) or (zz_208 and pkg_toStdLogic(zz_209 <= zz_207)));
  zz_272 <= pkg_mux(zz_271,zz_207,zz_209);
  zz_273 <= pkg_mux(zz_271,zz_208,zz_210);
  zz_274 <= ((not zz_214) or (zz_212 and pkg_toStdLogic(zz_213 <= zz_211)));
  zz_275 <= pkg_mux(zz_274,zz_211,zz_213);
  zz_276 <= pkg_mux(zz_274,zz_212,zz_214);
  zz_277 <= ((not zz_218) or (zz_216 and pkg_toStdLogic(zz_217 <= zz_215)));
  zz_278 <= pkg_mux(zz_277,zz_215,zz_217);
  zz_279 <= pkg_mux(zz_277,zz_216,zz_218);
  zz_280 <= ((not zz_222) or (zz_220 and pkg_toStdLogic(zz_221 <= zz_219)));
  zz_281 <= pkg_mux(zz_280,zz_219,zz_221);
  zz_282 <= pkg_mux(zz_280,zz_220,zz_222);
  zz_283 <= ((not zz_226) or (zz_224 and pkg_toStdLogic(zz_225 <= zz_223)));
  zz_284 <= pkg_mux(zz_283,zz_223,zz_225);
  zz_285 <= pkg_mux(zz_283,zz_224,zz_226);
  zz_286 <= ((not zz_230) or (zz_228 and pkg_toStdLogic(zz_229 <= zz_227)));
  zz_287 <= pkg_mux(zz_286,zz_227,zz_229);
  zz_288 <= pkg_mux(zz_286,zz_228,zz_230);
  zz_289 <= ((not zz_234) or (zz_232 and pkg_toStdLogic(zz_233 <= zz_231)));
  zz_290 <= pkg_mux(zz_289,zz_231,zz_233);
  zz_291 <= pkg_mux(zz_289,zz_232,zz_234);
  zz_292 <= ((not zz_238) or (zz_236 and pkg_toStdLogic(zz_237 <= zz_235)));
  zz_293 <= pkg_mux(zz_292,zz_235,zz_237);
  zz_294 <= pkg_mux(zz_292,zz_236,zz_238);
  zz_295 <= ((not zz_242) or (zz_240 and pkg_toStdLogic(zz_241 <= zz_239)));
  zz_296 <= pkg_mux(zz_295,zz_239,zz_241);
  zz_297 <= pkg_mux(zz_295,zz_240,zz_242);
  zz_298 <= ((not zz_246) or (zz_244 and pkg_toStdLogic(zz_245 <= zz_243)));
  zz_299 <= pkg_mux(zz_298,zz_243,zz_245);
  zz_300 <= pkg_mux(zz_298,zz_244,zz_246);
  zz_301 <= ((not zz_252) or (zz_249 and pkg_toStdLogic(zz_251 <= zz_248)));
  zz_302 <= pkg_mux(zz_301,zz_248,zz_251);
  zz_303 <= pkg_mux(zz_301,zz_249,zz_252);
  zz_304 <= ((not zz_258) or (zz_255 and pkg_toStdLogic(zz_257 <= zz_254)));
  zz_305 <= pkg_mux(zz_304,zz_254,zz_257);
  zz_306 <= pkg_mux(zz_304,zz_255,zz_258);
  zz_307 <= ((not zz_264) or (zz_261 and pkg_toStdLogic(zz_263 <= zz_260)));
  zz_308 <= pkg_mux(zz_307,zz_260,zz_263);
  zz_309 <= pkg_mux(zz_307,zz_261,zz_264);
  zz_310 <= ((not zz_270) or (zz_267 and pkg_toStdLogic(zz_269 <= zz_266)));
  zz_311 <= pkg_mux(zz_310,zz_266,zz_269);
  zz_312 <= pkg_mux(zz_310,zz_267,zz_270);
  zz_313 <= ((not zz_276) or (zz_273 and pkg_toStdLogic(zz_275 <= zz_272)));
  zz_314 <= pkg_mux(zz_313,zz_272,zz_275);
  zz_315 <= pkg_mux(zz_313,zz_273,zz_276);
  zz_316 <= ((not zz_282) or (zz_279 and pkg_toStdLogic(zz_281 <= zz_278)));
  zz_317 <= pkg_mux(zz_316,zz_278,zz_281);
  zz_318 <= pkg_mux(zz_316,zz_279,zz_282);
  zz_319 <= ((not zz_288) or (zz_285 and pkg_toStdLogic(zz_287 <= zz_284)));
  zz_320 <= pkg_mux(zz_319,zz_284,zz_287);
  zz_321 <= pkg_mux(zz_319,zz_285,zz_288);
  zz_322 <= ((not zz_294) or (zz_291 and pkg_toStdLogic(zz_293 <= zz_290)));
  zz_323 <= pkg_mux(zz_322,zz_290,zz_293);
  zz_324 <= pkg_mux(zz_322,zz_291,zz_294);
  zz_325 <= ((not zz_300) or (zz_297 and pkg_toStdLogic(zz_299 <= zz_296)));
  zz_326 <= pkg_mux(zz_325,zz_296,zz_299);
  zz_327 <= ((not zz_306) or (zz_303 and pkg_toStdLogic(zz_305 <= zz_302)));
  zz_328 <= pkg_mux(zz_327,zz_302,zz_305);
  zz_329 <= pkg_mux(zz_327,zz_303,zz_306);
  zz_330 <= ((not zz_312) or (zz_309 and pkg_toStdLogic(zz_311 <= zz_308)));
  zz_331 <= pkg_mux(zz_330,zz_308,zz_311);
  zz_332 <= pkg_mux(zz_330,zz_309,zz_312);
  zz_333 <= ((not zz_318) or (zz_315 and pkg_toStdLogic(zz_317 <= zz_314)));
  zz_334 <= pkg_mux(zz_333,zz_314,zz_317);
  zz_335 <= pkg_mux(zz_333,zz_315,zz_318);
  zz_336 <= ((not zz_324) or (zz_321 and pkg_toStdLogic(zz_323 <= zz_320)));
  zz_337 <= pkg_mux(zz_336,zz_320,zz_323);
  zz_338 <= pkg_mux(zz_336,zz_321,zz_324);
  zz_339 <= ((not zz_332) or (zz_329 and pkg_toStdLogic(zz_331 <= zz_328)));
  zz_340 <= pkg_mux(zz_339,zz_328,zz_331);
  zz_341 <= pkg_mux(zz_339,zz_329,zz_332);
  zz_342 <= ((not zz_338) or (zz_335 and pkg_toStdLogic(zz_337 <= zz_334)));
  zz_343 <= pkg_mux(zz_342,zz_334,zz_337);
  zz_344 <= pkg_mux(zz_342,zz_335,zz_338);
  zz_345 <= ((not zz_344) or (zz_341 and pkg_toStdLogic(zz_343 <= zz_340)));
  zz_346 <= pkg_mux(zz_345,zz_340,zz_343);
  zz_347 <= ((not pkg_mux(zz_325,zz_297,zz_300)) or (pkg_mux(zz_345,zz_341,zz_344) and pkg_toStdLogic(zz_326 <= zz_346)));
  zz_350 <= pkg_toStdLogic(zz_174 < zz_348);
  zz_351 <= pkg_mux(zz_350,zz_349,pkg_unsigned("0000000"));
  zz_388 <= pkg_unsigned("00");
  zz_389 <= pkg_toStdLogic(true);
  zz_390 <= gateways_21_priority;
  zz_391 <= (gateways_21_ip and zz_373);
  zz_392 <= gateways_7_priority;
  zz_393 <= (gateways_7_ip and zz_359);
  zz_394 <= gateways_12_priority;
  zz_395 <= (gateways_12_ip and zz_364);
  zz_396 <= gateways_15_priority;
  zz_397 <= (gateways_15_ip and zz_367);
  zz_398 <= gateways_33_priority;
  zz_399 <= (gateways_33_ip and zz_385);
  zz_400 <= gateways_26_priority;
  zz_401 <= (gateways_26_ip and zz_378);
  zz_402 <= gateways_0_priority;
  zz_403 <= (gateways_0_ip and zz_352);
  zz_404 <= gateways_24_priority;
  zz_405 <= (gateways_24_ip and zz_376);
  zz_406 <= gateways_10_priority;
  zz_407 <= (gateways_10_ip and zz_362);
  zz_408 <= gateways_4_priority;
  zz_409 <= (gateways_4_ip and zz_356);
  zz_410 <= gateways_11_priority;
  zz_411 <= (gateways_11_ip and zz_363);
  zz_412 <= gateways_29_priority;
  zz_413 <= (gateways_29_ip and zz_381);
  zz_414 <= gateways_25_priority;
  zz_415 <= (gateways_25_ip and zz_377);
  zz_416 <= gateways_23_priority;
  zz_417 <= (gateways_23_ip and zz_375);
  zz_418 <= gateways_1_priority;
  zz_419 <= (gateways_1_ip and zz_353);
  zz_420 <= gateways_20_priority;
  zz_421 <= (gateways_20_ip and zz_372);
  zz_422 <= gateways_27_priority;
  zz_423 <= (gateways_27_ip and zz_379);
  zz_424 <= gateways_18_priority;
  zz_425 <= (gateways_18_ip and zz_370);
  zz_426 <= gateways_32_priority;
  zz_427 <= (gateways_32_ip and zz_384);
  zz_428 <= gateways_16_priority;
  zz_429 <= (gateways_16_ip and zz_368);
  zz_430 <= gateways_6_priority;
  zz_431 <= (gateways_6_ip and zz_358);
  zz_432 <= gateways_28_priority;
  zz_433 <= (gateways_28_ip and zz_380);
  zz_434 <= gateways_31_priority;
  zz_435 <= (gateways_31_ip and zz_383);
  zz_436 <= gateways_14_priority;
  zz_437 <= (gateways_14_ip and zz_366);
  zz_438 <= gateways_3_priority;
  zz_439 <= (gateways_3_ip and zz_355);
  zz_440 <= gateways_19_priority;
  zz_441 <= (gateways_19_ip and zz_371);
  zz_442 <= gateways_5_priority;
  zz_443 <= (gateways_5_ip and zz_357);
  zz_444 <= gateways_30_priority;
  zz_445 <= (gateways_30_ip and zz_382);
  zz_446 <= gateways_17_priority;
  zz_447 <= (gateways_17_ip and zz_369);
  zz_448 <= gateways_34_priority;
  zz_449 <= (gateways_34_ip and zz_386);
  zz_450 <= gateways_2_priority;
  zz_451 <= (gateways_2_ip and zz_354);
  zz_452 <= gateways_9_priority;
  zz_453 <= (gateways_9_ip and zz_361);
  zz_454 <= gateways_8_priority;
  zz_455 <= (gateways_8_ip and zz_360);
  zz_456 <= gateways_13_priority;
  zz_457 <= (gateways_13_ip and zz_365);
  zz_458 <= gateways_22_priority;
  zz_459 <= (gateways_22_ip and zz_374);
  zz_460 <= ((not zz_391) or (zz_389 and pkg_toStdLogic(zz_390 <= zz_388)));
  zz_461 <= pkg_mux(zz_460,zz_388,zz_390);
  zz_462 <= pkg_mux(zz_460,zz_389,zz_391);
  zz_463 <= ((not zz_395) or (zz_393 and pkg_toStdLogic(zz_394 <= zz_392)));
  zz_464 <= pkg_mux(zz_463,zz_392,zz_394);
  zz_465 <= pkg_mux(zz_463,zz_393,zz_395);
  zz_466 <= ((not zz_399) or (zz_397 and pkg_toStdLogic(zz_398 <= zz_396)));
  zz_467 <= pkg_mux(zz_466,zz_396,zz_398);
  zz_468 <= pkg_mux(zz_466,zz_397,zz_399);
  zz_469 <= ((not zz_403) or (zz_401 and pkg_toStdLogic(zz_402 <= zz_400)));
  zz_470 <= pkg_mux(zz_469,zz_400,zz_402);
  zz_471 <= pkg_mux(zz_469,zz_401,zz_403);
  zz_472 <= ((not zz_407) or (zz_405 and pkg_toStdLogic(zz_406 <= zz_404)));
  zz_473 <= pkg_mux(zz_472,zz_404,zz_406);
  zz_474 <= pkg_mux(zz_472,zz_405,zz_407);
  zz_475 <= ((not zz_411) or (zz_409 and pkg_toStdLogic(zz_410 <= zz_408)));
  zz_476 <= pkg_mux(zz_475,zz_408,zz_410);
  zz_477 <= pkg_mux(zz_475,zz_409,zz_411);
  zz_478 <= ((not zz_415) or (zz_413 and pkg_toStdLogic(zz_414 <= zz_412)));
  zz_479 <= pkg_mux(zz_478,zz_412,zz_414);
  zz_480 <= pkg_mux(zz_478,zz_413,zz_415);
  zz_481 <= ((not zz_419) or (zz_417 and pkg_toStdLogic(zz_418 <= zz_416)));
  zz_482 <= pkg_mux(zz_481,zz_416,zz_418);
  zz_483 <= pkg_mux(zz_481,zz_417,zz_419);
  zz_484 <= ((not zz_423) or (zz_421 and pkg_toStdLogic(zz_422 <= zz_420)));
  zz_485 <= pkg_mux(zz_484,zz_420,zz_422);
  zz_486 <= pkg_mux(zz_484,zz_421,zz_423);
  zz_487 <= ((not zz_427) or (zz_425 and pkg_toStdLogic(zz_426 <= zz_424)));
  zz_488 <= pkg_mux(zz_487,zz_424,zz_426);
  zz_489 <= pkg_mux(zz_487,zz_425,zz_427);
  zz_490 <= ((not zz_431) or (zz_429 and pkg_toStdLogic(zz_430 <= zz_428)));
  zz_491 <= pkg_mux(zz_490,zz_428,zz_430);
  zz_492 <= pkg_mux(zz_490,zz_429,zz_431);
  zz_493 <= ((not zz_435) or (zz_433 and pkg_toStdLogic(zz_434 <= zz_432)));
  zz_494 <= pkg_mux(zz_493,zz_432,zz_434);
  zz_495 <= pkg_mux(zz_493,zz_433,zz_435);
  zz_496 <= ((not zz_439) or (zz_437 and pkg_toStdLogic(zz_438 <= zz_436)));
  zz_497 <= pkg_mux(zz_496,zz_436,zz_438);
  zz_498 <= pkg_mux(zz_496,zz_437,zz_439);
  zz_499 <= ((not zz_443) or (zz_441 and pkg_toStdLogic(zz_442 <= zz_440)));
  zz_500 <= pkg_mux(zz_499,zz_440,zz_442);
  zz_501 <= pkg_mux(zz_499,zz_441,zz_443);
  zz_502 <= ((not zz_447) or (zz_445 and pkg_toStdLogic(zz_446 <= zz_444)));
  zz_503 <= pkg_mux(zz_502,zz_444,zz_446);
  zz_504 <= pkg_mux(zz_502,zz_445,zz_447);
  zz_505 <= ((not zz_451) or (zz_449 and pkg_toStdLogic(zz_450 <= zz_448)));
  zz_506 <= pkg_mux(zz_505,zz_448,zz_450);
  zz_507 <= pkg_mux(zz_505,zz_449,zz_451);
  zz_508 <= ((not zz_455) or (zz_453 and pkg_toStdLogic(zz_454 <= zz_452)));
  zz_509 <= pkg_mux(zz_508,zz_452,zz_454);
  zz_510 <= pkg_mux(zz_508,zz_453,zz_455);
  zz_511 <= ((not zz_459) or (zz_457 and pkg_toStdLogic(zz_458 <= zz_456)));
  zz_512 <= pkg_mux(zz_511,zz_456,zz_458);
  zz_513 <= pkg_mux(zz_511,zz_457,zz_459);
  zz_514 <= ((not zz_465) or (zz_462 and pkg_toStdLogic(zz_464 <= zz_461)));
  zz_515 <= pkg_mux(zz_514,zz_461,zz_464);
  zz_516 <= pkg_mux(zz_514,zz_462,zz_465);
  zz_517 <= ((not zz_471) or (zz_468 and pkg_toStdLogic(zz_470 <= zz_467)));
  zz_518 <= pkg_mux(zz_517,zz_467,zz_470);
  zz_519 <= pkg_mux(zz_517,zz_468,zz_471);
  zz_520 <= ((not zz_477) or (zz_474 and pkg_toStdLogic(zz_476 <= zz_473)));
  zz_521 <= pkg_mux(zz_520,zz_473,zz_476);
  zz_522 <= pkg_mux(zz_520,zz_474,zz_477);
  zz_523 <= ((not zz_483) or (zz_480 and pkg_toStdLogic(zz_482 <= zz_479)));
  zz_524 <= pkg_mux(zz_523,zz_479,zz_482);
  zz_525 <= pkg_mux(zz_523,zz_480,zz_483);
  zz_526 <= ((not zz_489) or (zz_486 and pkg_toStdLogic(zz_488 <= zz_485)));
  zz_527 <= pkg_mux(zz_526,zz_485,zz_488);
  zz_528 <= pkg_mux(zz_526,zz_486,zz_489);
  zz_529 <= ((not zz_495) or (zz_492 and pkg_toStdLogic(zz_494 <= zz_491)));
  zz_530 <= pkg_mux(zz_529,zz_491,zz_494);
  zz_531 <= pkg_mux(zz_529,zz_492,zz_495);
  zz_532 <= ((not zz_501) or (zz_498 and pkg_toStdLogic(zz_500 <= zz_497)));
  zz_533 <= pkg_mux(zz_532,zz_497,zz_500);
  zz_534 <= pkg_mux(zz_532,zz_498,zz_501);
  zz_535 <= ((not zz_507) or (zz_504 and pkg_toStdLogic(zz_506 <= zz_503)));
  zz_536 <= pkg_mux(zz_535,zz_503,zz_506);
  zz_537 <= pkg_mux(zz_535,zz_504,zz_507);
  zz_538 <= ((not zz_513) or (zz_510 and pkg_toStdLogic(zz_512 <= zz_509)));
  zz_539 <= pkg_mux(zz_538,zz_509,zz_512);
  zz_540 <= ((not zz_519) or (zz_516 and pkg_toStdLogic(zz_518 <= zz_515)));
  zz_541 <= pkg_mux(zz_540,zz_515,zz_518);
  zz_542 <= pkg_mux(zz_540,zz_516,zz_519);
  zz_543 <= ((not zz_525) or (zz_522 and pkg_toStdLogic(zz_524 <= zz_521)));
  zz_544 <= pkg_mux(zz_543,zz_521,zz_524);
  zz_545 <= pkg_mux(zz_543,zz_522,zz_525);
  zz_546 <= ((not zz_531) or (zz_528 and pkg_toStdLogic(zz_530 <= zz_527)));
  zz_547 <= pkg_mux(zz_546,zz_527,zz_530);
  zz_548 <= pkg_mux(zz_546,zz_528,zz_531);
  zz_549 <= ((not zz_537) or (zz_534 and pkg_toStdLogic(zz_536 <= zz_533)));
  zz_550 <= pkg_mux(zz_549,zz_533,zz_536);
  zz_551 <= pkg_mux(zz_549,zz_534,zz_537);
  zz_552 <= ((not zz_545) or (zz_542 and pkg_toStdLogic(zz_544 <= zz_541)));
  zz_553 <= pkg_mux(zz_552,zz_541,zz_544);
  zz_554 <= pkg_mux(zz_552,zz_542,zz_545);
  zz_555 <= ((not zz_551) or (zz_548 and pkg_toStdLogic(zz_550 <= zz_547)));
  zz_556 <= pkg_mux(zz_555,zz_547,zz_550);
  zz_557 <= pkg_mux(zz_555,zz_548,zz_551);
  zz_558 <= ((not zz_557) or (zz_554 and pkg_toStdLogic(zz_556 <= zz_553)));
  zz_559 <= pkg_mux(zz_558,zz_553,zz_556);
  zz_560 <= ((not pkg_mux(zz_538,zz_510,zz_513)) or (pkg_mux(zz_558,zz_554,zz_557) and pkg_toStdLogic(zz_539 <= zz_559)));
  zz_563 <= pkg_toStdLogic(zz_387 < zz_561);
  zz_564 <= pkg_mux(zz_563,zz_562,pkg_unsigned("0000000"));
  io_targets <= pkg_cat(pkg_toStdLogicVector(zz_563),pkg_cat(pkg_toStdLogicVector(zz_350),pkg_toStdLogicVector(targets_0_iep)));
  process(zz_709)
  begin
    zz_708 <= pkg_toStdLogic(true);
    if zz_709 = '1' then
      zz_708 <= pkg_toStdLogic(false);
    end if;
  end process;

  process(io_apb_PADDR,gateways_0_priority,gateways_0_ip,gateways_1_priority,gateways_1_ip,gateways_2_priority,gateways_2_ip,gateways_3_priority,gateways_3_ip,gateways_4_priority,gateways_4_ip,gateways_5_priority,gateways_5_ip,gateways_6_priority,gateways_6_ip,gateways_7_priority,gateways_7_ip,gateways_8_priority,gateways_8_ip,gateways_9_priority,gateways_9_ip,gateways_10_priority,gateways_10_ip,gateways_11_priority,gateways_11_ip,gateways_12_priority,gateways_12_ip,gateways_13_priority,gateways_13_ip,gateways_14_priority,gateways_14_ip,gateways_15_priority,gateways_15_ip,gateways_16_priority,gateways_16_ip,gateways_17_priority,gateways_17_ip,gateways_18_priority,gateways_18_ip,gateways_19_priority,gateways_19_ip,gateways_20_priority,gateways_20_ip,gateways_21_priority,gateways_21_ip,gateways_22_priority,gateways_22_ip,gateways_23_priority,gateways_23_ip,gateways_24_priority,gateways_24_ip,gateways_25_priority,gateways_25_ip,gateways_26_priority,gateways_26_ip,gateways_27_priority,gateways_27_ip,gateways_28_priority,gateways_28_ip,gateways_29_priority,gateways_29_ip,gateways_30_priority,gateways_30_ip,gateways_31_priority,gateways_31_ip,gateways_32_priority,gateways_32_ip,gateways_33_priority,gateways_33_ip,gateways_34_priority,gateways_34_ip,targets_0_threshold,targets_0_claim,targets_0_ie_0,targets_0_ie_7,targets_0_ie_10,targets_0_ie_12,targets_0_ie_15,targets_0_ie_21,targets_0_ie_24,targets_0_ie_26,targets_0_ie_33,targets_0_ie_1,targets_0_ie_4,targets_0_ie_11,targets_0_ie_20,targets_0_ie_23,targets_0_ie_25,targets_0_ie_27,targets_0_ie_29,targets_0_ie_2,targets_0_ie_8,targets_0_ie_9,targets_0_ie_13,targets_0_ie_17,targets_0_ie_22,targets_0_ie_34,targets_0_ie_3,targets_0_ie_5,targets_0_ie_6,targets_0_ie_14,targets_0_ie_16,targets_0_ie_18,targets_0_ie_19,targets_0_ie_28,targets_0_ie_30,targets_0_ie_31,targets_0_ie_32,zz_174,zz_351,zz_139,zz_146,zz_149,zz_151,zz_154,zz_160,zz_163,zz_165,zz_172,zz_140,zz_143,zz_150,zz_159,zz_162,zz_164,zz_166,zz_168,zz_141,zz_147,zz_148,zz_152,zz_156,zz_161,zz_173,zz_142,zz_144,zz_145,zz_153,zz_155,zz_157,zz_158,zz_167,zz_169,zz_170,zz_171,zz_387,zz_564,zz_352,zz_359,zz_362,zz_364,zz_367,zz_373,zz_376,zz_378,zz_385,zz_353,zz_356,zz_363,zz_372,zz_375,zz_377,zz_379,zz_381,zz_354,zz_360,zz_361,zz_365,zz_369,zz_374,zz_386,zz_355,zz_357,zz_358,zz_366,zz_368,zz_370,zz_371,zz_380,zz_382,zz_383,zz_384)
  begin
    io_apb_PRDATA <= pkg_stdLogicVector("00000000000000000000000000000000");
    case io_apb_PADDR is
      when "000000000000000001011000" =>
        io_apb_PRDATA(1 downto 0) <= std_logic_vector(gateways_0_priority);
      when "000000000001000001011000" =>
        io_apb_PRDATA(0 downto 0) <= pkg_toStdLogicVector(gateways_0_ip);
      when "000000000000000011100000" =>
        io_apb_PRDATA(1 downto 0) <= std_logic_vector(gateways_1_priority);
      when "000000000001000011100000" =>
        io_apb_PRDATA(0 downto 0) <= pkg_toStdLogicVector(gateways_1_ip);
      when "000000000000000111000100" =>
        io_apb_PRDATA(1 downto 0) <= std_logic_vector(gateways_2_priority);
      when "000000000001000111000100" =>
        io_apb_PRDATA(0 downto 0) <= pkg_toStdLogicVector(gateways_2_ip);
      when "000000000000000101001000" =>
        io_apb_PRDATA(1 downto 0) <= std_logic_vector(gateways_3_priority);
      when "000000000001000101001000" =>
        io_apb_PRDATA(0 downto 0) <= pkg_toStdLogicVector(gateways_3_ip);
      when "000000000000000010001100" =>
        io_apb_PRDATA(1 downto 0) <= std_logic_vector(gateways_4_priority);
      when "000000000001000010001100" =>
        io_apb_PRDATA(0 downto 0) <= pkg_toStdLogicVector(gateways_4_ip);
      when "000000000000000101111000" =>
        io_apb_PRDATA(1 downto 0) <= std_logic_vector(gateways_5_priority);
      when "000000000001000101111000" =>
        io_apb_PRDATA(0 downto 0) <= pkg_toStdLogicVector(gateways_5_ip);
      when "000000000000000100100100" =>
        io_apb_PRDATA(1 downto 0) <= std_logic_vector(gateways_6_priority);
      when "000000000001000100100100" =>
        io_apb_PRDATA(0 downto 0) <= pkg_toStdLogicVector(gateways_6_ip);
      when "000000000000000000100000" =>
        io_apb_PRDATA(1 downto 0) <= std_logic_vector(gateways_7_priority);
      when "000000000001000000100000" =>
        io_apb_PRDATA(0 downto 0) <= pkg_toStdLogicVector(gateways_7_ip);
      when "000000000000000111101000" =>
        io_apb_PRDATA(1 downto 0) <= std_logic_vector(gateways_8_priority);
      when "000000000001000111101000" =>
        io_apb_PRDATA(0 downto 0) <= pkg_toStdLogicVector(gateways_8_ip);
      when "000000000000000111001100" =>
        io_apb_PRDATA(1 downto 0) <= std_logic_vector(gateways_9_priority);
      when "000000000001000111001100" =>
        io_apb_PRDATA(0 downto 0) <= pkg_toStdLogicVector(gateways_9_ip);
      when "000000000000000001100100" =>
        io_apb_PRDATA(1 downto 0) <= std_logic_vector(gateways_10_priority);
      when "000000000001000001100100" =>
        io_apb_PRDATA(0 downto 0) <= pkg_toStdLogicVector(gateways_10_ip);
      when "000000000000000010100000" =>
        io_apb_PRDATA(1 downto 0) <= std_logic_vector(gateways_11_priority);
      when "000000000001000010100000" =>
        io_apb_PRDATA(0 downto 0) <= pkg_toStdLogicVector(gateways_11_ip);
      when "000000000000000000101000" =>
        io_apb_PRDATA(1 downto 0) <= std_logic_vector(gateways_12_priority);
      when "000000000001000000101000" =>
        io_apb_PRDATA(0 downto 0) <= pkg_toStdLogicVector(gateways_12_ip);
      when "000000000000000111110000" =>
        io_apb_PRDATA(1 downto 0) <= std_logic_vector(gateways_13_priority);
      when "000000000001000111110000" =>
        io_apb_PRDATA(0 downto 0) <= pkg_toStdLogicVector(gateways_13_ip);
      when "000000000000000100111000" =>
        io_apb_PRDATA(1 downto 0) <= std_logic_vector(gateways_14_priority);
      when "000000000001000100111000" =>
        io_apb_PRDATA(0 downto 0) <= pkg_toStdLogicVector(gateways_14_ip);
      when "000000000000000000110000" =>
        io_apb_PRDATA(1 downto 0) <= std_logic_vector(gateways_15_priority);
      when "000000000001000000110000" =>
        io_apb_PRDATA(0 downto 0) <= pkg_toStdLogicVector(gateways_15_ip);
      when "000000000000000100011000" =>
        io_apb_PRDATA(1 downto 0) <= std_logic_vector(gateways_16_priority);
      when "000000000001000100011000" =>
        io_apb_PRDATA(0 downto 0) <= pkg_toStdLogicVector(gateways_16_ip);
      when "000000000000000110011100" =>
        io_apb_PRDATA(1 downto 0) <= std_logic_vector(gateways_17_priority);
      when "000000000001000110011100" =>
        io_apb_PRDATA(0 downto 0) <= pkg_toStdLogicVector(gateways_17_ip);
      when "000000000000000100001000" =>
        io_apb_PRDATA(1 downto 0) <= std_logic_vector(gateways_18_priority);
      when "000000000001000100001000" =>
        io_apb_PRDATA(0 downto 0) <= pkg_toStdLogicVector(gateways_18_ip);
      when "000000000000000101101100" =>
        io_apb_PRDATA(1 downto 0) <= std_logic_vector(gateways_19_priority);
      when "000000000001000101101100" =>
        io_apb_PRDATA(0 downto 0) <= pkg_toStdLogicVector(gateways_19_ip);
      when "000000000000000011100100" =>
        io_apb_PRDATA(1 downto 0) <= std_logic_vector(gateways_20_priority);
      when "000000000001000011100100" =>
        io_apb_PRDATA(0 downto 0) <= pkg_toStdLogicVector(gateways_20_ip);
      when "000000000000000000011100" =>
        io_apb_PRDATA(1 downto 0) <= std_logic_vector(gateways_21_priority);
      when "000000000001000000011100" =>
        io_apb_PRDATA(0 downto 0) <= pkg_toStdLogicVector(gateways_21_ip);
      when "000000000000000111110100" =>
        io_apb_PRDATA(1 downto 0) <= std_logic_vector(gateways_22_priority);
      when "000000000001000111110100" =>
        io_apb_PRDATA(0 downto 0) <= pkg_toStdLogicVector(gateways_22_ip);
      when "000000000000000011011000" =>
        io_apb_PRDATA(1 downto 0) <= std_logic_vector(gateways_23_priority);
      when "000000000001000011011000" =>
        io_apb_PRDATA(0 downto 0) <= pkg_toStdLogicVector(gateways_23_ip);
      when "000000000000000001100000" =>
        io_apb_PRDATA(1 downto 0) <= std_logic_vector(gateways_24_priority);
      when "000000000001000001100000" =>
        io_apb_PRDATA(0 downto 0) <= pkg_toStdLogicVector(gateways_24_ip);
      when "000000000000000011000000" =>
        io_apb_PRDATA(1 downto 0) <= std_logic_vector(gateways_25_priority);
      when "000000000001000011000000" =>
        io_apb_PRDATA(0 downto 0) <= pkg_toStdLogicVector(gateways_25_ip);
      when "000000000000000001010100" =>
        io_apb_PRDATA(1 downto 0) <= std_logic_vector(gateways_26_priority);
      when "000000000001000001010100" =>
        io_apb_PRDATA(0 downto 0) <= pkg_toStdLogicVector(gateways_26_ip);
      when "000000000000000011111100" =>
        io_apb_PRDATA(1 downto 0) <= std_logic_vector(gateways_27_priority);
      when "000000000001000011111100" =>
        io_apb_PRDATA(0 downto 0) <= pkg_toStdLogicVector(gateways_27_ip);
      when "000000000000000100110000" =>
        io_apb_PRDATA(1 downto 0) <= std_logic_vector(gateways_28_priority);
      when "000000000001000100110000" =>
        io_apb_PRDATA(0 downto 0) <= pkg_toStdLogicVector(gateways_28_ip);
      when "000000000000000010100100" =>
        io_apb_PRDATA(1 downto 0) <= std_logic_vector(gateways_29_priority);
      when "000000000001000010100100" =>
        io_apb_PRDATA(0 downto 0) <= pkg_toStdLogicVector(gateways_29_ip);
      when "000000000000000101111100" =>
        io_apb_PRDATA(1 downto 0) <= std_logic_vector(gateways_30_priority);
      when "000000000001000101111100" =>
        io_apb_PRDATA(0 downto 0) <= pkg_toStdLogicVector(gateways_30_ip);
      when "000000000000000100110100" =>
        io_apb_PRDATA(1 downto 0) <= std_logic_vector(gateways_31_priority);
      when "000000000001000100110100" =>
        io_apb_PRDATA(0 downto 0) <= pkg_toStdLogicVector(gateways_31_ip);
      when "000000000000000100010000" =>
        io_apb_PRDATA(1 downto 0) <= std_logic_vector(gateways_32_priority);
      when "000000000001000100010000" =>
        io_apb_PRDATA(0 downto 0) <= pkg_toStdLogicVector(gateways_32_ip);
      when "000000000000000001001000" =>
        io_apb_PRDATA(1 downto 0) <= std_logic_vector(gateways_33_priority);
      when "000000000001000001001000" =>
        io_apb_PRDATA(0 downto 0) <= pkg_toStdLogicVector(gateways_33_ip);
      when "000000000000000110110000" =>
        io_apb_PRDATA(1 downto 0) <= std_logic_vector(gateways_34_priority);
      when "000000000001000110110000" =>
        io_apb_PRDATA(0 downto 0) <= pkg_toStdLogicVector(gateways_34_ip);
      when "001000000000000000000000" =>
        io_apb_PRDATA(1 downto 0) <= std_logic_vector(targets_0_threshold);
      when "001000000000000000000100" =>
        io_apb_PRDATA(6 downto 0) <= std_logic_vector(targets_0_claim);
      when "000000000010000000000000" =>
        io_apb_PRDATA(22 downto 22) <= pkg_toStdLogicVector(targets_0_ie_0);
        io_apb_PRDATA(8 downto 8) <= pkg_toStdLogicVector(targets_0_ie_7);
        io_apb_PRDATA(25 downto 25) <= pkg_toStdLogicVector(targets_0_ie_10);
        io_apb_PRDATA(10 downto 10) <= pkg_toStdLogicVector(targets_0_ie_12);
        io_apb_PRDATA(12 downto 12) <= pkg_toStdLogicVector(targets_0_ie_15);
        io_apb_PRDATA(7 downto 7) <= pkg_toStdLogicVector(targets_0_ie_21);
        io_apb_PRDATA(24 downto 24) <= pkg_toStdLogicVector(targets_0_ie_24);
        io_apb_PRDATA(21 downto 21) <= pkg_toStdLogicVector(targets_0_ie_26);
        io_apb_PRDATA(18 downto 18) <= pkg_toStdLogicVector(targets_0_ie_33);
      when "000000000010000000000100" =>
        io_apb_PRDATA(24 downto 24) <= pkg_toStdLogicVector(targets_0_ie_1);
        io_apb_PRDATA(3 downto 3) <= pkg_toStdLogicVector(targets_0_ie_4);
        io_apb_PRDATA(8 downto 8) <= pkg_toStdLogicVector(targets_0_ie_11);
        io_apb_PRDATA(25 downto 25) <= pkg_toStdLogicVector(targets_0_ie_20);
        io_apb_PRDATA(22 downto 22) <= pkg_toStdLogicVector(targets_0_ie_23);
        io_apb_PRDATA(16 downto 16) <= pkg_toStdLogicVector(targets_0_ie_25);
        io_apb_PRDATA(31 downto 31) <= pkg_toStdLogicVector(targets_0_ie_27);
        io_apb_PRDATA(9 downto 9) <= pkg_toStdLogicVector(targets_0_ie_29);
      when "000000000010000000001100" =>
        io_apb_PRDATA(17 downto 17) <= pkg_toStdLogicVector(targets_0_ie_2);
        io_apb_PRDATA(26 downto 26) <= pkg_toStdLogicVector(targets_0_ie_8);
        io_apb_PRDATA(19 downto 19) <= pkg_toStdLogicVector(targets_0_ie_9);
        io_apb_PRDATA(28 downto 28) <= pkg_toStdLogicVector(targets_0_ie_13);
        io_apb_PRDATA(7 downto 7) <= pkg_toStdLogicVector(targets_0_ie_17);
        io_apb_PRDATA(29 downto 29) <= pkg_toStdLogicVector(targets_0_ie_22);
        io_apb_PRDATA(12 downto 12) <= pkg_toStdLogicVector(targets_0_ie_34);
      when "000000000010000000001000" =>
        io_apb_PRDATA(18 downto 18) <= pkg_toStdLogicVector(targets_0_ie_3);
        io_apb_PRDATA(30 downto 30) <= pkg_toStdLogicVector(targets_0_ie_5);
        io_apb_PRDATA(9 downto 9) <= pkg_toStdLogicVector(targets_0_ie_6);
        io_apb_PRDATA(14 downto 14) <= pkg_toStdLogicVector(targets_0_ie_14);
        io_apb_PRDATA(6 downto 6) <= pkg_toStdLogicVector(targets_0_ie_16);
        io_apb_PRDATA(2 downto 2) <= pkg_toStdLogicVector(targets_0_ie_18);
        io_apb_PRDATA(27 downto 27) <= pkg_toStdLogicVector(targets_0_ie_19);
        io_apb_PRDATA(12 downto 12) <= pkg_toStdLogicVector(targets_0_ie_28);
        io_apb_PRDATA(31 downto 31) <= pkg_toStdLogicVector(targets_0_ie_30);
        io_apb_PRDATA(13 downto 13) <= pkg_toStdLogicVector(targets_0_ie_31);
        io_apb_PRDATA(4 downto 4) <= pkg_toStdLogicVector(targets_0_ie_32);
      when "001000000001000000000000" =>
        io_apb_PRDATA(1 downto 0) <= std_logic_vector(zz_174);
      when "001000000001000000000100" =>
        io_apb_PRDATA(6 downto 0) <= std_logic_vector(zz_351);
      when "000000000010000010000000" =>
        io_apb_PRDATA(22 downto 22) <= pkg_toStdLogicVector(zz_139);
        io_apb_PRDATA(8 downto 8) <= pkg_toStdLogicVector(zz_146);
        io_apb_PRDATA(25 downto 25) <= pkg_toStdLogicVector(zz_149);
        io_apb_PRDATA(10 downto 10) <= pkg_toStdLogicVector(zz_151);
        io_apb_PRDATA(12 downto 12) <= pkg_toStdLogicVector(zz_154);
        io_apb_PRDATA(7 downto 7) <= pkg_toStdLogicVector(zz_160);
        io_apb_PRDATA(24 downto 24) <= pkg_toStdLogicVector(zz_163);
        io_apb_PRDATA(21 downto 21) <= pkg_toStdLogicVector(zz_165);
        io_apb_PRDATA(18 downto 18) <= pkg_toStdLogicVector(zz_172);
      when "000000000010000010000100" =>
        io_apb_PRDATA(24 downto 24) <= pkg_toStdLogicVector(zz_140);
        io_apb_PRDATA(3 downto 3) <= pkg_toStdLogicVector(zz_143);
        io_apb_PRDATA(8 downto 8) <= pkg_toStdLogicVector(zz_150);
        io_apb_PRDATA(25 downto 25) <= pkg_toStdLogicVector(zz_159);
        io_apb_PRDATA(22 downto 22) <= pkg_toStdLogicVector(zz_162);
        io_apb_PRDATA(16 downto 16) <= pkg_toStdLogicVector(zz_164);
        io_apb_PRDATA(31 downto 31) <= pkg_toStdLogicVector(zz_166);
        io_apb_PRDATA(9 downto 9) <= pkg_toStdLogicVector(zz_168);
      when "000000000010000010001100" =>
        io_apb_PRDATA(17 downto 17) <= pkg_toStdLogicVector(zz_141);
        io_apb_PRDATA(26 downto 26) <= pkg_toStdLogicVector(zz_147);
        io_apb_PRDATA(19 downto 19) <= pkg_toStdLogicVector(zz_148);
        io_apb_PRDATA(28 downto 28) <= pkg_toStdLogicVector(zz_152);
        io_apb_PRDATA(7 downto 7) <= pkg_toStdLogicVector(zz_156);
        io_apb_PRDATA(29 downto 29) <= pkg_toStdLogicVector(zz_161);
        io_apb_PRDATA(12 downto 12) <= pkg_toStdLogicVector(zz_173);
      when "000000000010000010001000" =>
        io_apb_PRDATA(18 downto 18) <= pkg_toStdLogicVector(zz_142);
        io_apb_PRDATA(30 downto 30) <= pkg_toStdLogicVector(zz_144);
        io_apb_PRDATA(9 downto 9) <= pkg_toStdLogicVector(zz_145);
        io_apb_PRDATA(14 downto 14) <= pkg_toStdLogicVector(zz_153);
        io_apb_PRDATA(6 downto 6) <= pkg_toStdLogicVector(zz_155);
        io_apb_PRDATA(2 downto 2) <= pkg_toStdLogicVector(zz_157);
        io_apb_PRDATA(27 downto 27) <= pkg_toStdLogicVector(zz_158);
        io_apb_PRDATA(12 downto 12) <= pkg_toStdLogicVector(zz_167);
        io_apb_PRDATA(31 downto 31) <= pkg_toStdLogicVector(zz_169);
        io_apb_PRDATA(13 downto 13) <= pkg_toStdLogicVector(zz_170);
        io_apb_PRDATA(4 downto 4) <= pkg_toStdLogicVector(zz_171);
      when "001000000010000000000000" =>
        io_apb_PRDATA(1 downto 0) <= std_logic_vector(zz_387);
      when "001000000010000000000100" =>
        io_apb_PRDATA(6 downto 0) <= std_logic_vector(zz_564);
      when "000000000010000100000000" =>
        io_apb_PRDATA(22 downto 22) <= pkg_toStdLogicVector(zz_352);
        io_apb_PRDATA(8 downto 8) <= pkg_toStdLogicVector(zz_359);
        io_apb_PRDATA(25 downto 25) <= pkg_toStdLogicVector(zz_362);
        io_apb_PRDATA(10 downto 10) <= pkg_toStdLogicVector(zz_364);
        io_apb_PRDATA(12 downto 12) <= pkg_toStdLogicVector(zz_367);
        io_apb_PRDATA(7 downto 7) <= pkg_toStdLogicVector(zz_373);
        io_apb_PRDATA(24 downto 24) <= pkg_toStdLogicVector(zz_376);
        io_apb_PRDATA(21 downto 21) <= pkg_toStdLogicVector(zz_378);
        io_apb_PRDATA(18 downto 18) <= pkg_toStdLogicVector(zz_385);
      when "000000000010000100000100" =>
        io_apb_PRDATA(24 downto 24) <= pkg_toStdLogicVector(zz_353);
        io_apb_PRDATA(3 downto 3) <= pkg_toStdLogicVector(zz_356);
        io_apb_PRDATA(8 downto 8) <= pkg_toStdLogicVector(zz_363);
        io_apb_PRDATA(25 downto 25) <= pkg_toStdLogicVector(zz_372);
        io_apb_PRDATA(22 downto 22) <= pkg_toStdLogicVector(zz_375);
        io_apb_PRDATA(16 downto 16) <= pkg_toStdLogicVector(zz_377);
        io_apb_PRDATA(31 downto 31) <= pkg_toStdLogicVector(zz_379);
        io_apb_PRDATA(9 downto 9) <= pkg_toStdLogicVector(zz_381);
      when "000000000010000100001100" =>
        io_apb_PRDATA(17 downto 17) <= pkg_toStdLogicVector(zz_354);
        io_apb_PRDATA(26 downto 26) <= pkg_toStdLogicVector(zz_360);
        io_apb_PRDATA(19 downto 19) <= pkg_toStdLogicVector(zz_361);
        io_apb_PRDATA(28 downto 28) <= pkg_toStdLogicVector(zz_365);
        io_apb_PRDATA(7 downto 7) <= pkg_toStdLogicVector(zz_369);
        io_apb_PRDATA(29 downto 29) <= pkg_toStdLogicVector(zz_374);
        io_apb_PRDATA(12 downto 12) <= pkg_toStdLogicVector(zz_386);
      when "000000000010000100001000" =>
        io_apb_PRDATA(18 downto 18) <= pkg_toStdLogicVector(zz_355);
        io_apb_PRDATA(30 downto 30) <= pkg_toStdLogicVector(zz_357);
        io_apb_PRDATA(9 downto 9) <= pkg_toStdLogicVector(zz_358);
        io_apb_PRDATA(14 downto 14) <= pkg_toStdLogicVector(zz_366);
        io_apb_PRDATA(6 downto 6) <= pkg_toStdLogicVector(zz_368);
        io_apb_PRDATA(2 downto 2) <= pkg_toStdLogicVector(zz_370);
        io_apb_PRDATA(27 downto 27) <= pkg_toStdLogicVector(zz_371);
        io_apb_PRDATA(12 downto 12) <= pkg_toStdLogicVector(zz_380);
        io_apb_PRDATA(31 downto 31) <= pkg_toStdLogicVector(zz_382);
        io_apb_PRDATA(13 downto 13) <= pkg_toStdLogicVector(zz_383);
        io_apb_PRDATA(4 downto 4) <= pkg_toStdLogicVector(zz_384);
      when others =>
    end case;
  end process;

  io_apb_PSLVERROR <= pkg_toStdLogic(false);
  bus_askWrite <= ((pkg_extract(io_apb_PSEL,0) and io_apb_PENABLE) and io_apb_PWRITE);
  bus_askRead <= ((pkg_extract(io_apb_PSEL,0) and io_apb_PENABLE) and (not io_apb_PWRITE));
  bus_doWrite <= (((pkg_extract(io_apb_PSEL,0) and io_apb_PENABLE) and zz_708) and io_apb_PWRITE);
  bus_doRead <= (((pkg_extract(io_apb_PSEL,0) and io_apb_PENABLE) and zz_708) and (not io_apb_PWRITE));
  gateways_0_priority <= zz_565;
  gateways_1_priority <= zz_566;
  gateways_2_priority <= zz_567;
  gateways_3_priority <= zz_568;
  gateways_4_priority <= zz_569;
  gateways_5_priority <= zz_570;
  gateways_6_priority <= zz_571;
  gateways_7_priority <= zz_572;
  gateways_8_priority <= zz_573;
  gateways_9_priority <= zz_574;
  gateways_10_priority <= zz_575;
  gateways_11_priority <= zz_576;
  gateways_12_priority <= zz_577;
  gateways_13_priority <= zz_578;
  gateways_14_priority <= zz_579;
  gateways_15_priority <= zz_580;
  gateways_16_priority <= zz_581;
  gateways_17_priority <= zz_582;
  gateways_18_priority <= zz_583;
  gateways_19_priority <= zz_584;
  gateways_20_priority <= zz_585;
  gateways_21_priority <= zz_586;
  gateways_22_priority <= zz_587;
  gateways_23_priority <= zz_588;
  gateways_24_priority <= zz_589;
  gateways_25_priority <= zz_590;
  gateways_26_priority <= zz_591;
  gateways_27_priority <= zz_592;
  gateways_28_priority <= zz_593;
  gateways_29_priority <= zz_594;
  gateways_30_priority <= zz_595;
  gateways_31_priority <= zz_596;
  gateways_32_priority <= zz_597;
  gateways_33_priority <= zz_598;
  gateways_34_priority <= zz_599;
  process(io_apb_PADDR,bus_doRead)
  begin
    mapping_claim_valid <= pkg_toStdLogic(false);
    case io_apb_PADDR is
      when "001000000000000000000100" =>
        if bus_doRead = '1' then
          mapping_claim_valid <= pkg_toStdLogic(true);
        end if;
      when "001000000001000000000100" =>
        if bus_doRead = '1' then
          mapping_claim_valid <= pkg_toStdLogic(true);
        end if;
      when "001000000010000000000100" =>
        if bus_doRead = '1' then
          mapping_claim_valid <= pkg_toStdLogic(true);
        end if;
      when others =>
    end case;
  end process;

  process(io_apb_PADDR,bus_doRead,targets_0_claim,zz_351,zz_564)
  begin
    mapping_claim_payload <= pkg_unsigned("XXXXXXX");
    case io_apb_PADDR is
      when "001000000000000000000100" =>
        if bus_doRead = '1' then
          mapping_claim_payload <= targets_0_claim;
        end if;
      when "001000000001000000000100" =>
        if bus_doRead = '1' then
          mapping_claim_payload <= zz_351;
        end if;
      when "001000000010000000000100" =>
        if bus_doRead = '1' then
          mapping_claim_payload <= zz_564;
        end if;
      when others =>
    end case;
  end process;

  process(mapping_targetMapping_0_targetCompletion_valid,mapping_targetMapping_1_targetCompletion_valid,mapping_targetMapping_2_targetCompletion_valid)
  begin
    mapping_completion_valid <= pkg_toStdLogic(false);
    if mapping_targetMapping_0_targetCompletion_valid = '1' then
      mapping_completion_valid <= pkg_toStdLogic(true);
    end if;
    if mapping_targetMapping_1_targetCompletion_valid = '1' then
      mapping_completion_valid <= pkg_toStdLogic(true);
    end if;
    if mapping_targetMapping_2_targetCompletion_valid = '1' then
      mapping_completion_valid <= pkg_toStdLogic(true);
    end if;
  end process;

  process(mapping_targetMapping_0_targetCompletion_valid,mapping_targetMapping_0_targetCompletion_payload,mapping_targetMapping_1_targetCompletion_valid,mapping_targetMapping_1_targetCompletion_payload,mapping_targetMapping_2_targetCompletion_valid,mapping_targetMapping_2_targetCompletion_payload)
  begin
    mapping_completion_payload <= pkg_unsigned("XXXXXXX");
    if mapping_targetMapping_0_targetCompletion_valid = '1' then
      mapping_completion_payload <= mapping_targetMapping_0_targetCompletion_payload;
    end if;
    if mapping_targetMapping_1_targetCompletion_valid = '1' then
      mapping_completion_payload <= mapping_targetMapping_1_targetCompletion_payload;
    end if;
    if mapping_targetMapping_2_targetCompletion_valid = '1' then
      mapping_completion_payload <= mapping_targetMapping_2_targetCompletion_payload;
    end if;
  end process;

  process(zz_709,bus_askWrite,bus_askRead)
  begin
    mapping_coherencyStall_willIncrement <= pkg_toStdLogic(false);
    if zz_709 = '1' then
      mapping_coherencyStall_willIncrement <= pkg_toStdLogic(true);
    end if;
    if pkg_toStdLogic(true) = '1' then
      if bus_askWrite = '1' then
        mapping_coherencyStall_willIncrement <= pkg_toStdLogic(true);
      end if;
      if bus_askRead = '1' then
        mapping_coherencyStall_willIncrement <= pkg_toStdLogic(true);
      end if;
    end if;
  end process;

  mapping_coherencyStall_willClear <= pkg_toStdLogic(false);
  mapping_coherencyStall_willOverflowIfInc <= pkg_toStdLogic(mapping_coherencyStall_value = pkg_unsigned("1"));
  mapping_coherencyStall_willOverflow <= (mapping_coherencyStall_willOverflowIfInc and mapping_coherencyStall_willIncrement);
  process(mapping_coherencyStall_value,mapping_coherencyStall_willIncrement,mapping_coherencyStall_willClear)
  begin
    mapping_coherencyStall_valueNext <= (mapping_coherencyStall_value + unsigned(pkg_toStdLogicVector(mapping_coherencyStall_willIncrement)));
    if mapping_coherencyStall_willClear = '1' then
      mapping_coherencyStall_valueNext <= pkg_unsigned("0");
    end if;
  end process;

  targets_0_threshold <= zz_600;
  process(io_apb_PADDR,bus_doWrite)
  begin
    mapping_targetMapping_0_targetCompletion_valid <= pkg_toStdLogic(false);
    case io_apb_PADDR is
      when "001000000000000000000100" =>
        if bus_doWrite = '1' then
          mapping_targetMapping_0_targetCompletion_valid <= pkg_toStdLogic(true);
        end if;
      when others =>
    end case;
  end process;

  targets_0_ie_0 <= zz_601;
  targets_0_ie_1 <= zz_602;
  targets_0_ie_2 <= zz_603;
  targets_0_ie_3 <= zz_604;
  targets_0_ie_4 <= zz_605;
  targets_0_ie_5 <= zz_606;
  targets_0_ie_6 <= zz_607;
  targets_0_ie_7 <= zz_608;
  targets_0_ie_8 <= zz_609;
  targets_0_ie_9 <= zz_610;
  targets_0_ie_10 <= zz_611;
  targets_0_ie_11 <= zz_612;
  targets_0_ie_12 <= zz_613;
  targets_0_ie_13 <= zz_614;
  targets_0_ie_14 <= zz_615;
  targets_0_ie_15 <= zz_616;
  targets_0_ie_16 <= zz_617;
  targets_0_ie_17 <= zz_618;
  targets_0_ie_18 <= zz_619;
  targets_0_ie_19 <= zz_620;
  targets_0_ie_20 <= zz_621;
  targets_0_ie_21 <= zz_622;
  targets_0_ie_22 <= zz_623;
  targets_0_ie_23 <= zz_624;
  targets_0_ie_24 <= zz_625;
  targets_0_ie_25 <= zz_626;
  targets_0_ie_26 <= zz_627;
  targets_0_ie_27 <= zz_628;
  targets_0_ie_28 <= zz_629;
  targets_0_ie_29 <= zz_630;
  targets_0_ie_30 <= zz_631;
  targets_0_ie_31 <= zz_632;
  targets_0_ie_32 <= zz_633;
  targets_0_ie_33 <= zz_634;
  targets_0_ie_34 <= zz_635;
  zz_174 <= zz_636;
  process(io_apb_PADDR,bus_doWrite)
  begin
    mapping_targetMapping_1_targetCompletion_valid <= pkg_toStdLogic(false);
    case io_apb_PADDR is
      when "001000000001000000000100" =>
        if bus_doWrite = '1' then
          mapping_targetMapping_1_targetCompletion_valid <= pkg_toStdLogic(true);
        end if;
      when others =>
    end case;
  end process;

  zz_139 <= zz_637;
  zz_140 <= zz_638;
  zz_141 <= zz_639;
  zz_142 <= zz_640;
  zz_143 <= zz_641;
  zz_144 <= zz_642;
  zz_145 <= zz_643;
  zz_146 <= zz_644;
  zz_147 <= zz_645;
  zz_148 <= zz_646;
  zz_149 <= zz_647;
  zz_150 <= zz_648;
  zz_151 <= zz_649;
  zz_152 <= zz_650;
  zz_153 <= zz_651;
  zz_154 <= zz_652;
  zz_155 <= zz_653;
  zz_156 <= zz_654;
  zz_157 <= zz_655;
  zz_158 <= zz_656;
  zz_159 <= zz_657;
  zz_160 <= zz_658;
  zz_161 <= zz_659;
  zz_162 <= zz_660;
  zz_163 <= zz_661;
  zz_164 <= zz_662;
  zz_165 <= zz_663;
  zz_166 <= zz_664;
  zz_167 <= zz_665;
  zz_168 <= zz_666;
  zz_169 <= zz_667;
  zz_170 <= zz_668;
  zz_171 <= zz_669;
  zz_172 <= zz_670;
  zz_173 <= zz_671;
  zz_387 <= zz_672;
  process(io_apb_PADDR,bus_doWrite)
  begin
    mapping_targetMapping_2_targetCompletion_valid <= pkg_toStdLogic(false);
    case io_apb_PADDR is
      when "001000000010000000000100" =>
        if bus_doWrite = '1' then
          mapping_targetMapping_2_targetCompletion_valid <= pkg_toStdLogic(true);
        end if;
      when others =>
    end case;
  end process;

  zz_352 <= zz_673;
  zz_353 <= zz_674;
  zz_354 <= zz_675;
  zz_355 <= zz_676;
  zz_356 <= zz_677;
  zz_357 <= zz_678;
  zz_358 <= zz_679;
  zz_359 <= zz_680;
  zz_360 <= zz_681;
  zz_361 <= zz_682;
  zz_362 <= zz_683;
  zz_363 <= zz_684;
  zz_364 <= zz_685;
  zz_365 <= zz_686;
  zz_366 <= zz_687;
  zz_367 <= zz_688;
  zz_368 <= zz_689;
  zz_369 <= zz_690;
  zz_370 <= zz_691;
  zz_371 <= zz_692;
  zz_372 <= zz_693;
  zz_373 <= zz_694;
  zz_374 <= zz_695;
  zz_375 <= zz_696;
  zz_376 <= zz_697;
  zz_377 <= zz_698;
  zz_378 <= zz_699;
  zz_379 <= zz_700;
  zz_380 <= zz_701;
  zz_381 <= zz_702;
  zz_382 <= zz_703;
  zz_383 <= zz_704;
  zz_384 <= zz_705;
  zz_385 <= zz_706;
  zz_386 <= zz_707;
  mapping_targetMapping_0_targetCompletion_payload <= unsigned(pkg_extract(io_apb_PWDATA,6,0));
  mapping_targetMapping_1_targetCompletion_payload <= unsigned(pkg_extract(io_apb_PWDATA,6,0));
  mapping_targetMapping_2_targetCompletion_payload <= unsigned(pkg_extract(io_apb_PWDATA,6,0));
  process(clk, reset)
  begin
    if reset = '1' then
      gateways_0_ip <= pkg_toStdLogic(false);
      gateways_0_waitCompletion <= pkg_toStdLogic(false);
      gateways_1_ip <= pkg_toStdLogic(false);
      gateways_1_waitCompletion <= pkg_toStdLogic(false);
      gateways_2_ip <= pkg_toStdLogic(false);
      gateways_2_waitCompletion <= pkg_toStdLogic(false);
      gateways_3_ip <= pkg_toStdLogic(false);
      gateways_3_waitCompletion <= pkg_toStdLogic(false);
      gateways_4_ip <= pkg_toStdLogic(false);
      gateways_4_waitCompletion <= pkg_toStdLogic(false);
      gateways_5_ip <= pkg_toStdLogic(false);
      gateways_5_waitCompletion <= pkg_toStdLogic(false);
      gateways_6_ip <= pkg_toStdLogic(false);
      gateways_6_waitCompletion <= pkg_toStdLogic(false);
      gateways_7_ip <= pkg_toStdLogic(false);
      gateways_7_waitCompletion <= pkg_toStdLogic(false);
      gateways_8_ip <= pkg_toStdLogic(false);
      gateways_8_waitCompletion <= pkg_toStdLogic(false);
      gateways_9_ip <= pkg_toStdLogic(false);
      gateways_9_waitCompletion <= pkg_toStdLogic(false);
      gateways_10_ip <= pkg_toStdLogic(false);
      gateways_10_waitCompletion <= pkg_toStdLogic(false);
      gateways_11_ip <= pkg_toStdLogic(false);
      gateways_11_waitCompletion <= pkg_toStdLogic(false);
      gateways_12_ip <= pkg_toStdLogic(false);
      gateways_12_waitCompletion <= pkg_toStdLogic(false);
      gateways_13_ip <= pkg_toStdLogic(false);
      gateways_13_waitCompletion <= pkg_toStdLogic(false);
      gateways_14_ip <= pkg_toStdLogic(false);
      gateways_14_waitCompletion <= pkg_toStdLogic(false);
      gateways_15_ip <= pkg_toStdLogic(false);
      gateways_15_waitCompletion <= pkg_toStdLogic(false);
      gateways_16_ip <= pkg_toStdLogic(false);
      gateways_16_waitCompletion <= pkg_toStdLogic(false);
      gateways_17_ip <= pkg_toStdLogic(false);
      gateways_17_waitCompletion <= pkg_toStdLogic(false);
      gateways_18_ip <= pkg_toStdLogic(false);
      gateways_18_waitCompletion <= pkg_toStdLogic(false);
      gateways_19_ip <= pkg_toStdLogic(false);
      gateways_19_waitCompletion <= pkg_toStdLogic(false);
      gateways_20_ip <= pkg_toStdLogic(false);
      gateways_20_waitCompletion <= pkg_toStdLogic(false);
      gateways_21_ip <= pkg_toStdLogic(false);
      gateways_21_waitCompletion <= pkg_toStdLogic(false);
      gateways_22_ip <= pkg_toStdLogic(false);
      gateways_22_waitCompletion <= pkg_toStdLogic(false);
      gateways_23_ip <= pkg_toStdLogic(false);
      gateways_23_waitCompletion <= pkg_toStdLogic(false);
      gateways_24_ip <= pkg_toStdLogic(false);
      gateways_24_waitCompletion <= pkg_toStdLogic(false);
      gateways_25_ip <= pkg_toStdLogic(false);
      gateways_25_waitCompletion <= pkg_toStdLogic(false);
      gateways_26_ip <= pkg_toStdLogic(false);
      gateways_26_waitCompletion <= pkg_toStdLogic(false);
      gateways_27_ip <= pkg_toStdLogic(false);
      gateways_27_waitCompletion <= pkg_toStdLogic(false);
      gateways_28_ip <= pkg_toStdLogic(false);
      gateways_28_waitCompletion <= pkg_toStdLogic(false);
      gateways_29_ip <= pkg_toStdLogic(false);
      gateways_29_waitCompletion <= pkg_toStdLogic(false);
      gateways_30_ip <= pkg_toStdLogic(false);
      gateways_30_waitCompletion <= pkg_toStdLogic(false);
      gateways_31_ip <= pkg_toStdLogic(false);
      gateways_31_waitCompletion <= pkg_toStdLogic(false);
      gateways_32_ip <= pkg_toStdLogic(false);
      gateways_32_waitCompletion <= pkg_toStdLogic(false);
      gateways_33_ip <= pkg_toStdLogic(false);
      gateways_33_waitCompletion <= pkg_toStdLogic(false);
      gateways_34_ip <= pkg_toStdLogic(false);
      gateways_34_waitCompletion <= pkg_toStdLogic(false);
      zz_565 <= pkg_unsigned("00");
      zz_566 <= pkg_unsigned("00");
      zz_567 <= pkg_unsigned("00");
      zz_568 <= pkg_unsigned("00");
      zz_569 <= pkg_unsigned("00");
      zz_570 <= pkg_unsigned("00");
      zz_571 <= pkg_unsigned("00");
      zz_572 <= pkg_unsigned("00");
      zz_573 <= pkg_unsigned("00");
      zz_574 <= pkg_unsigned("00");
      zz_575 <= pkg_unsigned("00");
      zz_576 <= pkg_unsigned("00");
      zz_577 <= pkg_unsigned("00");
      zz_578 <= pkg_unsigned("00");
      zz_579 <= pkg_unsigned("00");
      zz_580 <= pkg_unsigned("00");
      zz_581 <= pkg_unsigned("00");
      zz_582 <= pkg_unsigned("00");
      zz_583 <= pkg_unsigned("00");
      zz_584 <= pkg_unsigned("00");
      zz_585 <= pkg_unsigned("00");
      zz_586 <= pkg_unsigned("00");
      zz_587 <= pkg_unsigned("00");
      zz_588 <= pkg_unsigned("00");
      zz_589 <= pkg_unsigned("00");
      zz_590 <= pkg_unsigned("00");
      zz_591 <= pkg_unsigned("00");
      zz_592 <= pkg_unsigned("00");
      zz_593 <= pkg_unsigned("00");
      zz_594 <= pkg_unsigned("00");
      zz_595 <= pkg_unsigned("00");
      zz_596 <= pkg_unsigned("00");
      zz_597 <= pkg_unsigned("00");
      zz_598 <= pkg_unsigned("00");
      zz_599 <= pkg_unsigned("00");
      mapping_coherencyStall_value <= pkg_unsigned("0");
      zz_600 <= pkg_unsigned("00");
      zz_601 <= pkg_toStdLogic(false);
      zz_602 <= pkg_toStdLogic(false);
      zz_603 <= pkg_toStdLogic(false);
      zz_604 <= pkg_toStdLogic(false);
      zz_605 <= pkg_toStdLogic(false);
      zz_606 <= pkg_toStdLogic(false);
      zz_607 <= pkg_toStdLogic(false);
      zz_608 <= pkg_toStdLogic(false);
      zz_609 <= pkg_toStdLogic(false);
      zz_610 <= pkg_toStdLogic(false);
      zz_611 <= pkg_toStdLogic(false);
      zz_612 <= pkg_toStdLogic(false);
      zz_613 <= pkg_toStdLogic(false);
      zz_614 <= pkg_toStdLogic(false);
      zz_615 <= pkg_toStdLogic(false);
      zz_616 <= pkg_toStdLogic(false);
      zz_617 <= pkg_toStdLogic(false);
      zz_618 <= pkg_toStdLogic(false);
      zz_619 <= pkg_toStdLogic(false);
      zz_620 <= pkg_toStdLogic(false);
      zz_621 <= pkg_toStdLogic(false);
      zz_622 <= pkg_toStdLogic(false);
      zz_623 <= pkg_toStdLogic(false);
      zz_624 <= pkg_toStdLogic(false);
      zz_625 <= pkg_toStdLogic(false);
      zz_626 <= pkg_toStdLogic(false);
      zz_627 <= pkg_toStdLogic(false);
      zz_628 <= pkg_toStdLogic(false);
      zz_629 <= pkg_toStdLogic(false);
      zz_630 <= pkg_toStdLogic(false);
      zz_631 <= pkg_toStdLogic(false);
      zz_632 <= pkg_toStdLogic(false);
      zz_633 <= pkg_toStdLogic(false);
      zz_634 <= pkg_toStdLogic(false);
      zz_635 <= pkg_toStdLogic(false);
      zz_636 <= pkg_unsigned("00");
      zz_637 <= pkg_toStdLogic(false);
      zz_638 <= pkg_toStdLogic(false);
      zz_639 <= pkg_toStdLogic(false);
      zz_640 <= pkg_toStdLogic(false);
      zz_641 <= pkg_toStdLogic(false);
      zz_642 <= pkg_toStdLogic(false);
      zz_643 <= pkg_toStdLogic(false);
      zz_644 <= pkg_toStdLogic(false);
      zz_645 <= pkg_toStdLogic(false);
      zz_646 <= pkg_toStdLogic(false);
      zz_647 <= pkg_toStdLogic(false);
      zz_648 <= pkg_toStdLogic(false);
      zz_649 <= pkg_toStdLogic(false);
      zz_650 <= pkg_toStdLogic(false);
      zz_651 <= pkg_toStdLogic(false);
      zz_652 <= pkg_toStdLogic(false);
      zz_653 <= pkg_toStdLogic(false);
      zz_654 <= pkg_toStdLogic(false);
      zz_655 <= pkg_toStdLogic(false);
      zz_656 <= pkg_toStdLogic(false);
      zz_657 <= pkg_toStdLogic(false);
      zz_658 <= pkg_toStdLogic(false);
      zz_659 <= pkg_toStdLogic(false);
      zz_660 <= pkg_toStdLogic(false);
      zz_661 <= pkg_toStdLogic(false);
      zz_662 <= pkg_toStdLogic(false);
      zz_663 <= pkg_toStdLogic(false);
      zz_664 <= pkg_toStdLogic(false);
      zz_665 <= pkg_toStdLogic(false);
      zz_666 <= pkg_toStdLogic(false);
      zz_667 <= pkg_toStdLogic(false);
      zz_668 <= pkg_toStdLogic(false);
      zz_669 <= pkg_toStdLogic(false);
      zz_670 <= pkg_toStdLogic(false);
      zz_671 <= pkg_toStdLogic(false);
      zz_672 <= pkg_unsigned("00");
      zz_673 <= pkg_toStdLogic(false);
      zz_674 <= pkg_toStdLogic(false);
      zz_675 <= pkg_toStdLogic(false);
      zz_676 <= pkg_toStdLogic(false);
      zz_677 <= pkg_toStdLogic(false);
      zz_678 <= pkg_toStdLogic(false);
      zz_679 <= pkg_toStdLogic(false);
      zz_680 <= pkg_toStdLogic(false);
      zz_681 <= pkg_toStdLogic(false);
      zz_682 <= pkg_toStdLogic(false);
      zz_683 <= pkg_toStdLogic(false);
      zz_684 <= pkg_toStdLogic(false);
      zz_685 <= pkg_toStdLogic(false);
      zz_686 <= pkg_toStdLogic(false);
      zz_687 <= pkg_toStdLogic(false);
      zz_688 <= pkg_toStdLogic(false);
      zz_689 <= pkg_toStdLogic(false);
      zz_690 <= pkg_toStdLogic(false);
      zz_691 <= pkg_toStdLogic(false);
      zz_692 <= pkg_toStdLogic(false);
      zz_693 <= pkg_toStdLogic(false);
      zz_694 <= pkg_toStdLogic(false);
      zz_695 <= pkg_toStdLogic(false);
      zz_696 <= pkg_toStdLogic(false);
      zz_697 <= pkg_toStdLogic(false);
      zz_698 <= pkg_toStdLogic(false);
      zz_699 <= pkg_toStdLogic(false);
      zz_700 <= pkg_toStdLogic(false);
      zz_701 <= pkg_toStdLogic(false);
      zz_702 <= pkg_toStdLogic(false);
      zz_703 <= pkg_toStdLogic(false);
      zz_704 <= pkg_toStdLogic(false);
      zz_705 <= pkg_toStdLogic(false);
      zz_706 <= pkg_toStdLogic(false);
      zz_707 <= pkg_toStdLogic(false);
    elsif rising_edge(clk) then
      if (not gateways_0_waitCompletion) = '1' then
        gateways_0_ip <= zz_1;
        gateways_0_waitCompletion <= zz_1;
      end if;
      if (not gateways_1_waitCompletion) = '1' then
        gateways_1_ip <= zz_2;
        gateways_1_waitCompletion <= zz_2;
      end if;
      if (not gateways_2_waitCompletion) = '1' then
        gateways_2_ip <= zz_3;
        gateways_2_waitCompletion <= zz_3;
      end if;
      if (not gateways_3_waitCompletion) = '1' then
        gateways_3_ip <= zz_4;
        gateways_3_waitCompletion <= zz_4;
      end if;
      if (not gateways_4_waitCompletion) = '1' then
        gateways_4_ip <= zz_5;
        gateways_4_waitCompletion <= zz_5;
      end if;
      if (not gateways_5_waitCompletion) = '1' then
        gateways_5_ip <= zz_6;
        gateways_5_waitCompletion <= zz_6;
      end if;
      if (not gateways_6_waitCompletion) = '1' then
        gateways_6_ip <= zz_7;
        gateways_6_waitCompletion <= zz_7;
      end if;
      if (not gateways_7_waitCompletion) = '1' then
        gateways_7_ip <= zz_8;
        gateways_7_waitCompletion <= zz_8;
      end if;
      if (not gateways_8_waitCompletion) = '1' then
        gateways_8_ip <= zz_9;
        gateways_8_waitCompletion <= zz_9;
      end if;
      if (not gateways_9_waitCompletion) = '1' then
        gateways_9_ip <= zz_10;
        gateways_9_waitCompletion <= zz_10;
      end if;
      if (not gateways_10_waitCompletion) = '1' then
        gateways_10_ip <= zz_11;
        gateways_10_waitCompletion <= zz_11;
      end if;
      if (not gateways_11_waitCompletion) = '1' then
        gateways_11_ip <= zz_12;
        gateways_11_waitCompletion <= zz_12;
      end if;
      if (not gateways_12_waitCompletion) = '1' then
        gateways_12_ip <= zz_13;
        gateways_12_waitCompletion <= zz_13;
      end if;
      if (not gateways_13_waitCompletion) = '1' then
        gateways_13_ip <= zz_14;
        gateways_13_waitCompletion <= zz_14;
      end if;
      if (not gateways_14_waitCompletion) = '1' then
        gateways_14_ip <= zz_15;
        gateways_14_waitCompletion <= zz_15;
      end if;
      if (not gateways_15_waitCompletion) = '1' then
        gateways_15_ip <= zz_16;
        gateways_15_waitCompletion <= zz_16;
      end if;
      if (not gateways_16_waitCompletion) = '1' then
        gateways_16_ip <= zz_17;
        gateways_16_waitCompletion <= zz_17;
      end if;
      if (not gateways_17_waitCompletion) = '1' then
        gateways_17_ip <= zz_18;
        gateways_17_waitCompletion <= zz_18;
      end if;
      if (not gateways_18_waitCompletion) = '1' then
        gateways_18_ip <= zz_19;
        gateways_18_waitCompletion <= zz_19;
      end if;
      if (not gateways_19_waitCompletion) = '1' then
        gateways_19_ip <= zz_20;
        gateways_19_waitCompletion <= zz_20;
      end if;
      if (not gateways_20_waitCompletion) = '1' then
        gateways_20_ip <= zz_21;
        gateways_20_waitCompletion <= zz_21;
      end if;
      if (not gateways_21_waitCompletion) = '1' then
        gateways_21_ip <= zz_22;
        gateways_21_waitCompletion <= zz_22;
      end if;
      if (not gateways_22_waitCompletion) = '1' then
        gateways_22_ip <= zz_23;
        gateways_22_waitCompletion <= zz_23;
      end if;
      if (not gateways_23_waitCompletion) = '1' then
        gateways_23_ip <= zz_24;
        gateways_23_waitCompletion <= zz_24;
      end if;
      if (not gateways_24_waitCompletion) = '1' then
        gateways_24_ip <= zz_25;
        gateways_24_waitCompletion <= zz_25;
      end if;
      if (not gateways_25_waitCompletion) = '1' then
        gateways_25_ip <= zz_26;
        gateways_25_waitCompletion <= zz_26;
      end if;
      if (not gateways_26_waitCompletion) = '1' then
        gateways_26_ip <= zz_27;
        gateways_26_waitCompletion <= zz_27;
      end if;
      if (not gateways_27_waitCompletion) = '1' then
        gateways_27_ip <= zz_28;
        gateways_27_waitCompletion <= zz_28;
      end if;
      if (not gateways_28_waitCompletion) = '1' then
        gateways_28_ip <= zz_29;
        gateways_28_waitCompletion <= zz_29;
      end if;
      if (not gateways_29_waitCompletion) = '1' then
        gateways_29_ip <= zz_30;
        gateways_29_waitCompletion <= zz_30;
      end if;
      if (not gateways_30_waitCompletion) = '1' then
        gateways_30_ip <= zz_31;
        gateways_30_waitCompletion <= zz_31;
      end if;
      if (not gateways_31_waitCompletion) = '1' then
        gateways_31_ip <= zz_32;
        gateways_31_waitCompletion <= zz_32;
      end if;
      if (not gateways_32_waitCompletion) = '1' then
        gateways_32_ip <= zz_33;
        gateways_32_waitCompletion <= zz_33;
      end if;
      if (not gateways_33_waitCompletion) = '1' then
        gateways_33_ip <= zz_34;
        gateways_33_waitCompletion <= zz_34;
      end if;
      if (not gateways_34_waitCompletion) = '1' then
        gateways_34_ip <= zz_35;
        gateways_34_waitCompletion <= zz_35;
      end if;
      if mapping_claim_valid = '1' then
        case mapping_claim_payload is
          when "0010110" =>
            gateways_0_ip <= pkg_toStdLogic(false);
          when "0111000" =>
            gateways_1_ip <= pkg_toStdLogic(false);
          when "1110001" =>
            gateways_2_ip <= pkg_toStdLogic(false);
          when "1010010" =>
            gateways_3_ip <= pkg_toStdLogic(false);
          when "0100011" =>
            gateways_4_ip <= pkg_toStdLogic(false);
          when "1011110" =>
            gateways_5_ip <= pkg_toStdLogic(false);
          when "1001001" =>
            gateways_6_ip <= pkg_toStdLogic(false);
          when "0001000" =>
            gateways_7_ip <= pkg_toStdLogic(false);
          when "1111010" =>
            gateways_8_ip <= pkg_toStdLogic(false);
          when "1110011" =>
            gateways_9_ip <= pkg_toStdLogic(false);
          when "0011001" =>
            gateways_10_ip <= pkg_toStdLogic(false);
          when "0101000" =>
            gateways_11_ip <= pkg_toStdLogic(false);
          when "0001010" =>
            gateways_12_ip <= pkg_toStdLogic(false);
          when "1111100" =>
            gateways_13_ip <= pkg_toStdLogic(false);
          when "1001110" =>
            gateways_14_ip <= pkg_toStdLogic(false);
          when "0001100" =>
            gateways_15_ip <= pkg_toStdLogic(false);
          when "1000110" =>
            gateways_16_ip <= pkg_toStdLogic(false);
          when "1100111" =>
            gateways_17_ip <= pkg_toStdLogic(false);
          when "1000010" =>
            gateways_18_ip <= pkg_toStdLogic(false);
          when "1011011" =>
            gateways_19_ip <= pkg_toStdLogic(false);
          when "0111001" =>
            gateways_20_ip <= pkg_toStdLogic(false);
          when "0000111" =>
            gateways_21_ip <= pkg_toStdLogic(false);
          when "1111101" =>
            gateways_22_ip <= pkg_toStdLogic(false);
          when "0110110" =>
            gateways_23_ip <= pkg_toStdLogic(false);
          when "0011000" =>
            gateways_24_ip <= pkg_toStdLogic(false);
          when "0110000" =>
            gateways_25_ip <= pkg_toStdLogic(false);
          when "0010101" =>
            gateways_26_ip <= pkg_toStdLogic(false);
          when "0111111" =>
            gateways_27_ip <= pkg_toStdLogic(false);
          when "1001100" =>
            gateways_28_ip <= pkg_toStdLogic(false);
          when "0101001" =>
            gateways_29_ip <= pkg_toStdLogic(false);
          when "1011111" =>
            gateways_30_ip <= pkg_toStdLogic(false);
          when "1001101" =>
            gateways_31_ip <= pkg_toStdLogic(false);
          when "1000100" =>
            gateways_32_ip <= pkg_toStdLogic(false);
          when "0010010" =>
            gateways_33_ip <= pkg_toStdLogic(false);
          when "1101100" =>
            gateways_34_ip <= pkg_toStdLogic(false);
          when others =>
        end case;
      end if;
      if mapping_completion_valid = '1' then
        case mapping_completion_payload is
          when "0010110" =>
            gateways_0_waitCompletion <= pkg_toStdLogic(false);
          when "0111000" =>
            gateways_1_waitCompletion <= pkg_toStdLogic(false);
          when "1110001" =>
            gateways_2_waitCompletion <= pkg_toStdLogic(false);
          when "1010010" =>
            gateways_3_waitCompletion <= pkg_toStdLogic(false);
          when "0100011" =>
            gateways_4_waitCompletion <= pkg_toStdLogic(false);
          when "1011110" =>
            gateways_5_waitCompletion <= pkg_toStdLogic(false);
          when "1001001" =>
            gateways_6_waitCompletion <= pkg_toStdLogic(false);
          when "0001000" =>
            gateways_7_waitCompletion <= pkg_toStdLogic(false);
          when "1111010" =>
            gateways_8_waitCompletion <= pkg_toStdLogic(false);
          when "1110011" =>
            gateways_9_waitCompletion <= pkg_toStdLogic(false);
          when "0011001" =>
            gateways_10_waitCompletion <= pkg_toStdLogic(false);
          when "0101000" =>
            gateways_11_waitCompletion <= pkg_toStdLogic(false);
          when "0001010" =>
            gateways_12_waitCompletion <= pkg_toStdLogic(false);
          when "1111100" =>
            gateways_13_waitCompletion <= pkg_toStdLogic(false);
          when "1001110" =>
            gateways_14_waitCompletion <= pkg_toStdLogic(false);
          when "0001100" =>
            gateways_15_waitCompletion <= pkg_toStdLogic(false);
          when "1000110" =>
            gateways_16_waitCompletion <= pkg_toStdLogic(false);
          when "1100111" =>
            gateways_17_waitCompletion <= pkg_toStdLogic(false);
          when "1000010" =>
            gateways_18_waitCompletion <= pkg_toStdLogic(false);
          when "1011011" =>
            gateways_19_waitCompletion <= pkg_toStdLogic(false);
          when "0111001" =>
            gateways_20_waitCompletion <= pkg_toStdLogic(false);
          when "0000111" =>
            gateways_21_waitCompletion <= pkg_toStdLogic(false);
          when "1111101" =>
            gateways_22_waitCompletion <= pkg_toStdLogic(false);
          when "0110110" =>
            gateways_23_waitCompletion <= pkg_toStdLogic(false);
          when "0011000" =>
            gateways_24_waitCompletion <= pkg_toStdLogic(false);
          when "0110000" =>
            gateways_25_waitCompletion <= pkg_toStdLogic(false);
          when "0010101" =>
            gateways_26_waitCompletion <= pkg_toStdLogic(false);
          when "0111111" =>
            gateways_27_waitCompletion <= pkg_toStdLogic(false);
          when "1001100" =>
            gateways_28_waitCompletion <= pkg_toStdLogic(false);
          when "0101001" =>
            gateways_29_waitCompletion <= pkg_toStdLogic(false);
          when "1011111" =>
            gateways_30_waitCompletion <= pkg_toStdLogic(false);
          when "1001101" =>
            gateways_31_waitCompletion <= pkg_toStdLogic(false);
          when "1000100" =>
            gateways_32_waitCompletion <= pkg_toStdLogic(false);
          when "0010010" =>
            gateways_33_waitCompletion <= pkg_toStdLogic(false);
          when "1101100" =>
            gateways_34_waitCompletion <= pkg_toStdLogic(false);
          when others =>
        end case;
      end if;
      mapping_coherencyStall_value <= mapping_coherencyStall_valueNext;
      case io_apb_PADDR is
        when "000000000000000001011000" =>
          if bus_doWrite = '1' then
            zz_565 <= unsigned(pkg_extract(io_apb_PWDATA,1,0));
          end if;
        when "000000000000000011100000" =>
          if bus_doWrite = '1' then
            zz_566 <= unsigned(pkg_extract(io_apb_PWDATA,1,0));
          end if;
        when "000000000000000111000100" =>
          if bus_doWrite = '1' then
            zz_567 <= unsigned(pkg_extract(io_apb_PWDATA,1,0));
          end if;
        when "000000000000000101001000" =>
          if bus_doWrite = '1' then
            zz_568 <= unsigned(pkg_extract(io_apb_PWDATA,1,0));
          end if;
        when "000000000000000010001100" =>
          if bus_doWrite = '1' then
            zz_569 <= unsigned(pkg_extract(io_apb_PWDATA,1,0));
          end if;
        when "000000000000000101111000" =>
          if bus_doWrite = '1' then
            zz_570 <= unsigned(pkg_extract(io_apb_PWDATA,1,0));
          end if;
        when "000000000000000100100100" =>
          if bus_doWrite = '1' then
            zz_571 <= unsigned(pkg_extract(io_apb_PWDATA,1,0));
          end if;
        when "000000000000000000100000" =>
          if bus_doWrite = '1' then
            zz_572 <= unsigned(pkg_extract(io_apb_PWDATA,1,0));
          end if;
        when "000000000000000111101000" =>
          if bus_doWrite = '1' then
            zz_573 <= unsigned(pkg_extract(io_apb_PWDATA,1,0));
          end if;
        when "000000000000000111001100" =>
          if bus_doWrite = '1' then
            zz_574 <= unsigned(pkg_extract(io_apb_PWDATA,1,0));
          end if;
        when "000000000000000001100100" =>
          if bus_doWrite = '1' then
            zz_575 <= unsigned(pkg_extract(io_apb_PWDATA,1,0));
          end if;
        when "000000000000000010100000" =>
          if bus_doWrite = '1' then
            zz_576 <= unsigned(pkg_extract(io_apb_PWDATA,1,0));
          end if;
        when "000000000000000000101000" =>
          if bus_doWrite = '1' then
            zz_577 <= unsigned(pkg_extract(io_apb_PWDATA,1,0));
          end if;
        when "000000000000000111110000" =>
          if bus_doWrite = '1' then
            zz_578 <= unsigned(pkg_extract(io_apb_PWDATA,1,0));
          end if;
        when "000000000000000100111000" =>
          if bus_doWrite = '1' then
            zz_579 <= unsigned(pkg_extract(io_apb_PWDATA,1,0));
          end if;
        when "000000000000000000110000" =>
          if bus_doWrite = '1' then
            zz_580 <= unsigned(pkg_extract(io_apb_PWDATA,1,0));
          end if;
        when "000000000000000100011000" =>
          if bus_doWrite = '1' then
            zz_581 <= unsigned(pkg_extract(io_apb_PWDATA,1,0));
          end if;
        when "000000000000000110011100" =>
          if bus_doWrite = '1' then
            zz_582 <= unsigned(pkg_extract(io_apb_PWDATA,1,0));
          end if;
        when "000000000000000100001000" =>
          if bus_doWrite = '1' then
            zz_583 <= unsigned(pkg_extract(io_apb_PWDATA,1,0));
          end if;
        when "000000000000000101101100" =>
          if bus_doWrite = '1' then
            zz_584 <= unsigned(pkg_extract(io_apb_PWDATA,1,0));
          end if;
        when "000000000000000011100100" =>
          if bus_doWrite = '1' then
            zz_585 <= unsigned(pkg_extract(io_apb_PWDATA,1,0));
          end if;
        when "000000000000000000011100" =>
          if bus_doWrite = '1' then
            zz_586 <= unsigned(pkg_extract(io_apb_PWDATA,1,0));
          end if;
        when "000000000000000111110100" =>
          if bus_doWrite = '1' then
            zz_587 <= unsigned(pkg_extract(io_apb_PWDATA,1,0));
          end if;
        when "000000000000000011011000" =>
          if bus_doWrite = '1' then
            zz_588 <= unsigned(pkg_extract(io_apb_PWDATA,1,0));
          end if;
        when "000000000000000001100000" =>
          if bus_doWrite = '1' then
            zz_589 <= unsigned(pkg_extract(io_apb_PWDATA,1,0));
          end if;
        when "000000000000000011000000" =>
          if bus_doWrite = '1' then
            zz_590 <= unsigned(pkg_extract(io_apb_PWDATA,1,0));
          end if;
        when "000000000000000001010100" =>
          if bus_doWrite = '1' then
            zz_591 <= unsigned(pkg_extract(io_apb_PWDATA,1,0));
          end if;
        when "000000000000000011111100" =>
          if bus_doWrite = '1' then
            zz_592 <= unsigned(pkg_extract(io_apb_PWDATA,1,0));
          end if;
        when "000000000000000100110000" =>
          if bus_doWrite = '1' then
            zz_593 <= unsigned(pkg_extract(io_apb_PWDATA,1,0));
          end if;
        when "000000000000000010100100" =>
          if bus_doWrite = '1' then
            zz_594 <= unsigned(pkg_extract(io_apb_PWDATA,1,0));
          end if;
        when "000000000000000101111100" =>
          if bus_doWrite = '1' then
            zz_595 <= unsigned(pkg_extract(io_apb_PWDATA,1,0));
          end if;
        when "000000000000000100110100" =>
          if bus_doWrite = '1' then
            zz_596 <= unsigned(pkg_extract(io_apb_PWDATA,1,0));
          end if;
        when "000000000000000100010000" =>
          if bus_doWrite = '1' then
            zz_597 <= unsigned(pkg_extract(io_apb_PWDATA,1,0));
          end if;
        when "000000000000000001001000" =>
          if bus_doWrite = '1' then
            zz_598 <= unsigned(pkg_extract(io_apb_PWDATA,1,0));
          end if;
        when "000000000000000110110000" =>
          if bus_doWrite = '1' then
            zz_599 <= unsigned(pkg_extract(io_apb_PWDATA,1,0));
          end if;
        when "001000000000000000000000" =>
          if bus_doWrite = '1' then
            zz_600 <= unsigned(pkg_extract(io_apb_PWDATA,1,0));
          end if;
        when "000000000010000000000000" =>
          if bus_doWrite = '1' then
            zz_601 <= pkg_extract(pkg_extract(io_apb_PWDATA,22,22),0);
            zz_608 <= pkg_extract(pkg_extract(io_apb_PWDATA,8,8),0);
            zz_611 <= pkg_extract(pkg_extract(io_apb_PWDATA,25,25),0);
            zz_613 <= pkg_extract(pkg_extract(io_apb_PWDATA,10,10),0);
            zz_616 <= pkg_extract(pkg_extract(io_apb_PWDATA,12,12),0);
            zz_622 <= pkg_extract(pkg_extract(io_apb_PWDATA,7,7),0);
            zz_625 <= pkg_extract(pkg_extract(io_apb_PWDATA,24,24),0);
            zz_627 <= pkg_extract(pkg_extract(io_apb_PWDATA,21,21),0);
            zz_634 <= pkg_extract(pkg_extract(io_apb_PWDATA,18,18),0);
          end if;
        when "000000000010000000000100" =>
          if bus_doWrite = '1' then
            zz_602 <= pkg_extract(pkg_extract(io_apb_PWDATA,24,24),0);
            zz_605 <= pkg_extract(pkg_extract(io_apb_PWDATA,3,3),0);
            zz_612 <= pkg_extract(pkg_extract(io_apb_PWDATA,8,8),0);
            zz_621 <= pkg_extract(pkg_extract(io_apb_PWDATA,25,25),0);
            zz_624 <= pkg_extract(pkg_extract(io_apb_PWDATA,22,22),0);
            zz_626 <= pkg_extract(pkg_extract(io_apb_PWDATA,16,16),0);
            zz_628 <= pkg_extract(pkg_extract(io_apb_PWDATA,31,31),0);
            zz_630 <= pkg_extract(pkg_extract(io_apb_PWDATA,9,9),0);
          end if;
        when "000000000010000000001100" =>
          if bus_doWrite = '1' then
            zz_603 <= pkg_extract(pkg_extract(io_apb_PWDATA,17,17),0);
            zz_609 <= pkg_extract(pkg_extract(io_apb_PWDATA,26,26),0);
            zz_610 <= pkg_extract(pkg_extract(io_apb_PWDATA,19,19),0);
            zz_614 <= pkg_extract(pkg_extract(io_apb_PWDATA,28,28),0);
            zz_618 <= pkg_extract(pkg_extract(io_apb_PWDATA,7,7),0);
            zz_623 <= pkg_extract(pkg_extract(io_apb_PWDATA,29,29),0);
            zz_635 <= pkg_extract(pkg_extract(io_apb_PWDATA,12,12),0);
          end if;
        when "000000000010000000001000" =>
          if bus_doWrite = '1' then
            zz_604 <= pkg_extract(pkg_extract(io_apb_PWDATA,18,18),0);
            zz_606 <= pkg_extract(pkg_extract(io_apb_PWDATA,30,30),0);
            zz_607 <= pkg_extract(pkg_extract(io_apb_PWDATA,9,9),0);
            zz_615 <= pkg_extract(pkg_extract(io_apb_PWDATA,14,14),0);
            zz_617 <= pkg_extract(pkg_extract(io_apb_PWDATA,6,6),0);
            zz_619 <= pkg_extract(pkg_extract(io_apb_PWDATA,2,2),0);
            zz_620 <= pkg_extract(pkg_extract(io_apb_PWDATA,27,27),0);
            zz_629 <= pkg_extract(pkg_extract(io_apb_PWDATA,12,12),0);
            zz_631 <= pkg_extract(pkg_extract(io_apb_PWDATA,31,31),0);
            zz_632 <= pkg_extract(pkg_extract(io_apb_PWDATA,13,13),0);
            zz_633 <= pkg_extract(pkg_extract(io_apb_PWDATA,4,4),0);
          end if;
        when "001000000001000000000000" =>
          if bus_doWrite = '1' then
            zz_636 <= unsigned(pkg_extract(io_apb_PWDATA,1,0));
          end if;
        when "000000000010000010000000" =>
          if bus_doWrite = '1' then
            zz_637 <= pkg_extract(pkg_extract(io_apb_PWDATA,22,22),0);
            zz_644 <= pkg_extract(pkg_extract(io_apb_PWDATA,8,8),0);
            zz_647 <= pkg_extract(pkg_extract(io_apb_PWDATA,25,25),0);
            zz_649 <= pkg_extract(pkg_extract(io_apb_PWDATA,10,10),0);
            zz_652 <= pkg_extract(pkg_extract(io_apb_PWDATA,12,12),0);
            zz_658 <= pkg_extract(pkg_extract(io_apb_PWDATA,7,7),0);
            zz_661 <= pkg_extract(pkg_extract(io_apb_PWDATA,24,24),0);
            zz_663 <= pkg_extract(pkg_extract(io_apb_PWDATA,21,21),0);
            zz_670 <= pkg_extract(pkg_extract(io_apb_PWDATA,18,18),0);
          end if;
        when "000000000010000010000100" =>
          if bus_doWrite = '1' then
            zz_638 <= pkg_extract(pkg_extract(io_apb_PWDATA,24,24),0);
            zz_641 <= pkg_extract(pkg_extract(io_apb_PWDATA,3,3),0);
            zz_648 <= pkg_extract(pkg_extract(io_apb_PWDATA,8,8),0);
            zz_657 <= pkg_extract(pkg_extract(io_apb_PWDATA,25,25),0);
            zz_660 <= pkg_extract(pkg_extract(io_apb_PWDATA,22,22),0);
            zz_662 <= pkg_extract(pkg_extract(io_apb_PWDATA,16,16),0);
            zz_664 <= pkg_extract(pkg_extract(io_apb_PWDATA,31,31),0);
            zz_666 <= pkg_extract(pkg_extract(io_apb_PWDATA,9,9),0);
          end if;
        when "000000000010000010001100" =>
          if bus_doWrite = '1' then
            zz_639 <= pkg_extract(pkg_extract(io_apb_PWDATA,17,17),0);
            zz_645 <= pkg_extract(pkg_extract(io_apb_PWDATA,26,26),0);
            zz_646 <= pkg_extract(pkg_extract(io_apb_PWDATA,19,19),0);
            zz_650 <= pkg_extract(pkg_extract(io_apb_PWDATA,28,28),0);
            zz_654 <= pkg_extract(pkg_extract(io_apb_PWDATA,7,7),0);
            zz_659 <= pkg_extract(pkg_extract(io_apb_PWDATA,29,29),0);
            zz_671 <= pkg_extract(pkg_extract(io_apb_PWDATA,12,12),0);
          end if;
        when "000000000010000010001000" =>
          if bus_doWrite = '1' then
            zz_640 <= pkg_extract(pkg_extract(io_apb_PWDATA,18,18),0);
            zz_642 <= pkg_extract(pkg_extract(io_apb_PWDATA,30,30),0);
            zz_643 <= pkg_extract(pkg_extract(io_apb_PWDATA,9,9),0);
            zz_651 <= pkg_extract(pkg_extract(io_apb_PWDATA,14,14),0);
            zz_653 <= pkg_extract(pkg_extract(io_apb_PWDATA,6,6),0);
            zz_655 <= pkg_extract(pkg_extract(io_apb_PWDATA,2,2),0);
            zz_656 <= pkg_extract(pkg_extract(io_apb_PWDATA,27,27),0);
            zz_665 <= pkg_extract(pkg_extract(io_apb_PWDATA,12,12),0);
            zz_667 <= pkg_extract(pkg_extract(io_apb_PWDATA,31,31),0);
            zz_668 <= pkg_extract(pkg_extract(io_apb_PWDATA,13,13),0);
            zz_669 <= pkg_extract(pkg_extract(io_apb_PWDATA,4,4),0);
          end if;
        when "001000000010000000000000" =>
          if bus_doWrite = '1' then
            zz_672 <= unsigned(pkg_extract(io_apb_PWDATA,1,0));
          end if;
        when "000000000010000100000000" =>
          if bus_doWrite = '1' then
            zz_673 <= pkg_extract(pkg_extract(io_apb_PWDATA,22,22),0);
            zz_680 <= pkg_extract(pkg_extract(io_apb_PWDATA,8,8),0);
            zz_683 <= pkg_extract(pkg_extract(io_apb_PWDATA,25,25),0);
            zz_685 <= pkg_extract(pkg_extract(io_apb_PWDATA,10,10),0);
            zz_688 <= pkg_extract(pkg_extract(io_apb_PWDATA,12,12),0);
            zz_694 <= pkg_extract(pkg_extract(io_apb_PWDATA,7,7),0);
            zz_697 <= pkg_extract(pkg_extract(io_apb_PWDATA,24,24),0);
            zz_699 <= pkg_extract(pkg_extract(io_apb_PWDATA,21,21),0);
            zz_706 <= pkg_extract(pkg_extract(io_apb_PWDATA,18,18),0);
          end if;
        when "000000000010000100000100" =>
          if bus_doWrite = '1' then
            zz_674 <= pkg_extract(pkg_extract(io_apb_PWDATA,24,24),0);
            zz_677 <= pkg_extract(pkg_extract(io_apb_PWDATA,3,3),0);
            zz_684 <= pkg_extract(pkg_extract(io_apb_PWDATA,8,8),0);
            zz_693 <= pkg_extract(pkg_extract(io_apb_PWDATA,25,25),0);
            zz_696 <= pkg_extract(pkg_extract(io_apb_PWDATA,22,22),0);
            zz_698 <= pkg_extract(pkg_extract(io_apb_PWDATA,16,16),0);
            zz_700 <= pkg_extract(pkg_extract(io_apb_PWDATA,31,31),0);
            zz_702 <= pkg_extract(pkg_extract(io_apb_PWDATA,9,9),0);
          end if;
        when "000000000010000100001100" =>
          if bus_doWrite = '1' then
            zz_675 <= pkg_extract(pkg_extract(io_apb_PWDATA,17,17),0);
            zz_681 <= pkg_extract(pkg_extract(io_apb_PWDATA,26,26),0);
            zz_682 <= pkg_extract(pkg_extract(io_apb_PWDATA,19,19),0);
            zz_686 <= pkg_extract(pkg_extract(io_apb_PWDATA,28,28),0);
            zz_690 <= pkg_extract(pkg_extract(io_apb_PWDATA,7,7),0);
            zz_695 <= pkg_extract(pkg_extract(io_apb_PWDATA,29,29),0);
            zz_707 <= pkg_extract(pkg_extract(io_apb_PWDATA,12,12),0);
          end if;
        when "000000000010000100001000" =>
          if bus_doWrite = '1' then
            zz_676 <= pkg_extract(pkg_extract(io_apb_PWDATA,18,18),0);
            zz_678 <= pkg_extract(pkg_extract(io_apb_PWDATA,30,30),0);
            zz_679 <= pkg_extract(pkg_extract(io_apb_PWDATA,9,9),0);
            zz_687 <= pkg_extract(pkg_extract(io_apb_PWDATA,14,14),0);
            zz_689 <= pkg_extract(pkg_extract(io_apb_PWDATA,6,6),0);
            zz_691 <= pkg_extract(pkg_extract(io_apb_PWDATA,2,2),0);
            zz_692 <= pkg_extract(pkg_extract(io_apb_PWDATA,27,27),0);
            zz_701 <= pkg_extract(pkg_extract(io_apb_PWDATA,12,12),0);
            zz_703 <= pkg_extract(pkg_extract(io_apb_PWDATA,31,31),0);
            zz_704 <= pkg_extract(pkg_extract(io_apb_PWDATA,13,13),0);
            zz_705 <= pkg_extract(pkg_extract(io_apb_PWDATA,4,4),0);
          end if;
        when others =>
      end case;
    end if;
  end process;

  process(clk)
  begin
    if rising_edge(clk) then
      targets_0_bestRequest_priority <= pkg_mux(zz_138,zz_136,zz_115);
      targets_0_bestRequest_id <= pkg_mux(zz_138,pkg_mux(zz_135,pkg_mux(zz_129,pkg_mux(zz_117,zz_710,zz_711),pkg_mux(zz_120,zz_712,zz_713)),pkg_mux(zz_132,pkg_mux(zz_123,zz_714,zz_715),pkg_mux(zz_126,zz_716,zz_717))),pkg_mux(zz_114,pkg_mux(zz_84,targets_0_requests_32_id,targets_0_requests_33_id),pkg_mux(zz_87,targets_0_requests_34_id,targets_0_requests_35_id)));
      targets_0_bestRequest_valid <= pkg_mux(zz_138,zz_137,zz_116);
      zz_348 <= pkg_mux(zz_347,zz_346,zz_326);
      zz_349 <= pkg_mux(zz_347,pkg_mux(zz_345,pkg_mux(zz_339,pkg_mux(zz_327,zz_718,zz_719),pkg_mux(zz_330,zz_720,zz_721)),pkg_mux(zz_342,pkg_mux(zz_333,zz_722,zz_723),pkg_mux(zz_336,zz_724,zz_725))),pkg_mux(zz_325,pkg_mux(zz_295,pkg_unsigned("1110011"),pkg_unsigned("1111010")),pkg_mux(zz_298,pkg_unsigned("1111100"),pkg_unsigned("1111101"))));
      zz_561 <= pkg_mux(zz_560,zz_559,zz_539);
      zz_562 <= pkg_mux(zz_560,pkg_mux(zz_558,pkg_mux(zz_552,pkg_mux(zz_540,zz_758,zz_759),pkg_mux(zz_543,zz_760,zz_761)),pkg_mux(zz_555,pkg_mux(zz_546,zz_762,zz_763),pkg_mux(zz_549,zz_764,zz_765))),pkg_mux(zz_538,pkg_mux(zz_508,pkg_unsigned("1110011"),pkg_unsigned("1111010")),pkg_mux(zz_511,pkg_unsigned("1111100"),pkg_unsigned("1111101"))));
    end if;
  end process;

end arch;

