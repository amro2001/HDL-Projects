LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
entity seg7dec is
	port(SW: in std_logic_vector(3 downto 0);
			HEX0: out std_logic_vector(6 downto 0));
end seg7dec;

architecture decoding of seg7dec is
	begin
		HEX0(0) <=((not SW(3))and (not SW(2)) and (not SW(1)) and SW(0)) or((not SW(3)) and SW(2) and (not SW(1)) and(not SW(0)) )or(SW(3) and SW(2) and (not SW(1)) and SW(0)) or(SW(3) and (not SW(2)) and SW(1) and SW(0)) ;
		HEX0(1) <= ( SW(2) and  SW(1) and (not  SW(0)) ) or (SW(3) and  SW(1) and  SW(0))  or (SW(3) and  SW(2) and (not  SW(0)) ) or ((not SW(3)) and  SW(2) and (not  SW(1)) and  SW(0)) ;
		HEX0(2) <= (SW(3) and  SW(2) and (not  SW(0)) ) or (SW(3) and  SW(2) and  SW(1)) or ((not SW(3)) and (not  SW(2)) and  SW(1) and (not  SW(0)) );
		HEX0(3) <= ((not SW(3)) and  SW(2) and (not  SW(1)) and (not  SW(0)) )or((not  SW(2)) and (not  SW(1)) and  SW(0)) or(  SW(2) and  SW(1) and  SW(0)) or( SW(3) and (not  SW(2)) and   SW(1) and (not  SW(0)) );
		HEX0(4) <= ((not SW(3)) and  SW(0)) or((not  SW(2)) and (not  SW(1)) and  SW(0)) or((not SW(3)) and  SW(2) and (not  SW(1)));
		HEX0(5) <= ((not SW(3)) and (not  SW(2)) and  SW(0)) or((not SW(3)) and (not  SW(2)) and  SW(1))or((not SW(3)) and  SW(1) and  SW(0)) or(SW(3) and  SW(2) and (not  SW(1)) and  SW(0)) ;
		HEX0(6) <= ((not SW(3)) and (not  SW(2)) and (not  SW(1))) or ((not SW(3)) and  SW(2) and  SW(1) and  SW(0))  or (SW(3) and  SW(2) and (not  SW(1)) and (not  SW(0)) );
end decoding;

library ieee ;
use ieee.std_logic_1164.all ;
use ieee.numeric_std.all ;

ENTITY counter26bit IS
PORT ( clk , clrb , ld : in std_logic ;
	     Load_val : in std_logic_vector (25 downto 0);
		  val26 : out std_logic_vector (25 downto 0));
END counter26bit ;

ARCHITECTURE rtl OF counter26bit IS
	signal cnt : unsigned (25 downto 0);
	BEGIN
		process ( clk , clrb, ld)
		begin
		if ( clrb = '1' ) then
			  cnt <= "00000000000000000000000000" ;
		elsif ( ld = '1') then
			  cnt <=unsigned(Load_val);
		elsif ( clk'event ) and ( clk = '1') then
				cnt <= cnt + "1" ;
		end if ;
		end process ;
	 val26<= std_logic_vector (cnt);
END rtl ;

library ieee ;
use ieee.std_logic_1164.all ;
use ieee.numeric_std.all ;
ENTITY counter4bit IS
PORT ( clk , clrb , ld : in std_logic ;
	     Load_val : in std_logic_vector (3 downto 0);
		  val4 : out std_logic_vector (3 downto 0));
END counter4bit ;

ARCHITECTURE rtl OF counter4bit IS
	signal cnt : unsigned (3 downto 0);
	BEGIN
		process ( clk , clrb, ld)
		begin
		if ( clrb = '1' ) then
			  cnt <= "0000" ;
		elsif ( ld = '1') then
			  cnt <=unsigned(Load_val);
		elsif ( clk'event ) and ( clk = '1') then
				cnt <= cnt + "1" ;
		end if ;
		end process ;
	 val4<= std_logic_vector (cnt);
END rtl ;

library ieee ;
use ieee.std_logic_1164.all ;

entity Digital_Clock is
	port(KEY:in std_logic_vector(3 downto 0);
		  SW: in std_logic_vector(7 downto 0);
		  CLOCK_50: in std_logic;
		  LEDR: out std_logic_vector(7 downto 0);
		  HEX0: out std_logic_vector(6 downto 0);
		  HEX1: out std_logic_vector(6 downto 0);
		  HEX2: out std_logic_vector(6 downto 0);
		  HEX3: out std_logic_vector(6 downto 0);
		  HEX4: out std_logic_vector(6 downto 0);
		  HEX5: out std_logic_vector(6 downto 0));
end Digital_Clock;


architecture behaviour of Digital_Clock is
	component seg7dec is
		port(SW: in std_logic_vector(3 downto 0);
				HEX0: out std_logic_vector(6 downto 0));
	end component;
	component counter26bit IS
		PORT ( clk , clrb , ld : in std_logic ;
				Load_val : in std_logic_vector (25 downto 0);
				val26 : out std_logic_vector (25 downto 0));
	END component;
	component counter4bit IS
		PORT ( clk , clrb , ld : in std_logic ;
				Load_val : in std_logic_vector (3 downto 0);
				val4 : out std_logic_vector (3 downto 0));
	END component;
	signal CLRSec,LDSec0,Time1Sec,LDSec1,CLRMin0,LDMin1,CLRMin1,LDHr0,CLRHr0,LDHr1,CLRHr1,ENDClock: std_logic;
	signal SEC_0,SEC_1,MIN_0,MIN_1,HR_0,HR_1,LDVAL1,LDVAL2:std_logic_vector(3 downto 0);
	signal OUT1,OUT2,OUT3,OUT4,OUT5,OUT6: std_logic_vector(6 downto 0);
	signal COUNT50: std_logic_vector(25 downto 0);
	signal keys: std_logic_vector(3 downto 0);
	signal LDMIN, LDHR: std_logic:='0';
	begin
		CNT1SEC:counter26bit port map(CLOCK_50,Time1Sec,'0',"00000000000000000000000000",COUNT50);
		CNT0:counter4bit port map(Time1Sec,CLRSec,LDSec0,"0000",SEC_0);
		CNT1:counter4bit port map(LDSec0,CLRSec,LDSec1,"0000",SEC_1);
		CNT2:counter4bit port map(LDSec1,CLRMin0,LDMIN,SW(3 downto 0),MIN_0);
		CNT3:counter4bit port map(LDMin1,CLRMin1,LDMIN,SW(7 downto 4),MIN_1);
		CNT4:counter4bit port map(LDHr0,CLRHr0,LDHR,SW(3 downto 0),HR_0);
		CNT5:counter4bit port map(LDHr1,CLRHr1,LDHR,SW(7 downto 4),HR_1);
		
		Time1Sec<='1' when COUNT50="00000000000000000000000001" else '0'; --time for 1 second
		
		LEDR<=SW; --display switch input onto LEDR output
		
		CLRSec<=(not keys(0)) or (not keys(2)) or (not keys(3)); 
		LDSec0<=SEC_0(3) and (not SEC_0(2))and (SEC_0(1)) and (not SEC_0(0));--goes high when cnt0 goes to 9
		
		LDSec1<=SEC_1(2) and SEC_1(1) and LDSec0; --goes high when cnt1 goes to 5 and cnt0 to 9 , :59
		CLRMin0<=(not keys(0)) or (MIN_0(3) and MIN_0(0) and LDSec1); --goes high when cnt2 goes to 9 and we have 59 sec, 9:59 and key(0) is pressed
		
		LDMin1<=MIN_0(3) and MIN_0(0) and LDSec1; --goes high when we have 9:59;
		CLRMin1<=(not keys(0)) or (MIN_1(2) and MIN_1(0) and LDMin1);-- goes high when we have 59:59 and key(0) is pressed
		
		LDHr0<=MIN_1(2) and MIN_1(0) and LDMin1;--goes high when we have 59:59
		CLRHr0<=(not keys(0)) or (HR_0(3) and HR_0(0) and LDHr0) or ENDClock; --goes to high when key(0) is pressed or 9:59:59 is reached or 23:59:59 is reached
		
		LDHr1<=HR_0(3) and HR_0(0) and LDHr0; --goes high when we have 9:59:59
		CLRHr1<=(not keys(0)) or EndClock; --goes high when we have 23:59:59 or key(0) is pressed
		
		EndClock<=HR_1(1) and HR_0(0) and HR_0(1) and LDHr0; --goes to high when we have 23:59:59
		
		SEG1: seg7dec port map(SEC_0,OUT1);
		SEG2: seg7dec port map(SEC_1,OUT2);
		SEG3: seg7dec port map(MIN_0,OUT3);
		SEG4: seg7dec port map(MIN_1,OUT4);
		SEG5: seg7dec port map(HR_0,OUT5);
		SEG6: seg7dec port map(HR_1,OUT6);
		
		HEX0<=OUT1;
		HEX1<=OUT2;
		HEX2<=OUT3;
		HEX3<=OUT4;
		HEX4<=OUT5;
		HEX5<=OUT6;

		keys<=KEY;
		LDMIN<=not keys(3);
		LDHR<= not keys(2);

end behaviour;
		
library ieee;
use ieee.std_logic_1164.all;

entity clock_test is
end clock_test;

architecture test of clock_test is
  component Digital_Clock is
    port (
		KEY      : in std_logic_vector(3 downto 0);
		SW       : in std_logic_vector(7 downto 0);
      CLOCK_50 : in std_logic;
      LEDR     : out std_logic_vector(7 downto 0);
      HEXO     : out std_logic_vector(6 downto 0);
      HEX1     : out std_logic_vector(6 downto 0);
      HEX2     : out std_logic_vector(6 downto 0);
      HEX3     : out std_logic_vector(6 downto 0);
      HEX4     : out std_logic_vector(6 downto 0);
      HEXS     : out std_logic_vector(6 downto 0)
    );
  end component;
  
  signal SW      : std_logic_vector(7 downto 0) := "11111111";
  signal KEY     : std_logic_vector(3 downto 0) := "1111";
  signal CLOCK_50: std_logic:= '0';
  signal HEXO    : std_logic_vector(6 downto 0);
  signal HEX1    : std_logic_vector(6 downto 0);
  signal HEX2    : std_logic_vector(6 downto 0);
  signal HEX3    : std_logic_vector(6 downto 0);
  signal HEX4    : std_logic_vector(6 downto 0);
  signal HEXS    : std_logic_vector(6 downto 0);
  signal LEDR    : std_logic_vector(7 downto 0);
begin
  clock0: Digital_Clock port map (
	 KEY      => KEY,
    SW       => SW,
    CLOCK_50 => CLOCK_50,
    LEDR     => LEDR,
    HEXO     => HEXO,
    HEX1     => HEX1,
    HEX2     => HEX2,
    HEX3     => HEX3,
    HEX4     => HEX4,
    HEXS     => HEXS
  );
  
  CLOCK_50 <= not CLOCK_50 after 20 ns;
end test;


