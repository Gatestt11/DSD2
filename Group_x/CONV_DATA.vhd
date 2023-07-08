----------------- Convert data_inary to BCD -----------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity CONV_DATA is
 port(
	data_in: in std_logic_vector(7 downto 0); -- 7 bits data from adc
	hund: out std_logic_vector(7 downto 0);
	tens: out std_logic_vector(7 downto 0);
	unit: out std_logic_vector(7 downto 0)
 );
end CONV_DATA;

architecture converter of CONV_DATA is
begin
 process(data_in)
	variable i : integer range 0 to 8 := 0;
	variable bcd_temp : std_logic_vector(19 downto 0); -- 16 = 8bit(in)+ 4bit(tens) +4 bit(unit)
 begin
	bcd_temp(19 downto 8) := b"000000000000";
	bcd_temp(7 downto 0) := data_in;
		for i in 0 to 7 loop  
		
		bcd_temp( 18 downto 0 ) := bcd_temp( 17 downto 0 )  & '0'; -- Dich bit sang trai
			
		if (i<7 and bcd_temp(11 downto 8) > "0100") then
			bcd_temp(11 downto 8) := bcd_temp(11 downto 8) + "0011";
		end if;
		 
		if (i<7 and bcd_temp(15 downto 12) > "0100") then 
			bcd_temp(15 downto 12) := bcd_temp(15 downto 12) + "0011";
		end if;
			 
		if (i<8 and bcd_temp(19 downto 16) > "0100") then 
			bcd_temp(19 downto 16) := bcd_temp(19 downto 16) + "0011";
		end if;
			 
	end loop;
	hund <= (bcd_temp(19 downto 16)) + X"00";
	tens <= (bcd_temp(15 downto 12)) + X"00";
	unit <= (bcd_temp(11 downto 8)) + X"00";
 end process;
 
end converter;
