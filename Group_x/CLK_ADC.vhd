library ieee;
use ieee.std_logic_1164.all;

entity CLK_ADC is
port(
	clk: IN STD_LOGIC;
	clk_out: OUT STD_LOGIC
);
end CLK_ADC;

architecture LogicFunction of CLK_ADC is
	signal temp: STD_LOGIC := '0';
begin	
	process(clk)
		variable cnt : integer range 0 to 102 := 0;
		
	begin
		if(rising_edge(clk)) then
			cnt := cnt + 1;
			if(cnt >= 100) then	-- tan so 200KHz
				temp <= not temp;
				cnt := 0;
			end if;
		end if;
	end process;
	clk_out <= temp;
	
end LogicFunction;