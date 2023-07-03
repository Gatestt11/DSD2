library ieee;
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all;

LiBRARY std; 
USE std.standard.all; 

entity ADC is
port(
	 cs : out std_logic := '1';
	 clk_in : in std_LOGIC;
	 clk_adc : out std_logic;
	 wr : out std_logic := '1'; --start convert analog to digital 1->0 for start	
	 rd : out std_logic := '1'; --1--> 0 for data to D0-D7
	 data_adc: in std_logic_vector (7 downto 0);  --data
	 intr: in std_LOGIC := '1';  -- if the conversion is done, it 1-->0
	 start_tx : out std_logic;  -- for transmit data to computer
	 temp_data : out std_logic_vector(7 downto 0)
 );
end ADC;

architecture behav of ADC is
	signal flag : std_logic := '0';
	signal temp : std_logic := '0';
	signal clk : std_logic;
	-- signal temp_data : std_logic_vector(7 downto 0);
begin	
	process(clk_in)
		variable cnt2 : integer range 0 to 101 := 0;
		
	begin
		if(rising_edge(clk_in)) then
			cnt2 := cnt2 + 1;
			if(cnt2 >= 100) then	-- tan so 250KHz
				temp <= not temp;
				
				cnt2 := 0;
			end if;
		end if;
	end process;
	clk <= temp;
	start_tx <= '1';
	process(clk)
		variable cnt: integer range 0 to 400001 := 0;
	begin
	CLK_adc <= clk;
		if(rising_edge(clk)) then
			cnt := cnt +1;		
			if(cnt = 1) then 	-- normal
				wr <='1';
				rd <= '1';
				cs <='1';
			end if;
			if(cnt = 2) then
				wr <='0';
				cs <='0';
				rd <= '1';
			end if;
			if(cnt = 3) then
				wr <='1';
				cs <='1';
				flag <= '1';	
			end if;
	
			if((cnt > 3) and (flag = '1') and ( intr = '0')) then
				rd <= '0';
				flag <= '0';
				temp_data <= data_adc;
		--		start_tx <= '1';
			end if;

			if(cnt >= 400000) then		-- cycle time to recives data
			--	start_tx <= '0';
				rd <= '1';	
				cnt:= 0;
			end if;
			
		end if;
	end process;
end behav;