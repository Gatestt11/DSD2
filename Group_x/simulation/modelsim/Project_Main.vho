-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "07/06/2023 16:47:04"

-- 
-- Device: Altera EPM240T100C5 Package TQFP100
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXII;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXII.MAXII_COMPONENTS.ALL;

ENTITY 	Main IS
    PORT (
	clk : IN std_logic;
	TX : BUFFER std_logic;
	cs : BUFFER std_logic;
	wr : BUFFER std_logic;
	rd : BUFFER std_logic;
	data_adc : IN std_logic_vector(7 DOWNTO 0);
	intr : IN std_logic;
	clk_adc_out : BUFFER std_logic;
	lcd_rw : BUFFER std_logic;
	lcd_rs : BUFFER std_logic;
	lcd_en : BUFFER std_logic;
	data_to_display : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END Main;

-- Design Ports Information
-- TX	=>  Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- cs	=>  Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- wr	=>  Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- rd	=>  Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- clk_adc_out	=>  Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- lcd_rw	=>  Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- lcd_rs	=>  Location: PIN_68,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- lcd_en	=>  Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- data_to_display[0]	=>  Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- data_to_display[1]	=>  Location: PIN_76,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- data_to_display[2]	=>  Location: PIN_78,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- data_to_display[3]	=>  Location: PIN_77,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- data_to_display[4]	=>  Location: PIN_82,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- data_to_display[5]	=>  Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- data_to_display[6]	=>  Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- data_to_display[7]	=>  Location: PIN_83,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- clk	=>  Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- intr	=>  Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_adc[4]	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_adc[7]	=>  Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_adc[5]	=>  Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_adc[6]	=>  Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_adc[3]	=>  Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_adc[2]	=>  Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_adc[1]	=>  Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_adc[0]	=>  Location: PIN_35,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Main IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_TX : std_logic;
SIGNAL ww_cs : std_logic;
SIGNAL ww_wr : std_logic;
SIGNAL ww_rd : std_logic;
SIGNAL ww_data_adc : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_intr : std_logic;
SIGNAL ww_clk_adc_out : std_logic;
SIGNAL ww_lcd_rw : std_logic;
SIGNAL ww_lcd_rs : std_logic;
SIGNAL ww_lcd_en : std_logic;
SIGNAL ww_data_to_display : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk~combout\ : std_logic;
SIGNAL \UART_PORTMAP|Selector18~2_combout\ : std_logic;
SIGNAL \CLK_CHIA|Add0~30_combout\ : std_logic;
SIGNAL \CLK_CHIA|Add0~32\ : std_logic;
SIGNAL \CLK_CHIA|Add0~32COUT1_42\ : std_logic;
SIGNAL \CLK_CHIA|Add0~25_combout\ : std_logic;
SIGNAL \CLK_CHIA|Add0~27\ : std_logic;
SIGNAL \CLK_CHIA|Add0~27COUT1_44\ : std_logic;
SIGNAL \CLK_CHIA|Add0~10_combout\ : std_logic;
SIGNAL \CLK_CHIA|Add0~12\ : std_logic;
SIGNAL \CLK_CHIA|Add0~12COUT1_46\ : std_logic;
SIGNAL \CLK_CHIA|Add0~15_combout\ : std_logic;
SIGNAL \CLK_CHIA|Add0~17\ : std_logic;
SIGNAL \CLK_CHIA|Add0~20_combout\ : std_logic;
SIGNAL \CLK_CHIA|Add0~22\ : std_logic;
SIGNAL \CLK_CHIA|Add0~22COUT1_48\ : std_logic;
SIGNAL \CLK_CHIA|Add0~5_combout\ : std_logic;
SIGNAL \CLK_CHIA|LessThan0~0_combout\ : std_logic;
SIGNAL \CLK_CHIA|Add0~7\ : std_logic;
SIGNAL \CLK_CHIA|Add0~7COUT1_50\ : std_logic;
SIGNAL \CLK_CHIA|Add0~0_combout\ : std_logic;
SIGNAL \CLK_CHIA|temp~regout\ : std_logic;
SIGNAL \ADC_PORTMAP|Add0~0_combout\ : std_logic;
SIGNAL \ADC_PORTMAP|Add0~2\ : std_logic;
SIGNAL \ADC_PORTMAP|Add0~2COUT1_112\ : std_logic;
SIGNAL \ADC_PORTMAP|Add0~90_combout\ : std_logic;
SIGNAL \ADC_PORTMAP|Add0~92\ : std_logic;
SIGNAL \ADC_PORTMAP|Add0~92COUT1_114\ : std_logic;
SIGNAL \ADC_PORTMAP|Add0~35_combout\ : std_logic;
SIGNAL \ADC_PORTMAP|Add0~37\ : std_logic;
SIGNAL \ADC_PORTMAP|Add0~37COUT1_116\ : std_logic;
SIGNAL \ADC_PORTMAP|Add0~40_combout\ : std_logic;
SIGNAL \ADC_PORTMAP|Add0~42\ : std_logic;
SIGNAL \ADC_PORTMAP|Add0~45_combout\ : std_logic;
SIGNAL \ADC_PORTMAP|Add0~47\ : std_logic;
SIGNAL \ADC_PORTMAP|Add0~47COUT1_118\ : std_logic;
SIGNAL \ADC_PORTMAP|Add0~50_combout\ : std_logic;
SIGNAL \ADC_PORTMAP|Add0~52\ : std_logic;
SIGNAL \ADC_PORTMAP|Add0~52COUT1_120\ : std_logic;
SIGNAL \ADC_PORTMAP|Add0~55_combout\ : std_logic;
SIGNAL \ADC_PORTMAP|Add0~57\ : std_logic;
SIGNAL \ADC_PORTMAP|Add0~57COUT1_122\ : std_logic;
SIGNAL \ADC_PORTMAP|Add0~25_combout\ : std_logic;
SIGNAL \ADC_PORTMAP|Add0~27\ : std_logic;
SIGNAL \ADC_PORTMAP|Add0~27COUT1_124\ : std_logic;
SIGNAL \ADC_PORTMAP|Add0~30_combout\ : std_logic;
SIGNAL \ADC_PORTMAP|Add0~32\ : std_logic;
SIGNAL \ADC_PORTMAP|Add0~60_combout\ : std_logic;
SIGNAL \ADC_PORTMAP|Add0~62\ : std_logic;
SIGNAL \ADC_PORTMAP|Add0~62COUT1_126\ : std_logic;
SIGNAL \ADC_PORTMAP|Add0~65_combout\ : std_logic;
SIGNAL \ADC_PORTMAP|Add0~67\ : std_logic;
SIGNAL \ADC_PORTMAP|Add0~67COUT1_128\ : std_logic;
SIGNAL \ADC_PORTMAP|Add0~70_combout\ : std_logic;
SIGNAL \ADC_PORTMAP|Add0~72\ : std_logic;
SIGNAL \ADC_PORTMAP|Add0~72COUT1_130\ : std_logic;
SIGNAL \ADC_PORTMAP|Add0~75_combout\ : std_logic;
SIGNAL \ADC_PORTMAP|LessThan1~2_combout\ : std_logic;
SIGNAL \ADC_PORTMAP|Add0~77\ : std_logic;
SIGNAL \ADC_PORTMAP|Add0~77COUT1_132\ : std_logic;
SIGNAL \ADC_PORTMAP|Add0~5_combout\ : std_logic;
SIGNAL \ADC_PORTMAP|Add0~7\ : std_logic;
SIGNAL \ADC_PORTMAP|Add0~10_combout\ : std_logic;
SIGNAL \ADC_PORTMAP|Add0~12\ : std_logic;
SIGNAL \ADC_PORTMAP|Add0~12COUT1_134\ : std_logic;
SIGNAL \ADC_PORTMAP|Add0~15_combout\ : std_logic;
SIGNAL \ADC_PORTMAP|Add0~17\ : std_logic;
SIGNAL \ADC_PORTMAP|Add0~17COUT1_136\ : std_logic;
SIGNAL \ADC_PORTMAP|Add0~20_combout\ : std_logic;
SIGNAL \ADC_PORTMAP|LessThan1~0_combout\ : std_logic;
SIGNAL \ADC_PORTMAP|LessThan1~3_combout\ : std_logic;
SIGNAL \ADC_PORTMAP|Add0~22\ : std_logic;
SIGNAL \ADC_PORTMAP|Add0~22COUT1_138\ : std_logic;
SIGNAL \ADC_PORTMAP|Add0~80_combout\ : std_logic;
SIGNAL \ADC_PORTMAP|Add0~82\ : std_logic;
SIGNAL \ADC_PORTMAP|Add0~82COUT1_140\ : std_logic;
SIGNAL \ADC_PORTMAP|Add0~85_combout\ : std_logic;
SIGNAL \intr~combout\ : std_logic;
SIGNAL \ADC_PORTMAP|Equal0~1_combout\ : std_logic;
SIGNAL \ADC_PORTMAP|Equal0~2_combout\ : std_logic;
SIGNAL \ADC_PORTMAP|LessThan1~1_combout\ : std_logic;
SIGNAL \ADC_PORTMAP|Equal0~0_combout\ : std_logic;
SIGNAL \ADC_PORTMAP|Equal0~3_combout\ : std_logic;
SIGNAL \ADC_PORTMAP|Equal0~4_combout\ : std_logic;
SIGNAL \ADC_PORTMAP|flag~regout\ : std_logic;
SIGNAL \ADC_PORTMAP|process_0~0_combout\ : std_logic;
SIGNAL \ADC_PORTMAP|LessThan1~4_combout\ : std_logic;
SIGNAL \ADC_PORTMAP|start_tx~regout\ : std_logic;
SIGNAL \UART_PORTMAP|Selector18~1_combout\ : std_logic;
SIGNAL \UART_PORTMAP|state_uart.bit_stop~regout\ : std_logic;
SIGNAL \UART_PORTMAP|Selector16~2_combout\ : std_logic;
SIGNAL \UART_PORTMAP|state_uart.stop_ok~regout\ : std_logic;
SIGNAL \UART_PORTMAP|state_uart.INIT~regout\ : std_logic;
SIGNAL \UART_PORTMAP|cnt[8]~0_combout\ : std_logic;
SIGNAL \UART_PORTMAP|Add0~0_combout\ : std_logic;
SIGNAL \UART_PORTMAP|Add0~2\ : std_logic;
SIGNAL \UART_PORTMAP|Add0~2COUT1_60\ : std_logic;
SIGNAL \UART_PORTMAP|Add0~5_combout\ : std_logic;
SIGNAL \UART_PORTMAP|Add0~7\ : std_logic;
SIGNAL \UART_PORTMAP|Add0~7COUT1_62\ : std_logic;
SIGNAL \UART_PORTMAP|Add0~10_combout\ : std_logic;
SIGNAL \UART_PORTMAP|Add0~12\ : std_logic;
SIGNAL \UART_PORTMAP|Add0~12COUT1_64\ : std_logic;
SIGNAL \UART_PORTMAP|Add0~15_combout\ : std_logic;
SIGNAL \UART_PORTMAP|Add0~17\ : std_logic;
SIGNAL \UART_PORTMAP|Add0~17COUT1_66\ : std_logic;
SIGNAL \UART_PORTMAP|Add0~20_combout\ : std_logic;
SIGNAL \UART_PORTMAP|Add0~22\ : std_logic;
SIGNAL \UART_PORTMAP|Add0~25_combout\ : std_logic;
SIGNAL \UART_PORTMAP|Add0~27\ : std_logic;
SIGNAL \UART_PORTMAP|Add0~27COUT1_68\ : std_logic;
SIGNAL \UART_PORTMAP|Add0~30_combout\ : std_logic;
SIGNAL \UART_PORTMAP|Add0~32\ : std_logic;
SIGNAL \UART_PORTMAP|Add0~32COUT1_70\ : std_logic;
SIGNAL \UART_PORTMAP|Add0~35_combout\ : std_logic;
SIGNAL \UART_PORTMAP|Add0~37\ : std_logic;
SIGNAL \UART_PORTMAP|Add0~37COUT1_72\ : std_logic;
SIGNAL \UART_PORTMAP|Add0~40_combout\ : std_logic;
SIGNAL \UART_PORTMAP|Add0~42\ : std_logic;
SIGNAL \UART_PORTMAP|Add0~42COUT1_74\ : std_logic;
SIGNAL \UART_PORTMAP|Add0~45_combout\ : std_logic;
SIGNAL \UART_PORTMAP|LessThan0~0_combout\ : std_logic;
SIGNAL \UART_PORTMAP|LessThan0~1_combout\ : std_logic;
SIGNAL \UART_PORTMAP|LessThan0~2_combout\ : std_logic;
SIGNAL \UART_PORTMAP|Selector16~3_combout\ : std_logic;
SIGNAL \UART_PORTMAP|state_uart.bit_start~regout\ : std_logic;
SIGNAL \UART_PORTMAP|index[2]~1_combout\ : std_logic;
SIGNAL \UART_PORTMAP|index[2]~2_combout\ : std_logic;
SIGNAL \UART_PORTMAP|Add1~0_combout\ : std_logic;
SIGNAL \UART_PORTMAP|index[3]~0_combout\ : std_logic;
SIGNAL \UART_PORTMAP|state_uart.bit_data~regout\ : std_logic;
SIGNAL \UART_PORTMAP|Selector14~2_combout\ : std_logic;
SIGNAL \UART_PORTMAP|Selector14~0_combout\ : std_logic;
SIGNAL \CONVERSION_DATA|bcd_temp~1\ : std_logic;
SIGNAL \CONVERSION_DATA|bcd_temp~0\ : std_logic;
SIGNAL \CONVERSION_DATA|bcd_temp~11\ : std_logic;
SIGNAL \CONVERSION_DATA|bcd_temp~3_combout\ : std_logic;
SIGNAL \CONVERSION_DATA|bcd_temp~4_combout\ : std_logic;
SIGNAL \CONVERSION_DATA|bcd_temp~2\ : std_logic;
SIGNAL \CONVERSION_DATA|bcd_temp~9_combout\ : std_logic;
SIGNAL \CONVERSION_DATA|bcd_temp~10_combout\ : std_logic;
SIGNAL \CONVERSION_DATA|bcd_temp~8_combout\ : std_logic;
SIGNAL \CONVERSION_DATA|unit[1]~0_combout\ : std_logic;
SIGNAL \CONVERSION_DATA|unit[3]~2_combout\ : std_logic;
SIGNAL \CONVERSION_DATA|unit[2]~1\ : std_logic;
SIGNAL \UART_PORTMAP|Mux1~0\ : std_logic;
SIGNAL \UART_PORTMAP|Mux1~1_combout\ : std_logic;
SIGNAL \UART_PORTMAP|TX~0_combout\ : std_logic;
SIGNAL \CONVERSION_DATA|bcd_temp~6\ : std_logic;
SIGNAL \CONVERSION_DATA|LessThan2~0_combout\ : std_logic;
SIGNAL \CONVERSION_DATA|bcd_temp~7_combout\ : std_logic;
SIGNAL \CONVERSION_DATA|tens[3]~12_combout\ : std_logic;
SIGNAL \CONVERSION_DATA|bcd_temp~5\ : std_logic;
SIGNAL \CONVERSION_DATA|LessThan4~0_combout\ : std_logic;
SIGNAL \CONVERSION_DATA|LessThan4~1_combout\ : std_logic;
SIGNAL \CONVERSION_DATA|LessThan6~0_combout\ : std_logic;
SIGNAL \CONVERSION_DATA|tens[3]~15_combout\ : std_logic;
SIGNAL \CONVERSION_DATA|tens[2]~8_combout\ : std_logic;
SIGNAL \CONVERSION_DATA|tens[2]~9_combout\ : std_logic;
SIGNAL \CONVERSION_DATA|tens[2]~6_combout\ : std_logic;
SIGNAL \CONVERSION_DATA|tens[2]~5_combout\ : std_logic;
SIGNAL \CONVERSION_DATA|tens[2]~10_combout\ : std_logic;
SIGNAL \CONVERSION_DATA|tens[2]~11_combout\ : std_logic;
SIGNAL \CONVERSION_DATA|tens[0]~14_combout\ : std_logic;
SIGNAL \CONVERSION_DATA|tens[1]~16_combout\ : std_logic;
SIGNAL \CONVERSION_DATA|tens[1]~13_combout\ : std_logic;
SIGNAL \UART_PORTMAP|Mux0~0_combout\ : std_logic;
SIGNAL \UART_PORTMAP|Mux0~1_combout\ : std_logic;
SIGNAL \UART_PORTMAP|TX~1_combout\ : std_logic;
SIGNAL \UART_PORTMAP|TX~2_combout\ : std_logic;
SIGNAL \UART_PORTMAP|TX~3_combout\ : std_logic;
SIGNAL \UART_PORTMAP|Selector14~1_combout\ : std_logic;
SIGNAL \UART_PORTMAP|TX~regout\ : std_logic;
SIGNAL \ADC_PORTMAP|cs~regout\ : std_logic;
SIGNAL \ADC_PORTMAP|rd~0_combout\ : std_logic;
SIGNAL \ADC_PORTMAP|rd~regout\ : std_logic;
SIGNAL \LCD_PORTMAP|clk_count[0]~9\ : std_logic;
SIGNAL \LCD_PORTMAP|clk_count[1]~29\ : std_logic;
SIGNAL \LCD_PORTMAP|clk_count[1]~29COUT1_62\ : std_logic;
SIGNAL \LCD_PORTMAP|clk_count[2]~41\ : std_logic;
SIGNAL \LCD_PORTMAP|clk_count[2]~41COUT1_64\ : std_logic;
SIGNAL \LCD_PORTMAP|clk_count[3]~37\ : std_logic;
SIGNAL \LCD_PORTMAP|clk_count[3]~37COUT1_66\ : std_logic;
SIGNAL \LCD_PORTMAP|clk_count[4]~43\ : std_logic;
SIGNAL \LCD_PORTMAP|clk_count[4]~43COUT1_68\ : std_logic;
SIGNAL \LCD_PORTMAP|clk_count[5]~31\ : std_logic;
SIGNAL \LCD_PORTMAP|clk_count[6]~21\ : std_logic;
SIGNAL \LCD_PORTMAP|clk_count[6]~21COUT1_70\ : std_logic;
SIGNAL \LCD_PORTMAP|clk_count[7]~39\ : std_logic;
SIGNAL \LCD_PORTMAP|clk_count[7]~39COUT1_72\ : std_logic;
SIGNAL \LCD_PORTMAP|clk_count[8]~23\ : std_logic;
SIGNAL \LCD_PORTMAP|clk_count[8]~23COUT1_74\ : std_logic;
SIGNAL \LCD_PORTMAP|clk_count[9]~25\ : std_logic;
SIGNAL \LCD_PORTMAP|clk_count[9]~25COUT1_76\ : std_logic;
SIGNAL \LCD_PORTMAP|clk_count[10]~27\ : std_logic;
SIGNAL \LCD_PORTMAP|clk_count[11]~11\ : std_logic;
SIGNAL \LCD_PORTMAP|clk_count[11]~11COUT1_78\ : std_logic;
SIGNAL \LCD_PORTMAP|clk_count[12]~13\ : std_logic;
SIGNAL \LCD_PORTMAP|clk_count[12]~13COUT1_80\ : std_logic;
SIGNAL \LCD_PORTMAP|clk_count[13]~1\ : std_logic;
SIGNAL \LCD_PORTMAP|clk_count[13]~1COUT1_82\ : std_logic;
SIGNAL \LCD_PORTMAP|clk_count[14]~3\ : std_logic;
SIGNAL \LCD_PORTMAP|clk_count[14]~3COUT1_84\ : std_logic;
SIGNAL \LCD_PORTMAP|clk_count[15]~33\ : std_logic;
SIGNAL \LCD_PORTMAP|clk_count[16]~15\ : std_logic;
SIGNAL \LCD_PORTMAP|clk_count[16]~15COUT1_86\ : std_logic;
SIGNAL \LCD_PORTMAP|clk_count[17]~35\ : std_logic;
SIGNAL \LCD_PORTMAP|clk_count[17]~35COUT1_88\ : std_logic;
SIGNAL \LCD_PORTMAP|clk_count[18]~5\ : std_logic;
SIGNAL \LCD_PORTMAP|clk_count[18]~5COUT1_90\ : std_logic;
SIGNAL \LCD_PORTMAP|LessThan0~0_combout\ : std_logic;
SIGNAL \LCD_PORTMAP|clk_count[19]~7\ : std_logic;
SIGNAL \LCD_PORTMAP|clk_count[19]~7COUT1_92\ : std_logic;
SIGNAL \LCD_PORTMAP|clk_count[20]~17\ : std_logic;
SIGNAL \LCD_PORTMAP|LessThan0~4_combout\ : std_logic;
SIGNAL \LCD_PORTMAP|LessThan0~1_combout\ : std_logic;
SIGNAL \LCD_PORTMAP|LessThan0~2_combout\ : std_logic;
SIGNAL \LCD_PORTMAP|LessThan0~3_combout\ : std_logic;
SIGNAL \LCD_PORTMAP|LessThan0~5_combout\ : std_logic;
SIGNAL \LCD_PORTMAP|LessThan0~6_combout\ : std_logic;
SIGNAL \LCD_PORTMAP|state.lcd_power_up~regout\ : std_logic;
SIGNAL \LCD_PORTMAP|Equal2~0_combout\ : std_logic;
SIGNAL \LCD_PORTMAP|Equal2~1_combout\ : std_logic;
SIGNAL \LCD_PORTMAP|Equal4~1_combout\ : std_logic;
SIGNAL \LCD_PORTMAP|Equal0~0_combout\ : std_logic;
SIGNAL \LCD_PORTMAP|Equal0~1_combout\ : std_logic;
SIGNAL \LCD_PORTMAP|Equal0~2_combout\ : std_logic;
SIGNAL \LCD_PORTMAP|Equal4~2_combout\ : std_logic;
SIGNAL \LCD_PORTMAP|Equal2~2_combout\ : std_logic;
SIGNAL \LCD_PORTMAP|Selector0~0_combout\ : std_logic;
SIGNAL \LCD_PORTMAP|Selector0~1_combout\ : std_logic;
SIGNAL \LCD_PORTMAP|Equal4~3_combout\ : std_logic;
SIGNAL \LCD_PORTMAP|Equal4~0_combout\ : std_logic;
SIGNAL \LCD_PORTMAP|Equal4~4_combout\ : std_logic;
SIGNAL \LCD_PORTMAP|Selector23~0_combout\ : std_logic;
SIGNAL \LCD_PORTMAP|Selector24~1_combout\ : std_logic;
SIGNAL \LCD_PORTMAP|state.lcd_init~regout\ : std_logic;
SIGNAL \LCD_PORTMAP|ptr[0]~0_combout\ : std_logic;
SIGNAL \LCD_PORTMAP|Mux2~0_combout\ : std_logic;
SIGNAL \LCD_PORTMAP|ptr[0]~1_combout\ : std_logic;
SIGNAL \LCD_PORTMAP|Selector29~0_combout\ : std_logic;
SIGNAL \LCD_PORTMAP|Selector24~0_combout\ : std_logic;
SIGNAL \LCD_PORTMAP|Equal5~1_combout\ : std_logic;
SIGNAL \LCD_PORTMAP|Equal5~0_combout\ : std_logic;
SIGNAL \LCD_PORTMAP|state.lcd_display~regout\ : std_logic;
SIGNAL \LCD_PORTMAP|lcd_rs~regout\ : std_logic;
SIGNAL \LCD_PORTMAP|Equal0~3_combout\ : std_logic;
SIGNAL \LCD_PORTMAP|Equal0~4_combout\ : std_logic;
SIGNAL \LCD_PORTMAP|lcd_en~regout\ : std_logic;
SIGNAL \LCD_PORTMAP|Selector33~3_combout\ : std_logic;
SIGNAL \LCD_PORTMAP|Selector30~0_combout\ : std_logic;
SIGNAL \LCD_PORTMAP|Selector33~0_combout\ : std_logic;
SIGNAL \LCD_PORTMAP|Selector33~1_combout\ : std_logic;
SIGNAL \LCD_PORTMAP|Selector33~2_combout\ : std_logic;
SIGNAL \LCD_PORTMAP|Mux10~0_combout\ : std_logic;
SIGNAL \LCD_PORTMAP|Mux10~1_combout\ : std_logic;
SIGNAL \LCD_PORTMAP|Selector31~1_combout\ : std_logic;
SIGNAL \LCD_PORTMAP|Selector31~0_combout\ : std_logic;
SIGNAL \LCD_PORTMAP|Selector30~1_combout\ : std_logic;
SIGNAL \LCD_PORTMAP|Selector30~2_combout\ : std_logic;
SIGNAL \LCD_PORTMAP|Mux7~0_combout\ : std_logic;
SIGNAL \LCD_PORTMAP|Mux5~0_combout\ : std_logic;
SIGNAL \LCD_PORTMAP|ptr\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LCD_PORTMAP|data_to_display\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \LCD_PORTMAP|clk_count\ : std_logic_vector(21 DOWNTO 0);
SIGNAL \ADC_PORTMAP|temp_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ADC_PORTMAP|cnt\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \UART_PORTMAP|temp\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \UART_PORTMAP|index\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \UART_PORTMAP|cnt\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \data_adc~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CLK_CHIA|cnt\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \UART_PORTMAP|ALT_INV_index[2]~2_combout\ : std_logic;
SIGNAL \ADC_PORTMAP|ALT_INV_rd~regout\ : std_logic;
SIGNAL \ADC_PORTMAP|ALT_INV_cs~regout\ : std_logic;

BEGIN

ww_clk <= clk;
TX <= ww_TX;
cs <= ww_cs;
wr <= ww_wr;
rd <= ww_rd;
ww_data_adc <= data_adc;
ww_intr <= intr;
clk_adc_out <= ww_clk_adc_out;
lcd_rw <= ww_lcd_rw;
lcd_rs <= ww_lcd_rs;
lcd_en <= ww_lcd_en;
data_to_display <= ww_data_to_display;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\UART_PORTMAP|ALT_INV_index[2]~2_combout\ <= NOT \UART_PORTMAP|index[2]~2_combout\;
\ADC_PORTMAP|ALT_INV_rd~regout\ <= NOT \ADC_PORTMAP|rd~regout\;
\ADC_PORTMAP|ALT_INV_cs~regout\ <= NOT \ADC_PORTMAP|cs~regout\;

-- Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: LC_X4_Y1_N9
\UART_PORTMAP|Selector18~2\ : maxii_lcell
-- Equation(s):
-- \UART_PORTMAP|Selector18~2_combout\ = ((\UART_PORTMAP|state_uart.bit_stop~regout\) # ((\UART_PORTMAP|index\(3) & \UART_PORTMAP|state_uart.bit_data~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \UART_PORTMAP|index\(3),
	datac => \UART_PORTMAP|state_uart.bit_data~regout\,
	datad => \UART_PORTMAP|state_uart.bit_stop~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UART_PORTMAP|Selector18~2_combout\);

-- Location: LC_X3_Y1_N0
\CLK_CHIA|cnt[3]\ : maxii_lcell
-- Equation(s):
-- \CLK_CHIA|cnt\(3) = DFFEAS((\CLK_CHIA|Add0~15_combout\ & (((!\CLK_CHIA|LessThan0~0_combout\) # (!\CLK_CHIA|Add0~0_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0aaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \CLK_CHIA|Add0~15_combout\,
	datac => \CLK_CHIA|Add0~0_combout\,
	datad => \CLK_CHIA|LessThan0~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CLK_CHIA|cnt\(3));

-- Location: LC_X3_Y1_N1
\CLK_CHIA|Add0~30\ : maxii_lcell
-- Equation(s):
-- \CLK_CHIA|Add0~30_combout\ = ((!\CLK_CHIA|cnt\(0)))
-- \CLK_CHIA|Add0~32\ = CARRY(((\CLK_CHIA|cnt\(0))))
-- \CLK_CHIA|Add0~32COUT1_42\ = CARRY(((\CLK_CHIA|cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \CLK_CHIA|cnt\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CLK_CHIA|Add0~30_combout\,
	cout0 => \CLK_CHIA|Add0~32\,
	cout1 => \CLK_CHIA|Add0~32COUT1_42\);

-- Location: LC_X2_Y1_N7
\CLK_CHIA|cnt[0]\ : maxii_lcell
-- Equation(s):
-- \CLK_CHIA|cnt\(0) = DFFEAS(((\CLK_CHIA|Add0~30_combout\ & ((!\CLK_CHIA|LessThan0~0_combout\) # (!\CLK_CHIA|Add0~0_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "50f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \CLK_CHIA|Add0~0_combout\,
	datac => \CLK_CHIA|Add0~30_combout\,
	datad => \CLK_CHIA|LessThan0~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CLK_CHIA|cnt\(0));

-- Location: LC_X3_Y1_N2
\CLK_CHIA|Add0~25\ : maxii_lcell
-- Equation(s):
-- \CLK_CHIA|Add0~25_combout\ = (\CLK_CHIA|cnt\(1) $ ((\CLK_CHIA|Add0~32\)))
-- \CLK_CHIA|Add0~27\ = CARRY(((!\CLK_CHIA|Add0~32\) # (!\CLK_CHIA|cnt\(1))))
-- \CLK_CHIA|Add0~27COUT1_44\ = CARRY(((!\CLK_CHIA|Add0~32COUT1_42\) # (!\CLK_CHIA|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \CLK_CHIA|cnt\(1),
	cin0 => \CLK_CHIA|Add0~32\,
	cin1 => \CLK_CHIA|Add0~32COUT1_42\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CLK_CHIA|Add0~25_combout\,
	cout0 => \CLK_CHIA|Add0~27\,
	cout1 => \CLK_CHIA|Add0~27COUT1_44\);

-- Location: LC_X2_Y1_N2
\CLK_CHIA|cnt[1]\ : maxii_lcell
-- Equation(s):
-- \CLK_CHIA|cnt\(1) = DFFEAS(((\CLK_CHIA|Add0~25_combout\ & ((!\CLK_CHIA|LessThan0~0_combout\) # (!\CLK_CHIA|Add0~0_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "50f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \CLK_CHIA|Add0~0_combout\,
	datac => \CLK_CHIA|Add0~25_combout\,
	datad => \CLK_CHIA|LessThan0~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CLK_CHIA|cnt\(1));

-- Location: LC_X3_Y1_N3
\CLK_CHIA|Add0~10\ : maxii_lcell
-- Equation(s):
-- \CLK_CHIA|Add0~10_combout\ = (\CLK_CHIA|cnt\(2) $ ((!\CLK_CHIA|Add0~27\)))
-- \CLK_CHIA|Add0~12\ = CARRY(((\CLK_CHIA|cnt\(2) & !\CLK_CHIA|Add0~27\)))
-- \CLK_CHIA|Add0~12COUT1_46\ = CARRY(((\CLK_CHIA|cnt\(2) & !\CLK_CHIA|Add0~27COUT1_44\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \CLK_CHIA|cnt\(2),
	cin0 => \CLK_CHIA|Add0~27\,
	cin1 => \CLK_CHIA|Add0~27COUT1_44\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CLK_CHIA|Add0~10_combout\,
	cout0 => \CLK_CHIA|Add0~12\,
	cout1 => \CLK_CHIA|Add0~12COUT1_46\);

-- Location: LC_X3_Y1_N9
\CLK_CHIA|cnt[2]\ : maxii_lcell
-- Equation(s):
-- \CLK_CHIA|cnt\(2) = DFFEAS((\CLK_CHIA|Add0~10_combout\ & (((!\CLK_CHIA|LessThan0~0_combout\) # (!\CLK_CHIA|Add0~0_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0aaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \CLK_CHIA|Add0~10_combout\,
	datac => \CLK_CHIA|Add0~0_combout\,
	datad => \CLK_CHIA|LessThan0~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CLK_CHIA|cnt\(2));

-- Location: LC_X3_Y1_N4
\CLK_CHIA|Add0~15\ : maxii_lcell
-- Equation(s):
-- \CLK_CHIA|Add0~15_combout\ = (\CLK_CHIA|cnt\(3) $ ((\CLK_CHIA|Add0~12\)))
-- \CLK_CHIA|Add0~17\ = CARRY(((!\CLK_CHIA|Add0~12COUT1_46\) # (!\CLK_CHIA|cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \CLK_CHIA|cnt\(3),
	cin0 => \CLK_CHIA|Add0~12\,
	cin1 => \CLK_CHIA|Add0~12COUT1_46\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CLK_CHIA|Add0~15_combout\,
	cout => \CLK_CHIA|Add0~17\);

-- Location: LC_X2_Y1_N3
\CLK_CHIA|cnt[5]\ : maxii_lcell
-- Equation(s):
-- \CLK_CHIA|cnt\(5) = DFFEAS(((\CLK_CHIA|Add0~5_combout\ & ((!\CLK_CHIA|LessThan0~0_combout\) # (!\CLK_CHIA|Add0~0_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "50f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \CLK_CHIA|Add0~0_combout\,
	datac => \CLK_CHIA|Add0~5_combout\,
	datad => \CLK_CHIA|LessThan0~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CLK_CHIA|cnt\(5));

-- Location: LC_X3_Y1_N5
\CLK_CHIA|Add0~20\ : maxii_lcell
-- Equation(s):
-- \CLK_CHIA|Add0~20_combout\ = (\CLK_CHIA|cnt\(4) $ ((!\CLK_CHIA|Add0~17\)))
-- \CLK_CHIA|Add0~22\ = CARRY(((\CLK_CHIA|cnt\(4) & !\CLK_CHIA|Add0~17\)))
-- \CLK_CHIA|Add0~22COUT1_48\ = CARRY(((\CLK_CHIA|cnt\(4) & !\CLK_CHIA|Add0~17\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \CLK_CHIA|cnt\(4),
	cin => \CLK_CHIA|Add0~17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CLK_CHIA|Add0~20_combout\,
	cout0 => \CLK_CHIA|Add0~22\,
	cout1 => \CLK_CHIA|Add0~22COUT1_48\);

-- Location: LC_X2_Y1_N6
\CLK_CHIA|cnt[4]\ : maxii_lcell
-- Equation(s):
-- \CLK_CHIA|cnt\(4) = DFFEAS((\CLK_CHIA|Add0~20_combout\ & (((!\CLK_CHIA|LessThan0~0_combout\)) # (!\CLK_CHIA|Add0~0_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "44cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \CLK_CHIA|Add0~0_combout\,
	datab => \CLK_CHIA|Add0~20_combout\,
	datad => \CLK_CHIA|LessThan0~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CLK_CHIA|cnt\(4));

-- Location: LC_X3_Y1_N6
\CLK_CHIA|Add0~5\ : maxii_lcell
-- Equation(s):
-- \CLK_CHIA|Add0~5_combout\ = (\CLK_CHIA|cnt\(5) $ (((!\CLK_CHIA|Add0~17\ & \CLK_CHIA|Add0~22\) # (\CLK_CHIA|Add0~17\ & \CLK_CHIA|Add0~22COUT1_48\))))
-- \CLK_CHIA|Add0~7\ = CARRY(((!\CLK_CHIA|Add0~22\) # (!\CLK_CHIA|cnt\(5))))
-- \CLK_CHIA|Add0~7COUT1_50\ = CARRY(((!\CLK_CHIA|Add0~22COUT1_48\) # (!\CLK_CHIA|cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \CLK_CHIA|cnt\(5),
	cin => \CLK_CHIA|Add0~17\,
	cin0 => \CLK_CHIA|Add0~22\,
	cin1 => \CLK_CHIA|Add0~22COUT1_48\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CLK_CHIA|Add0~5_combout\,
	cout0 => \CLK_CHIA|Add0~7\,
	cout1 => \CLK_CHIA|Add0~7COUT1_50\);

-- Location: LC_X3_Y1_N8
\CLK_CHIA|LessThan0~0\ : maxii_lcell
-- Equation(s):
-- \CLK_CHIA|LessThan0~0_combout\ = (\CLK_CHIA|Add0~5_combout\ & ((\CLK_CHIA|Add0~15_combout\) # ((\CLK_CHIA|Add0~20_combout\) # (\CLK_CHIA|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccc8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CLK_CHIA|Add0~15_combout\,
	datab => \CLK_CHIA|Add0~5_combout\,
	datac => \CLK_CHIA|Add0~20_combout\,
	datad => \CLK_CHIA|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CLK_CHIA|LessThan0~0_combout\);

-- Location: LC_X2_Y1_N5
\CLK_CHIA|cnt[6]\ : maxii_lcell
-- Equation(s):
-- \CLK_CHIA|cnt\(6) = DFFEAS((\CLK_CHIA|Add0~0_combout\ & (((!\CLK_CHIA|LessThan0~0_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00aa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \CLK_CHIA|Add0~0_combout\,
	datad => \CLK_CHIA|LessThan0~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CLK_CHIA|cnt\(6));

-- Location: LC_X3_Y1_N7
\CLK_CHIA|Add0~0\ : maxii_lcell
-- Equation(s):
-- \CLK_CHIA|Add0~0_combout\ = (((!\CLK_CHIA|Add0~17\ & \CLK_CHIA|Add0~7\) # (\CLK_CHIA|Add0~17\ & \CLK_CHIA|Add0~7COUT1_50\) $ (!\CLK_CHIA|cnt\(6))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f00f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \CLK_CHIA|cnt\(6),
	cin => \CLK_CHIA|Add0~17\,
	cin0 => \CLK_CHIA|Add0~7\,
	cin1 => \CLK_CHIA|Add0~7COUT1_50\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CLK_CHIA|Add0~0_combout\);

-- Location: LC_X2_Y1_N8
\CLK_CHIA|temp\ : maxii_lcell
-- Equation(s):
-- \CLK_CHIA|temp~regout\ = DFFEAS(\CLK_CHIA|temp~regout\ $ (((\CLK_CHIA|Add0~0_combout\ & ((\CLK_CHIA|LessThan0~0_combout\))))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "66cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \CLK_CHIA|Add0~0_combout\,
	datab => \CLK_CHIA|temp~regout\,
	datad => \CLK_CHIA|LessThan0~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CLK_CHIA|temp~regout\);

-- Location: LC_X4_Y4_N5
\ADC_PORTMAP|cnt[11]\ : maxii_lcell
-- Equation(s):
-- \ADC_PORTMAP|cnt\(11) = DFFEAS((\ADC_PORTMAP|Add0~70_combout\ & (((\ADC_PORTMAP|LessThan1~3_combout\) # (!\ADC_PORTMAP|Add0~85_combout\)) # (!\ADC_PORTMAP|Add0~80_combout\))), GLOBAL(\CLK_CHIA|temp~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa2a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK_CHIA|temp~regout\,
	dataa => \ADC_PORTMAP|Add0~70_combout\,
	datab => \ADC_PORTMAP|Add0~80_combout\,
	datac => \ADC_PORTMAP|Add0~85_combout\,
	datad => \ADC_PORTMAP|LessThan1~3_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ADC_PORTMAP|cnt\(11));

-- Location: LC_X4_Y3_N1
\ADC_PORTMAP|Add0~0\ : maxii_lcell
-- Equation(s):
-- \ADC_PORTMAP|Add0~0_combout\ = ((!\ADC_PORTMAP|cnt\(0)))
-- \ADC_PORTMAP|Add0~2\ = CARRY(((\ADC_PORTMAP|cnt\(0))))
-- \ADC_PORTMAP|Add0~2COUT1_112\ = CARRY(((\ADC_PORTMAP|cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ADC_PORTMAP|cnt\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ADC_PORTMAP|Add0~0_combout\,
	cout0 => \ADC_PORTMAP|Add0~2\,
	cout1 => \ADC_PORTMAP|Add0~2COUT1_112\);

-- Location: LC_X3_Y3_N2
\ADC_PORTMAP|cnt[0]\ : maxii_lcell
-- Equation(s):
-- \ADC_PORTMAP|cnt\(0) = DFFEAS((\ADC_PORTMAP|Add0~0_combout\ & (((\ADC_PORTMAP|LessThan1~3_combout\) # (!\ADC_PORTMAP|Add0~80_combout\)) # (!\ADC_PORTMAP|Add0~85_combout\))), GLOBAL(\CLK_CHIA|temp~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa2a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK_CHIA|temp~regout\,
	dataa => \ADC_PORTMAP|Add0~0_combout\,
	datab => \ADC_PORTMAP|Add0~85_combout\,
	datac => \ADC_PORTMAP|Add0~80_combout\,
	datad => \ADC_PORTMAP|LessThan1~3_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ADC_PORTMAP|cnt\(0));

-- Location: LC_X4_Y3_N2
\ADC_PORTMAP|Add0~90\ : maxii_lcell
-- Equation(s):
-- \ADC_PORTMAP|Add0~90_combout\ = (\ADC_PORTMAP|cnt\(1) $ ((\ADC_PORTMAP|Add0~2\)))
-- \ADC_PORTMAP|Add0~92\ = CARRY(((!\ADC_PORTMAP|Add0~2\) # (!\ADC_PORTMAP|cnt\(1))))
-- \ADC_PORTMAP|Add0~92COUT1_114\ = CARRY(((!\ADC_PORTMAP|Add0~2COUT1_112\) # (!\ADC_PORTMAP|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ADC_PORTMAP|cnt\(1),
	cin0 => \ADC_PORTMAP|Add0~2\,
	cin1 => \ADC_PORTMAP|Add0~2COUT1_112\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ADC_PORTMAP|Add0~90_combout\,
	cout0 => \ADC_PORTMAP|Add0~92\,
	cout1 => \ADC_PORTMAP|Add0~92COUT1_114\);

-- Location: LC_X3_Y4_N7
\ADC_PORTMAP|cnt[1]\ : maxii_lcell
-- Equation(s):
-- \ADC_PORTMAP|cnt\(1) = DFFEAS((\ADC_PORTMAP|Add0~90_combout\ & (((\ADC_PORTMAP|LessThan1~3_combout\) # (!\ADC_PORTMAP|Add0~80_combout\)) # (!\ADC_PORTMAP|Add0~85_combout\))), GLOBAL(\CLK_CHIA|temp~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f070",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK_CHIA|temp~regout\,
	dataa => \ADC_PORTMAP|Add0~85_combout\,
	datab => \ADC_PORTMAP|Add0~80_combout\,
	datac => \ADC_PORTMAP|Add0~90_combout\,
	datad => \ADC_PORTMAP|LessThan1~3_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ADC_PORTMAP|cnt\(1));

-- Location: LC_X4_Y3_N3
\ADC_PORTMAP|Add0~35\ : maxii_lcell
-- Equation(s):
-- \ADC_PORTMAP|Add0~35_combout\ = \ADC_PORTMAP|cnt\(2) $ ((((!\ADC_PORTMAP|Add0~92\))))
-- \ADC_PORTMAP|Add0~37\ = CARRY((\ADC_PORTMAP|cnt\(2) & ((!\ADC_PORTMAP|Add0~92\))))
-- \ADC_PORTMAP|Add0~37COUT1_116\ = CARRY((\ADC_PORTMAP|cnt\(2) & ((!\ADC_PORTMAP|Add0~92COUT1_114\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_PORTMAP|cnt\(2),
	cin0 => \ADC_PORTMAP|Add0~92\,
	cin1 => \ADC_PORTMAP|Add0~92COUT1_114\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ADC_PORTMAP|Add0~35_combout\,
	cout0 => \ADC_PORTMAP|Add0~37\,
	cout1 => \ADC_PORTMAP|Add0~37COUT1_116\);

-- Location: LC_X3_Y3_N0
\ADC_PORTMAP|cnt[2]\ : maxii_lcell
-- Equation(s):
-- \ADC_PORTMAP|cnt\(2) = DFFEAS((\ADC_PORTMAP|Add0~35_combout\ & ((\ADC_PORTMAP|LessThan1~3_combout\) # ((!\ADC_PORTMAP|Add0~80_combout\) # (!\ADC_PORTMAP|Add0~85_combout\)))), GLOBAL(\CLK_CHIA|temp~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b0f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK_CHIA|temp~regout\,
	dataa => \ADC_PORTMAP|LessThan1~3_combout\,
	datab => \ADC_PORTMAP|Add0~85_combout\,
	datac => \ADC_PORTMAP|Add0~35_combout\,
	datad => \ADC_PORTMAP|Add0~80_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ADC_PORTMAP|cnt\(2));

-- Location: LC_X4_Y3_N4
\ADC_PORTMAP|Add0~40\ : maxii_lcell
-- Equation(s):
-- \ADC_PORTMAP|Add0~40_combout\ = \ADC_PORTMAP|cnt\(3) $ ((((\ADC_PORTMAP|Add0~37\))))
-- \ADC_PORTMAP|Add0~42\ = CARRY(((!\ADC_PORTMAP|Add0~37COUT1_116\)) # (!\ADC_PORTMAP|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_PORTMAP|cnt\(3),
	cin0 => \ADC_PORTMAP|Add0~37\,
	cin1 => \ADC_PORTMAP|Add0~37COUT1_116\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ADC_PORTMAP|Add0~40_combout\,
	cout => \ADC_PORTMAP|Add0~42\);

-- Location: LC_X3_Y3_N1
\ADC_PORTMAP|cnt[3]\ : maxii_lcell
-- Equation(s):
-- \ADC_PORTMAP|cnt\(3) = DFFEAS((\ADC_PORTMAP|Add0~40_combout\ & (((\ADC_PORTMAP|LessThan1~3_combout\) # (!\ADC_PORTMAP|Add0~85_combout\)) # (!\ADC_PORTMAP|Add0~80_combout\))), GLOBAL(\CLK_CHIA|temp~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c4cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK_CHIA|temp~regout\,
	dataa => \ADC_PORTMAP|Add0~80_combout\,
	datab => \ADC_PORTMAP|Add0~40_combout\,
	datac => \ADC_PORTMAP|LessThan1~3_combout\,
	datad => \ADC_PORTMAP|Add0~85_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ADC_PORTMAP|cnt\(3));

-- Location: LC_X4_Y3_N5
\ADC_PORTMAP|Add0~45\ : maxii_lcell
-- Equation(s):
-- \ADC_PORTMAP|Add0~45_combout\ = (\ADC_PORTMAP|cnt\(4) $ ((!\ADC_PORTMAP|Add0~42\)))
-- \ADC_PORTMAP|Add0~47\ = CARRY(((\ADC_PORTMAP|cnt\(4) & !\ADC_PORTMAP|Add0~42\)))
-- \ADC_PORTMAP|Add0~47COUT1_118\ = CARRY(((\ADC_PORTMAP|cnt\(4) & !\ADC_PORTMAP|Add0~42\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ADC_PORTMAP|cnt\(4),
	cin => \ADC_PORTMAP|Add0~42\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ADC_PORTMAP|Add0~45_combout\,
	cout0 => \ADC_PORTMAP|Add0~47\,
	cout1 => \ADC_PORTMAP|Add0~47COUT1_118\);

-- Location: LC_X3_Y3_N7
\ADC_PORTMAP|cnt[4]\ : maxii_lcell
-- Equation(s):
-- \ADC_PORTMAP|cnt\(4) = DFFEAS((\ADC_PORTMAP|Add0~45_combout\ & (((\ADC_PORTMAP|LessThan1~3_combout\) # (!\ADC_PORTMAP|Add0~80_combout\)) # (!\ADC_PORTMAP|Add0~85_combout\))), GLOBAL(\CLK_CHIA|temp~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc4c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK_CHIA|temp~regout\,
	dataa => \ADC_PORTMAP|Add0~85_combout\,
	datab => \ADC_PORTMAP|Add0~45_combout\,
	datac => \ADC_PORTMAP|Add0~80_combout\,
	datad => \ADC_PORTMAP|LessThan1~3_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ADC_PORTMAP|cnt\(4));

-- Location: LC_X4_Y3_N6
\ADC_PORTMAP|Add0~50\ : maxii_lcell
-- Equation(s):
-- \ADC_PORTMAP|Add0~50_combout\ = \ADC_PORTMAP|cnt\(5) $ (((((!\ADC_PORTMAP|Add0~42\ & \ADC_PORTMAP|Add0~47\) # (\ADC_PORTMAP|Add0~42\ & \ADC_PORTMAP|Add0~47COUT1_118\)))))
-- \ADC_PORTMAP|Add0~52\ = CARRY(((!\ADC_PORTMAP|Add0~47\)) # (!\ADC_PORTMAP|cnt\(5)))
-- \ADC_PORTMAP|Add0~52COUT1_120\ = CARRY(((!\ADC_PORTMAP|Add0~47COUT1_118\)) # (!\ADC_PORTMAP|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_PORTMAP|cnt\(5),
	cin => \ADC_PORTMAP|Add0~42\,
	cin0 => \ADC_PORTMAP|Add0~47\,
	cin1 => \ADC_PORTMAP|Add0~47COUT1_118\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ADC_PORTMAP|Add0~50_combout\,
	cout0 => \ADC_PORTMAP|Add0~52\,
	cout1 => \ADC_PORTMAP|Add0~52COUT1_120\);

-- Location: LC_X3_Y3_N9
\ADC_PORTMAP|cnt[5]\ : maxii_lcell
-- Equation(s):
-- \ADC_PORTMAP|cnt\(5) = DFFEAS((\ADC_PORTMAP|Add0~50_combout\ & (((\ADC_PORTMAP|LessThan1~3_combout\) # (!\ADC_PORTMAP|Add0~85_combout\)) # (!\ADC_PORTMAP|Add0~80_combout\))), GLOBAL(\CLK_CHIA|temp~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f070",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK_CHIA|temp~regout\,
	dataa => \ADC_PORTMAP|Add0~80_combout\,
	datab => \ADC_PORTMAP|Add0~85_combout\,
	datac => \ADC_PORTMAP|Add0~50_combout\,
	datad => \ADC_PORTMAP|LessThan1~3_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ADC_PORTMAP|cnt\(5));

-- Location: LC_X4_Y3_N7
\ADC_PORTMAP|Add0~55\ : maxii_lcell
-- Equation(s):
-- \ADC_PORTMAP|Add0~55_combout\ = (\ADC_PORTMAP|cnt\(6) $ ((!(!\ADC_PORTMAP|Add0~42\ & \ADC_PORTMAP|Add0~52\) # (\ADC_PORTMAP|Add0~42\ & \ADC_PORTMAP|Add0~52COUT1_120\))))
-- \ADC_PORTMAP|Add0~57\ = CARRY(((\ADC_PORTMAP|cnt\(6) & !\ADC_PORTMAP|Add0~52\)))
-- \ADC_PORTMAP|Add0~57COUT1_122\ = CARRY(((\ADC_PORTMAP|cnt\(6) & !\ADC_PORTMAP|Add0~52COUT1_120\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ADC_PORTMAP|cnt\(6),
	cin => \ADC_PORTMAP|Add0~42\,
	cin0 => \ADC_PORTMAP|Add0~52\,
	cin1 => \ADC_PORTMAP|Add0~52COUT1_120\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ADC_PORTMAP|Add0~55_combout\,
	cout0 => \ADC_PORTMAP|Add0~57\,
	cout1 => \ADC_PORTMAP|Add0~57COUT1_122\);

-- Location: LC_X3_Y3_N6
\ADC_PORTMAP|cnt[6]\ : maxii_lcell
-- Equation(s):
-- \ADC_PORTMAP|cnt\(6) = DFFEAS((\ADC_PORTMAP|Add0~55_combout\ & ((\ADC_PORTMAP|LessThan1~3_combout\) # ((!\ADC_PORTMAP|Add0~80_combout\) # (!\ADC_PORTMAP|Add0~85_combout\)))), GLOBAL(\CLK_CHIA|temp~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b0f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK_CHIA|temp~regout\,
	dataa => \ADC_PORTMAP|LessThan1~3_combout\,
	datab => \ADC_PORTMAP|Add0~85_combout\,
	datac => \ADC_PORTMAP|Add0~55_combout\,
	datad => \ADC_PORTMAP|Add0~80_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ADC_PORTMAP|cnt\(6));

-- Location: LC_X4_Y3_N8
\ADC_PORTMAP|Add0~25\ : maxii_lcell
-- Equation(s):
-- \ADC_PORTMAP|Add0~25_combout\ = \ADC_PORTMAP|cnt\(7) $ (((((!\ADC_PORTMAP|Add0~42\ & \ADC_PORTMAP|Add0~57\) # (\ADC_PORTMAP|Add0~42\ & \ADC_PORTMAP|Add0~57COUT1_122\)))))
-- \ADC_PORTMAP|Add0~27\ = CARRY(((!\ADC_PORTMAP|Add0~57\)) # (!\ADC_PORTMAP|cnt\(7)))
-- \ADC_PORTMAP|Add0~27COUT1_124\ = CARRY(((!\ADC_PORTMAP|Add0~57COUT1_122\)) # (!\ADC_PORTMAP|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_PORTMAP|cnt\(7),
	cin => \ADC_PORTMAP|Add0~42\,
	cin0 => \ADC_PORTMAP|Add0~57\,
	cin1 => \ADC_PORTMAP|Add0~57COUT1_122\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ADC_PORTMAP|Add0~25_combout\,
	cout0 => \ADC_PORTMAP|Add0~27\,
	cout1 => \ADC_PORTMAP|Add0~27COUT1_124\);

-- Location: LC_X3_Y3_N4
\ADC_PORTMAP|cnt[7]\ : maxii_lcell
-- Equation(s):
-- \ADC_PORTMAP|cnt\(7) = DFFEAS((\ADC_PORTMAP|Add0~25_combout\ & (((\ADC_PORTMAP|LessThan1~3_combout\) # (!\ADC_PORTMAP|Add0~85_combout\)) # (!\ADC_PORTMAP|Add0~80_combout\))), GLOBAL(\CLK_CHIA|temp~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c4cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK_CHIA|temp~regout\,
	dataa => \ADC_PORTMAP|Add0~80_combout\,
	datab => \ADC_PORTMAP|Add0~25_combout\,
	datac => \ADC_PORTMAP|LessThan1~3_combout\,
	datad => \ADC_PORTMAP|Add0~85_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ADC_PORTMAP|cnt\(7));

-- Location: LC_X4_Y3_N9
\ADC_PORTMAP|Add0~30\ : maxii_lcell
-- Equation(s):
-- \ADC_PORTMAP|Add0~30_combout\ = (\ADC_PORTMAP|cnt\(8) $ ((!(!\ADC_PORTMAP|Add0~42\ & \ADC_PORTMAP|Add0~27\) # (\ADC_PORTMAP|Add0~42\ & \ADC_PORTMAP|Add0~27COUT1_124\))))
-- \ADC_PORTMAP|Add0~32\ = CARRY(((\ADC_PORTMAP|cnt\(8) & !\ADC_PORTMAP|Add0~27COUT1_124\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ADC_PORTMAP|cnt\(8),
	cin => \ADC_PORTMAP|Add0~42\,
	cin0 => \ADC_PORTMAP|Add0~27\,
	cin1 => \ADC_PORTMAP|Add0~27COUT1_124\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ADC_PORTMAP|Add0~30_combout\,
	cout => \ADC_PORTMAP|Add0~32\);

-- Location: LC_X3_Y3_N3
\ADC_PORTMAP|cnt[8]\ : maxii_lcell
-- Equation(s):
-- \ADC_PORTMAP|cnt\(8) = DFFEAS((\ADC_PORTMAP|Add0~30_combout\ & (((\ADC_PORTMAP|LessThan1~3_combout\) # (!\ADC_PORTMAP|Add0~85_combout\)) # (!\ADC_PORTMAP|Add0~80_combout\))), GLOBAL(\CLK_CHIA|temp~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f070",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK_CHIA|temp~regout\,
	dataa => \ADC_PORTMAP|Add0~80_combout\,
	datab => \ADC_PORTMAP|Add0~85_combout\,
	datac => \ADC_PORTMAP|Add0~30_combout\,
	datad => \ADC_PORTMAP|LessThan1~3_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ADC_PORTMAP|cnt\(8));

-- Location: LC_X5_Y3_N0
\ADC_PORTMAP|Add0~60\ : maxii_lcell
-- Equation(s):
-- \ADC_PORTMAP|Add0~60_combout\ = (\ADC_PORTMAP|cnt\(9) $ ((\ADC_PORTMAP|Add0~32\)))
-- \ADC_PORTMAP|Add0~62\ = CARRY(((!\ADC_PORTMAP|Add0~32\) # (!\ADC_PORTMAP|cnt\(9))))
-- \ADC_PORTMAP|Add0~62COUT1_126\ = CARRY(((!\ADC_PORTMAP|Add0~32\) # (!\ADC_PORTMAP|cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ADC_PORTMAP|cnt\(9),
	cin => \ADC_PORTMAP|Add0~32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ADC_PORTMAP|Add0~60_combout\,
	cout0 => \ADC_PORTMAP|Add0~62\,
	cout1 => \ADC_PORTMAP|Add0~62COUT1_126\);

-- Location: LC_X4_Y4_N1
\ADC_PORTMAP|cnt[9]\ : maxii_lcell
-- Equation(s):
-- \ADC_PORTMAP|cnt\(9) = DFFEAS((\ADC_PORTMAP|Add0~60_combout\ & (((\ADC_PORTMAP|LessThan1~3_combout\) # (!\ADC_PORTMAP|Add0~80_combout\)) # (!\ADC_PORTMAP|Add0~85_combout\))), GLOBAL(\CLK_CHIA|temp~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f070",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK_CHIA|temp~regout\,
	dataa => \ADC_PORTMAP|Add0~85_combout\,
	datab => \ADC_PORTMAP|Add0~80_combout\,
	datac => \ADC_PORTMAP|Add0~60_combout\,
	datad => \ADC_PORTMAP|LessThan1~3_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ADC_PORTMAP|cnt\(9));

-- Location: LC_X5_Y3_N1
\ADC_PORTMAP|Add0~65\ : maxii_lcell
-- Equation(s):
-- \ADC_PORTMAP|Add0~65_combout\ = (\ADC_PORTMAP|cnt\(10) $ ((!(!\ADC_PORTMAP|Add0~32\ & \ADC_PORTMAP|Add0~62\) # (\ADC_PORTMAP|Add0~32\ & \ADC_PORTMAP|Add0~62COUT1_126\))))
-- \ADC_PORTMAP|Add0~67\ = CARRY(((\ADC_PORTMAP|cnt\(10) & !\ADC_PORTMAP|Add0~62\)))
-- \ADC_PORTMAP|Add0~67COUT1_128\ = CARRY(((\ADC_PORTMAP|cnt\(10) & !\ADC_PORTMAP|Add0~62COUT1_126\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ADC_PORTMAP|cnt\(10),
	cin => \ADC_PORTMAP|Add0~32\,
	cin0 => \ADC_PORTMAP|Add0~62\,
	cin1 => \ADC_PORTMAP|Add0~62COUT1_126\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ADC_PORTMAP|Add0~65_combout\,
	cout0 => \ADC_PORTMAP|Add0~67\,
	cout1 => \ADC_PORTMAP|Add0~67COUT1_128\);

-- Location: LC_X6_Y3_N4
\ADC_PORTMAP|cnt[10]\ : maxii_lcell
-- Equation(s):
-- \ADC_PORTMAP|cnt\(10) = DFFEAS((\ADC_PORTMAP|Add0~65_combout\ & (((\ADC_PORTMAP|LessThan1~3_combout\) # (!\ADC_PORTMAP|Add0~80_combout\)) # (!\ADC_PORTMAP|Add0~85_combout\))), GLOBAL(\CLK_CHIA|temp~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa2a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK_CHIA|temp~regout\,
	dataa => \ADC_PORTMAP|Add0~65_combout\,
	datab => \ADC_PORTMAP|Add0~85_combout\,
	datac => \ADC_PORTMAP|Add0~80_combout\,
	datad => \ADC_PORTMAP|LessThan1~3_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ADC_PORTMAP|cnt\(10));

-- Location: LC_X5_Y3_N2
\ADC_PORTMAP|Add0~70\ : maxii_lcell
-- Equation(s):
-- \ADC_PORTMAP|Add0~70_combout\ = (\ADC_PORTMAP|cnt\(11) $ (((!\ADC_PORTMAP|Add0~32\ & \ADC_PORTMAP|Add0~67\) # (\ADC_PORTMAP|Add0~32\ & \ADC_PORTMAP|Add0~67COUT1_128\))))
-- \ADC_PORTMAP|Add0~72\ = CARRY(((!\ADC_PORTMAP|Add0~67\) # (!\ADC_PORTMAP|cnt\(11))))
-- \ADC_PORTMAP|Add0~72COUT1_130\ = CARRY(((!\ADC_PORTMAP|Add0~67COUT1_128\) # (!\ADC_PORTMAP|cnt\(11))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ADC_PORTMAP|cnt\(11),
	cin => \ADC_PORTMAP|Add0~32\,
	cin0 => \ADC_PORTMAP|Add0~67\,
	cin1 => \ADC_PORTMAP|Add0~67COUT1_128\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ADC_PORTMAP|Add0~70_combout\,
	cout0 => \ADC_PORTMAP|Add0~72\,
	cout1 => \ADC_PORTMAP|Add0~72COUT1_130\);

-- Location: LC_X4_Y4_N9
\ADC_PORTMAP|cnt[12]\ : maxii_lcell
-- Equation(s):
-- \ADC_PORTMAP|cnt\(12) = DFFEAS((\ADC_PORTMAP|Add0~75_combout\ & (((\ADC_PORTMAP|LessThan1~3_combout\) # (!\ADC_PORTMAP|Add0~85_combout\)) # (!\ADC_PORTMAP|Add0~80_combout\))), GLOBAL(\CLK_CHIA|temp~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa2a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK_CHIA|temp~regout\,
	dataa => \ADC_PORTMAP|Add0~75_combout\,
	datab => \ADC_PORTMAP|Add0~80_combout\,
	datac => \ADC_PORTMAP|Add0~85_combout\,
	datad => \ADC_PORTMAP|LessThan1~3_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ADC_PORTMAP|cnt\(12));

-- Location: LC_X5_Y3_N3
\ADC_PORTMAP|Add0~75\ : maxii_lcell
-- Equation(s):
-- \ADC_PORTMAP|Add0~75_combout\ = (\ADC_PORTMAP|cnt\(12) $ ((!(!\ADC_PORTMAP|Add0~32\ & \ADC_PORTMAP|Add0~72\) # (\ADC_PORTMAP|Add0~32\ & \ADC_PORTMAP|Add0~72COUT1_130\))))
-- \ADC_PORTMAP|Add0~77\ = CARRY(((\ADC_PORTMAP|cnt\(12) & !\ADC_PORTMAP|Add0~72\)))
-- \ADC_PORTMAP|Add0~77COUT1_132\ = CARRY(((\ADC_PORTMAP|cnt\(12) & !\ADC_PORTMAP|Add0~72COUT1_130\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ADC_PORTMAP|cnt\(12),
	cin => \ADC_PORTMAP|Add0~32\,
	cin0 => \ADC_PORTMAP|Add0~72\,
	cin1 => \ADC_PORTMAP|Add0~72COUT1_130\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ADC_PORTMAP|Add0~75_combout\,
	cout0 => \ADC_PORTMAP|Add0~77\,
	cout1 => \ADC_PORTMAP|Add0~77COUT1_132\);

-- Location: LC_X3_Y3_N5
\ADC_PORTMAP|LessThan1~2\ : maxii_lcell
-- Equation(s):
-- \ADC_PORTMAP|LessThan1~2_combout\ = (!\ADC_PORTMAP|Add0~65_combout\ & (((!\ADC_PORTMAP|Add0~30_combout\ & !\ADC_PORTMAP|Add0~25_combout\)) # (!\ADC_PORTMAP|Add0~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "010f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_PORTMAP|Add0~30_combout\,
	datab => \ADC_PORTMAP|Add0~25_combout\,
	datac => \ADC_PORTMAP|Add0~65_combout\,
	datad => \ADC_PORTMAP|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ADC_PORTMAP|LessThan1~2_combout\);

-- Location: LC_X4_Y4_N6
\ADC_PORTMAP|cnt[14]\ : maxii_lcell
-- Equation(s):
-- \ADC_PORTMAP|cnt\(14) = DFFEAS((\ADC_PORTMAP|Add0~10_combout\ & (((\ADC_PORTMAP|LessThan1~3_combout\) # (!\ADC_PORTMAP|Add0~85_combout\)) # (!\ADC_PORTMAP|Add0~80_combout\))), GLOBAL(\CLK_CHIA|temp~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa2a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK_CHIA|temp~regout\,
	dataa => \ADC_PORTMAP|Add0~10_combout\,
	datab => \ADC_PORTMAP|Add0~80_combout\,
	datac => \ADC_PORTMAP|Add0~85_combout\,
	datad => \ADC_PORTMAP|LessThan1~3_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ADC_PORTMAP|cnt\(14));

-- Location: LC_X5_Y3_N4
\ADC_PORTMAP|Add0~5\ : maxii_lcell
-- Equation(s):
-- \ADC_PORTMAP|Add0~5_combout\ = (\ADC_PORTMAP|cnt\(13) $ (((!\ADC_PORTMAP|Add0~32\ & \ADC_PORTMAP|Add0~77\) # (\ADC_PORTMAP|Add0~32\ & \ADC_PORTMAP|Add0~77COUT1_132\))))
-- \ADC_PORTMAP|Add0~7\ = CARRY(((!\ADC_PORTMAP|Add0~77COUT1_132\) # (!\ADC_PORTMAP|cnt\(13))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ADC_PORTMAP|cnt\(13),
	cin => \ADC_PORTMAP|Add0~32\,
	cin0 => \ADC_PORTMAP|Add0~77\,
	cin1 => \ADC_PORTMAP|Add0~77COUT1_132\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ADC_PORTMAP|Add0~5_combout\,
	cout => \ADC_PORTMAP|Add0~7\);

-- Location: LC_X4_Y4_N7
\ADC_PORTMAP|cnt[13]\ : maxii_lcell
-- Equation(s):
-- \ADC_PORTMAP|cnt\(13) = DFFEAS((\ADC_PORTMAP|Add0~5_combout\ & (((\ADC_PORTMAP|LessThan1~3_combout\) # (!\ADC_PORTMAP|Add0~85_combout\)) # (!\ADC_PORTMAP|Add0~80_combout\))), GLOBAL(\CLK_CHIA|temp~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa2a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK_CHIA|temp~regout\,
	dataa => \ADC_PORTMAP|Add0~5_combout\,
	datab => \ADC_PORTMAP|Add0~80_combout\,
	datac => \ADC_PORTMAP|Add0~85_combout\,
	datad => \ADC_PORTMAP|LessThan1~3_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ADC_PORTMAP|cnt\(13));

-- Location: LC_X5_Y3_N5
\ADC_PORTMAP|Add0~10\ : maxii_lcell
-- Equation(s):
-- \ADC_PORTMAP|Add0~10_combout\ = (\ADC_PORTMAP|cnt\(14) $ ((!\ADC_PORTMAP|Add0~7\)))
-- \ADC_PORTMAP|Add0~12\ = CARRY(((\ADC_PORTMAP|cnt\(14) & !\ADC_PORTMAP|Add0~7\)))
-- \ADC_PORTMAP|Add0~12COUT1_134\ = CARRY(((\ADC_PORTMAP|cnt\(14) & !\ADC_PORTMAP|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ADC_PORTMAP|cnt\(14),
	cin => \ADC_PORTMAP|Add0~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ADC_PORTMAP|Add0~10_combout\,
	cout0 => \ADC_PORTMAP|Add0~12\,
	cout1 => \ADC_PORTMAP|Add0~12COUT1_134\);

-- Location: LC_X4_Y4_N4
\ADC_PORTMAP|cnt[16]\ : maxii_lcell
-- Equation(s):
-- \ADC_PORTMAP|cnt\(16) = DFFEAS((\ADC_PORTMAP|Add0~20_combout\ & (((\ADC_PORTMAP|LessThan1~3_combout\) # (!\ADC_PORTMAP|Add0~80_combout\)) # (!\ADC_PORTMAP|Add0~85_combout\))), GLOBAL(\CLK_CHIA|temp~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f070",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK_CHIA|temp~regout\,
	dataa => \ADC_PORTMAP|Add0~85_combout\,
	datab => \ADC_PORTMAP|Add0~80_combout\,
	datac => \ADC_PORTMAP|Add0~20_combout\,
	datad => \ADC_PORTMAP|LessThan1~3_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ADC_PORTMAP|cnt\(16));

-- Location: LC_X5_Y3_N6
\ADC_PORTMAP|Add0~15\ : maxii_lcell
-- Equation(s):
-- \ADC_PORTMAP|Add0~15_combout\ = \ADC_PORTMAP|cnt\(15) $ (((((!\ADC_PORTMAP|Add0~7\ & \ADC_PORTMAP|Add0~12\) # (\ADC_PORTMAP|Add0~7\ & \ADC_PORTMAP|Add0~12COUT1_134\)))))
-- \ADC_PORTMAP|Add0~17\ = CARRY(((!\ADC_PORTMAP|Add0~12\)) # (!\ADC_PORTMAP|cnt\(15)))
-- \ADC_PORTMAP|Add0~17COUT1_136\ = CARRY(((!\ADC_PORTMAP|Add0~12COUT1_134\)) # (!\ADC_PORTMAP|cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_PORTMAP|cnt\(15),
	cin => \ADC_PORTMAP|Add0~7\,
	cin0 => \ADC_PORTMAP|Add0~12\,
	cin1 => \ADC_PORTMAP|Add0~12COUT1_134\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ADC_PORTMAP|Add0~15_combout\,
	cout0 => \ADC_PORTMAP|Add0~17\,
	cout1 => \ADC_PORTMAP|Add0~17COUT1_136\);

-- Location: LC_X4_Y1_N5
\ADC_PORTMAP|cnt[15]\ : maxii_lcell
-- Equation(s):
-- \ADC_PORTMAP|cnt\(15) = DFFEAS((\ADC_PORTMAP|Add0~15_combout\ & (((\ADC_PORTMAP|LessThan1~3_combout\) # (!\ADC_PORTMAP|Add0~85_combout\)) # (!\ADC_PORTMAP|Add0~80_combout\))), GLOBAL(\CLK_CHIA|temp~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc4c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK_CHIA|temp~regout\,
	dataa => \ADC_PORTMAP|Add0~80_combout\,
	datab => \ADC_PORTMAP|Add0~15_combout\,
	datac => \ADC_PORTMAP|Add0~85_combout\,
	datad => \ADC_PORTMAP|LessThan1~3_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ADC_PORTMAP|cnt\(15));

-- Location: LC_X5_Y3_N7
\ADC_PORTMAP|Add0~20\ : maxii_lcell
-- Equation(s):
-- \ADC_PORTMAP|Add0~20_combout\ = \ADC_PORTMAP|cnt\(16) $ ((((!(!\ADC_PORTMAP|Add0~7\ & \ADC_PORTMAP|Add0~17\) # (\ADC_PORTMAP|Add0~7\ & \ADC_PORTMAP|Add0~17COUT1_136\)))))
-- \ADC_PORTMAP|Add0~22\ = CARRY((\ADC_PORTMAP|cnt\(16) & ((!\ADC_PORTMAP|Add0~17\))))
-- \ADC_PORTMAP|Add0~22COUT1_138\ = CARRY((\ADC_PORTMAP|cnt\(16) & ((!\ADC_PORTMAP|Add0~17COUT1_136\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_PORTMAP|cnt\(16),
	cin => \ADC_PORTMAP|Add0~7\,
	cin0 => \ADC_PORTMAP|Add0~17\,
	cin1 => \ADC_PORTMAP|Add0~17COUT1_136\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ADC_PORTMAP|Add0~20_combout\,
	cout0 => \ADC_PORTMAP|Add0~22\,
	cout1 => \ADC_PORTMAP|Add0~22COUT1_138\);

-- Location: LC_X6_Y3_N3
\ADC_PORTMAP|LessThan1~0\ : maxii_lcell
-- Equation(s):
-- \ADC_PORTMAP|LessThan1~0_combout\ = (!\ADC_PORTMAP|Add0~10_combout\ & (!\ADC_PORTMAP|Add0~20_combout\ & (!\ADC_PORTMAP|Add0~15_combout\ & !\ADC_PORTMAP|Add0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_PORTMAP|Add0~10_combout\,
	datab => \ADC_PORTMAP|Add0~20_combout\,
	datac => \ADC_PORTMAP|Add0~15_combout\,
	datad => \ADC_PORTMAP|Add0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ADC_PORTMAP|LessThan1~0_combout\);

-- Location: LC_X3_Y3_N8
\ADC_PORTMAP|LessThan1~3\ : maxii_lcell
-- Equation(s):
-- \ADC_PORTMAP|LessThan1~3_combout\ = (\ADC_PORTMAP|LessThan1~0_combout\ & (((\ADC_PORTMAP|LessThan1~2_combout\) # (!\ADC_PORTMAP|Add0~75_combout\)) # (!\ADC_PORTMAP|Add0~70_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f700",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_PORTMAP|Add0~70_combout\,
	datab => \ADC_PORTMAP|Add0~75_combout\,
	datac => \ADC_PORTMAP|LessThan1~2_combout\,
	datad => \ADC_PORTMAP|LessThan1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ADC_PORTMAP|LessThan1~3_combout\);

-- Location: LC_X4_Y4_N3
\ADC_PORTMAP|cnt[17]\ : maxii_lcell
-- Equation(s):
-- \ADC_PORTMAP|cnt\(17) = DFFEAS(((\ADC_PORTMAP|Add0~80_combout\ & ((\ADC_PORTMAP|LessThan1~3_combout\) # (!\ADC_PORTMAP|Add0~85_combout\)))), GLOBAL(\CLK_CHIA|temp~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc0c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK_CHIA|temp~regout\,
	datab => \ADC_PORTMAP|Add0~80_combout\,
	datac => \ADC_PORTMAP|Add0~85_combout\,
	datad => \ADC_PORTMAP|LessThan1~3_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ADC_PORTMAP|cnt\(17));

-- Location: LC_X5_Y3_N8
\ADC_PORTMAP|Add0~80\ : maxii_lcell
-- Equation(s):
-- \ADC_PORTMAP|Add0~80_combout\ = (\ADC_PORTMAP|cnt\(17) $ (((!\ADC_PORTMAP|Add0~7\ & \ADC_PORTMAP|Add0~22\) # (\ADC_PORTMAP|Add0~7\ & \ADC_PORTMAP|Add0~22COUT1_138\))))
-- \ADC_PORTMAP|Add0~82\ = CARRY(((!\ADC_PORTMAP|Add0~22\) # (!\ADC_PORTMAP|cnt\(17))))
-- \ADC_PORTMAP|Add0~82COUT1_140\ = CARRY(((!\ADC_PORTMAP|Add0~22COUT1_138\) # (!\ADC_PORTMAP|cnt\(17))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ADC_PORTMAP|cnt\(17),
	cin => \ADC_PORTMAP|Add0~7\,
	cin0 => \ADC_PORTMAP|Add0~22\,
	cin1 => \ADC_PORTMAP|Add0~22COUT1_138\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ADC_PORTMAP|Add0~80_combout\,
	cout0 => \ADC_PORTMAP|Add0~82\,
	cout1 => \ADC_PORTMAP|Add0~82COUT1_140\);

-- Location: LC_X3_Y4_N5
\ADC_PORTMAP|cnt[18]\ : maxii_lcell
-- Equation(s):
-- \ADC_PORTMAP|cnt\(18) = DFFEAS(((\ADC_PORTMAP|Add0~85_combout\ & ((\ADC_PORTMAP|LessThan1~3_combout\) # (!\ADC_PORTMAP|Add0~80_combout\)))), GLOBAL(\CLK_CHIA|temp~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f030",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK_CHIA|temp~regout\,
	datab => \ADC_PORTMAP|Add0~80_combout\,
	datac => \ADC_PORTMAP|Add0~85_combout\,
	datad => \ADC_PORTMAP|LessThan1~3_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ADC_PORTMAP|cnt\(18));

-- Location: LC_X5_Y3_N9
\ADC_PORTMAP|Add0~85\ : maxii_lcell
-- Equation(s):
-- \ADC_PORTMAP|Add0~85_combout\ = (((!\ADC_PORTMAP|Add0~7\ & \ADC_PORTMAP|Add0~82\) # (\ADC_PORTMAP|Add0~7\ & \ADC_PORTMAP|Add0~82COUT1_140\) $ (!\ADC_PORTMAP|cnt\(18))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f00f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \ADC_PORTMAP|cnt\(18),
	cin => \ADC_PORTMAP|Add0~7\,
	cin0 => \ADC_PORTMAP|Add0~82\,
	cin1 => \ADC_PORTMAP|Add0~82COUT1_140\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ADC_PORTMAP|Add0~85_combout\);

-- Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\intr~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_intr,
	combout => \intr~combout\);

-- Location: LC_X6_Y3_N2
\ADC_PORTMAP|Equal0~1\ : maxii_lcell
-- Equation(s):
-- \ADC_PORTMAP|Equal0~1_combout\ = (!\ADC_PORTMAP|Add0~60_combout\ & (!\ADC_PORTMAP|Add0~55_combout\ & (!\ADC_PORTMAP|Add0~45_combout\ & !\ADC_PORTMAP|Add0~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_PORTMAP|Add0~60_combout\,
	datab => \ADC_PORTMAP|Add0~55_combout\,
	datac => \ADC_PORTMAP|Add0~45_combout\,
	datad => \ADC_PORTMAP|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ADC_PORTMAP|Equal0~1_combout\);

-- Location: LC_X6_Y3_N6
\ADC_PORTMAP|Equal0~2\ : maxii_lcell
-- Equation(s):
-- \ADC_PORTMAP|Equal0~2_combout\ = (!\ADC_PORTMAP|Add0~80_combout\ & (!\ADC_PORTMAP|Add0~70_combout\ & (!\ADC_PORTMAP|Add0~65_combout\ & !\ADC_PORTMAP|Add0~75_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_PORTMAP|Add0~80_combout\,
	datab => \ADC_PORTMAP|Add0~70_combout\,
	datac => \ADC_PORTMAP|Add0~65_combout\,
	datad => \ADC_PORTMAP|Add0~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ADC_PORTMAP|Equal0~2_combout\);

-- Location: LC_X4_Y3_N0
\ADC_PORTMAP|LessThan1~1\ : maxii_lcell
-- Equation(s):
-- \ADC_PORTMAP|LessThan1~1_combout\ = ((!\ADC_PORTMAP|Add0~30_combout\ & ((!\ADC_PORTMAP|Add0~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0033",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ADC_PORTMAP|Add0~30_combout\,
	datad => \ADC_PORTMAP|Add0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ADC_PORTMAP|LessThan1~1_combout\);

-- Location: LC_X6_Y3_N8
\ADC_PORTMAP|Equal0~0\ : maxii_lcell
-- Equation(s):
-- \ADC_PORTMAP|Equal0~0_combout\ = (!\ADC_PORTMAP|Add0~35_combout\ & (!\ADC_PORTMAP|Add0~40_combout\ & (\ADC_PORTMAP|LessThan1~1_combout\ & \ADC_PORTMAP|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_PORTMAP|Add0~35_combout\,
	datab => \ADC_PORTMAP|Add0~40_combout\,
	datac => \ADC_PORTMAP|LessThan1~1_combout\,
	datad => \ADC_PORTMAP|LessThan1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ADC_PORTMAP|Equal0~0_combout\);

-- Location: LC_X6_Y3_N0
\ADC_PORTMAP|Equal0~3\ : maxii_lcell
-- Equation(s):
-- \ADC_PORTMAP|Equal0~3_combout\ = (!\ADC_PORTMAP|Add0~85_combout\ & (\ADC_PORTMAP|Equal0~1_combout\ & (\ADC_PORTMAP|Equal0~2_combout\ & \ADC_PORTMAP|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_PORTMAP|Add0~85_combout\,
	datab => \ADC_PORTMAP|Equal0~1_combout\,
	datac => \ADC_PORTMAP|Equal0~2_combout\,
	datad => \ADC_PORTMAP|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ADC_PORTMAP|Equal0~3_combout\);

-- Location: LC_X6_Y3_N5
\ADC_PORTMAP|Equal0~4\ : maxii_lcell
-- Equation(s):
-- \ADC_PORTMAP|Equal0~4_combout\ = (((\ADC_PORTMAP|Add0~0_combout\ & \ADC_PORTMAP|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \ADC_PORTMAP|Add0~0_combout\,
	datad => \ADC_PORTMAP|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ADC_PORTMAP|Equal0~4_combout\);

-- Location: LC_X6_Y3_N9
\ADC_PORTMAP|flag\ : maxii_lcell
-- Equation(s):
-- \ADC_PORTMAP|flag~regout\ = DFFEAS((!\ADC_PORTMAP|process_0~0_combout\ & ((\ADC_PORTMAP|flag~regout\) # ((\ADC_PORTMAP|Add0~90_combout\ & \ADC_PORTMAP|Equal0~4_combout\)))), GLOBAL(\CLK_CHIA|temp~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3222",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK_CHIA|temp~regout\,
	dataa => \ADC_PORTMAP|flag~regout\,
	datab => \ADC_PORTMAP|process_0~0_combout\,
	datac => \ADC_PORTMAP|Add0~90_combout\,
	datad => \ADC_PORTMAP|Equal0~4_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ADC_PORTMAP|flag~regout\);

-- Location: LC_X6_Y3_N1
\ADC_PORTMAP|process_0~0\ : maxii_lcell
-- Equation(s):
-- \ADC_PORTMAP|process_0~0_combout\ = ((!\intr~combout\ & (\ADC_PORTMAP|flag~regout\ & !\ADC_PORTMAP|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0030",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \intr~combout\,
	datac => \ADC_PORTMAP|flag~regout\,
	datad => \ADC_PORTMAP|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ADC_PORTMAP|process_0~0_combout\);

-- Location: LC_X7_Y3_N3
\ADC_PORTMAP|LessThan1~4\ : maxii_lcell
-- Equation(s):
-- \ADC_PORTMAP|LessThan1~4_combout\ = ((\ADC_PORTMAP|Add0~80_combout\ & ((!\ADC_PORTMAP|LessThan1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ADC_PORTMAP|Add0~80_combout\,
	datad => \ADC_PORTMAP|LessThan1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ADC_PORTMAP|LessThan1~4_combout\);

-- Location: LC_X7_Y3_N8
\ADC_PORTMAP|start_tx\ : maxii_lcell
-- Equation(s):
-- \ADC_PORTMAP|start_tx~regout\ = DFFEAS((\ADC_PORTMAP|Add0~85_combout\ & (!\ADC_PORTMAP|LessThan1~4_combout\ & ((\ADC_PORTMAP|process_0~0_combout\) # (\ADC_PORTMAP|start_tx~regout\)))) # (!\ADC_PORTMAP|Add0~85_combout\ & 
-- ((\ADC_PORTMAP|process_0~0_combout\) # ((\ADC_PORTMAP|start_tx~regout\)))), GLOBAL(\CLK_CHIA|temp~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "54fc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK_CHIA|temp~regout\,
	dataa => \ADC_PORTMAP|Add0~85_combout\,
	datab => \ADC_PORTMAP|process_0~0_combout\,
	datac => \ADC_PORTMAP|start_tx~regout\,
	datad => \ADC_PORTMAP|LessThan1~4_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ADC_PORTMAP|start_tx~regout\);

-- Location: LC_X7_Y3_N1
\UART_PORTMAP|Selector18~1\ : maxii_lcell
-- Equation(s):
-- \UART_PORTMAP|Selector18~1_combout\ = (\UART_PORTMAP|state_uart.INIT~regout\ & ((\UART_PORTMAP|state_uart.stop_ok~regout\ & ((\ADC_PORTMAP|start_tx~regout\))) # (!\UART_PORTMAP|state_uart.stop_ok~regout\ & (!\UART_PORTMAP|LessThan0~2_combout\)))) # 
-- (!\UART_PORTMAP|state_uart.INIT~regout\ & (((\ADC_PORTMAP|start_tx~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "df02",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UART_PORTMAP|state_uart.INIT~regout\,
	datab => \UART_PORTMAP|state_uart.stop_ok~regout\,
	datac => \UART_PORTMAP|LessThan0~2_combout\,
	datad => \ADC_PORTMAP|start_tx~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UART_PORTMAP|Selector18~1_combout\);

-- Location: LC_X7_Y3_N2
\UART_PORTMAP|state_uart.bit_stop\ : maxii_lcell
-- Equation(s):
-- \UART_PORTMAP|state_uart.bit_stop~regout\ = DFFEAS((\UART_PORTMAP|Selector18~2_combout\ & ((\UART_PORTMAP|state_uart.stop_ok~regout\ & ((\UART_PORTMAP|Selector18~1_combout\))) # (!\UART_PORTMAP|state_uart.stop_ok~regout\ & 
-- ((\UART_PORTMAP|state_uart.bit_data~regout\) # (!\UART_PORTMAP|Selector18~1_combout\))))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a822",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \UART_PORTMAP|Selector18~2_combout\,
	datab => \UART_PORTMAP|state_uart.stop_ok~regout\,
	datac => \UART_PORTMAP|state_uart.bit_data~regout\,
	datad => \UART_PORTMAP|Selector18~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_PORTMAP|state_uart.bit_stop~regout\);

-- Location: LC_X7_Y1_N3
\UART_PORTMAP|Selector16~2\ : maxii_lcell
-- Equation(s):
-- \UART_PORTMAP|Selector16~2_combout\ = (((\UART_PORTMAP|state_uart.bit_stop~regout\ & !\UART_PORTMAP|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \UART_PORTMAP|state_uart.bit_stop~regout\,
	datad => \UART_PORTMAP|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UART_PORTMAP|Selector16~2_combout\);

-- Location: LC_X4_Y1_N8
\UART_PORTMAP|temp[0]\ : maxii_lcell
-- Equation(s):
-- \UART_PORTMAP|temp\(0) = DFFEAS((((!\UART_PORTMAP|temp\(2) & !\UART_PORTMAP|temp\(0)))), GLOBAL(\clk~combout\), VCC, , \UART_PORTMAP|Selector16~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \UART_PORTMAP|temp\(2),
	datad => \UART_PORTMAP|temp\(0),
	aclr => GND,
	ena => \UART_PORTMAP|Selector16~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_PORTMAP|temp\(0));

-- Location: LC_X4_Y1_N4
\UART_PORTMAP|temp[1]\ : maxii_lcell
-- Equation(s):
-- \UART_PORTMAP|temp\(1) = DFFEAS(((!\UART_PORTMAP|temp\(2) & (\UART_PORTMAP|temp\(0) $ (\UART_PORTMAP|temp\(1))))), GLOBAL(\clk~combout\), VCC, , \UART_PORTMAP|Selector16~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "050a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \UART_PORTMAP|temp\(0),
	datac => \UART_PORTMAP|temp\(2),
	datad => \UART_PORTMAP|temp\(1),
	aclr => GND,
	ena => \UART_PORTMAP|Selector16~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_PORTMAP|temp\(1));

-- Location: LC_X4_Y1_N6
\UART_PORTMAP|temp[2]\ : maxii_lcell
-- Equation(s):
-- \UART_PORTMAP|temp\(2) = DFFEAS((\UART_PORTMAP|temp\(0) & (((!\UART_PORTMAP|temp\(2) & \UART_PORTMAP|temp\(1))))), GLOBAL(\clk~combout\), VCC, , \UART_PORTMAP|Selector16~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \UART_PORTMAP|temp\(0),
	datac => \UART_PORTMAP|temp\(2),
	datad => \UART_PORTMAP|temp\(1),
	aclr => GND,
	ena => \UART_PORTMAP|Selector16~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_PORTMAP|temp\(2));

-- Location: LC_X7_Y3_N0
\UART_PORTMAP|state_uart.stop_ok\ : maxii_lcell
-- Equation(s):
-- \UART_PORTMAP|state_uart.stop_ok~regout\ = DFFEAS((\UART_PORTMAP|Selector16~2_combout\ & (\UART_PORTMAP|temp\(2))) # (!\UART_PORTMAP|Selector16~2_combout\ & (((\UART_PORTMAP|state_uart.stop_ok~regout\ & \ADC_PORTMAP|start_tx~regout\)))), 
-- GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aca0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \UART_PORTMAP|temp\(2),
	datab => \UART_PORTMAP|state_uart.stop_ok~regout\,
	datac => \UART_PORTMAP|Selector16~2_combout\,
	datad => \ADC_PORTMAP|start_tx~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_PORTMAP|state_uart.stop_ok~regout\);

-- Location: LC_X7_Y3_N9
\UART_PORTMAP|state_uart.INIT\ : maxii_lcell
-- Equation(s):
-- \UART_PORTMAP|state_uart.INIT~regout\ = DFFEAS(((\ADC_PORTMAP|start_tx~regout\) # ((!\UART_PORTMAP|state_uart.stop_ok~regout\ & \UART_PORTMAP|state_uart.INIT~regout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff30",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \UART_PORTMAP|state_uart.stop_ok~regout\,
	datac => \UART_PORTMAP|state_uart.INIT~regout\,
	datad => \ADC_PORTMAP|start_tx~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_PORTMAP|state_uart.INIT~regout\);

-- Location: LC_X7_Y2_N3
\UART_PORTMAP|cnt[8]~0\ : maxii_lcell
-- Equation(s):
-- \UART_PORTMAP|cnt[8]~0_combout\ = (!\UART_PORTMAP|state_uart.stop_ok~regout\ & (((!\UART_PORTMAP|state_uart.bit_data~regout\) # (!\UART_PORTMAP|index\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0555",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UART_PORTMAP|state_uart.stop_ok~regout\,
	datac => \UART_PORTMAP|index\(3),
	datad => \UART_PORTMAP|state_uart.bit_data~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UART_PORTMAP|cnt[8]~0_combout\);

-- Location: LC_X6_Y1_N6
\UART_PORTMAP|cnt[8]\ : maxii_lcell
-- Equation(s):
-- \UART_PORTMAP|cnt\(8) = DFFEAS((\UART_PORTMAP|LessThan0~2_combout\ & (((\UART_PORTMAP|state_uart.INIT~regout\ & \UART_PORTMAP|Add0~40_combout\)))), GLOBAL(\clk~combout\), VCC, , \UART_PORTMAP|cnt[8]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \UART_PORTMAP|LessThan0~2_combout\,
	datac => \UART_PORTMAP|state_uart.INIT~regout\,
	datad => \UART_PORTMAP|Add0~40_combout\,
	aclr => GND,
	ena => \UART_PORTMAP|cnt[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_PORTMAP|cnt\(8));

-- Location: LC_X5_Y1_N0
\UART_PORTMAP|Add0~0\ : maxii_lcell
-- Equation(s):
-- \UART_PORTMAP|Add0~0_combout\ = ((!\UART_PORTMAP|cnt\(0)))
-- \UART_PORTMAP|Add0~2\ = CARRY(((\UART_PORTMAP|cnt\(0))))
-- \UART_PORTMAP|Add0~2COUT1_60\ = CARRY(((\UART_PORTMAP|cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \UART_PORTMAP|cnt\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UART_PORTMAP|Add0~0_combout\,
	cout0 => \UART_PORTMAP|Add0~2\,
	cout1 => \UART_PORTMAP|Add0~2COUT1_60\);

-- Location: LC_X6_Y1_N5
\UART_PORTMAP|cnt[0]\ : maxii_lcell
-- Equation(s):
-- \UART_PORTMAP|cnt\(0) = DFFEAS((\UART_PORTMAP|LessThan0~2_combout\ & (((\UART_PORTMAP|state_uart.INIT~regout\ & \UART_PORTMAP|Add0~0_combout\)))), GLOBAL(\clk~combout\), VCC, , \UART_PORTMAP|cnt[8]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \UART_PORTMAP|LessThan0~2_combout\,
	datac => \UART_PORTMAP|state_uart.INIT~regout\,
	datad => \UART_PORTMAP|Add0~0_combout\,
	aclr => GND,
	ena => \UART_PORTMAP|cnt[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_PORTMAP|cnt\(0));

-- Location: LC_X5_Y1_N1
\UART_PORTMAP|Add0~5\ : maxii_lcell
-- Equation(s):
-- \UART_PORTMAP|Add0~5_combout\ = (\UART_PORTMAP|cnt\(1) $ ((\UART_PORTMAP|Add0~2\)))
-- \UART_PORTMAP|Add0~7\ = CARRY(((!\UART_PORTMAP|Add0~2\) # (!\UART_PORTMAP|cnt\(1))))
-- \UART_PORTMAP|Add0~7COUT1_62\ = CARRY(((!\UART_PORTMAP|Add0~2COUT1_60\) # (!\UART_PORTMAP|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \UART_PORTMAP|cnt\(1),
	cin0 => \UART_PORTMAP|Add0~2\,
	cin1 => \UART_PORTMAP|Add0~2COUT1_60\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UART_PORTMAP|Add0~5_combout\,
	cout0 => \UART_PORTMAP|Add0~7\,
	cout1 => \UART_PORTMAP|Add0~7COUT1_62\);

-- Location: LC_X6_Y1_N2
\UART_PORTMAP|cnt[1]\ : maxii_lcell
-- Equation(s):
-- \UART_PORTMAP|cnt\(1) = DFFEAS((\UART_PORTMAP|LessThan0~2_combout\ & (((\UART_PORTMAP|state_uart.INIT~regout\ & \UART_PORTMAP|Add0~5_combout\)))), GLOBAL(\clk~combout\), VCC, , \UART_PORTMAP|cnt[8]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \UART_PORTMAP|LessThan0~2_combout\,
	datac => \UART_PORTMAP|state_uart.INIT~regout\,
	datad => \UART_PORTMAP|Add0~5_combout\,
	aclr => GND,
	ena => \UART_PORTMAP|cnt[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_PORTMAP|cnt\(1));

-- Location: LC_X5_Y1_N2
\UART_PORTMAP|Add0~10\ : maxii_lcell
-- Equation(s):
-- \UART_PORTMAP|Add0~10_combout\ = (\UART_PORTMAP|cnt\(2) $ ((!\UART_PORTMAP|Add0~7\)))
-- \UART_PORTMAP|Add0~12\ = CARRY(((\UART_PORTMAP|cnt\(2) & !\UART_PORTMAP|Add0~7\)))
-- \UART_PORTMAP|Add0~12COUT1_64\ = CARRY(((\UART_PORTMAP|cnt\(2) & !\UART_PORTMAP|Add0~7COUT1_62\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \UART_PORTMAP|cnt\(2),
	cin0 => \UART_PORTMAP|Add0~7\,
	cin1 => \UART_PORTMAP|Add0~7COUT1_62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UART_PORTMAP|Add0~10_combout\,
	cout0 => \UART_PORTMAP|Add0~12\,
	cout1 => \UART_PORTMAP|Add0~12COUT1_64\);

-- Location: LC_X6_Y1_N4
\UART_PORTMAP|cnt[2]\ : maxii_lcell
-- Equation(s):
-- \UART_PORTMAP|cnt\(2) = DFFEAS((\UART_PORTMAP|LessThan0~2_combout\ & (((\UART_PORTMAP|state_uart.INIT~regout\ & \UART_PORTMAP|Add0~10_combout\)))), GLOBAL(\clk~combout\), VCC, , \UART_PORTMAP|cnt[8]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \UART_PORTMAP|LessThan0~2_combout\,
	datac => \UART_PORTMAP|state_uart.INIT~regout\,
	datad => \UART_PORTMAP|Add0~10_combout\,
	aclr => GND,
	ena => \UART_PORTMAP|cnt[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_PORTMAP|cnt\(2));

-- Location: LC_X5_Y1_N3
\UART_PORTMAP|Add0~15\ : maxii_lcell
-- Equation(s):
-- \UART_PORTMAP|Add0~15_combout\ = (\UART_PORTMAP|cnt\(3) $ ((\UART_PORTMAP|Add0~12\)))
-- \UART_PORTMAP|Add0~17\ = CARRY(((!\UART_PORTMAP|Add0~12\) # (!\UART_PORTMAP|cnt\(3))))
-- \UART_PORTMAP|Add0~17COUT1_66\ = CARRY(((!\UART_PORTMAP|Add0~12COUT1_64\) # (!\UART_PORTMAP|cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \UART_PORTMAP|cnt\(3),
	cin0 => \UART_PORTMAP|Add0~12\,
	cin1 => \UART_PORTMAP|Add0~12COUT1_64\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UART_PORTMAP|Add0~15_combout\,
	cout0 => \UART_PORTMAP|Add0~17\,
	cout1 => \UART_PORTMAP|Add0~17COUT1_66\);

-- Location: LC_X6_Y1_N9
\UART_PORTMAP|cnt[3]\ : maxii_lcell
-- Equation(s):
-- \UART_PORTMAP|cnt\(3) = DFFEAS((\UART_PORTMAP|LessThan0~2_combout\ & (\UART_PORTMAP|state_uart.INIT~regout\ & (\UART_PORTMAP|Add0~15_combout\))), GLOBAL(\clk~combout\), VCC, , \UART_PORTMAP|cnt[8]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8080",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \UART_PORTMAP|LessThan0~2_combout\,
	datab => \UART_PORTMAP|state_uart.INIT~regout\,
	datac => \UART_PORTMAP|Add0~15_combout\,
	aclr => GND,
	ena => \UART_PORTMAP|cnt[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_PORTMAP|cnt\(3));

-- Location: LC_X5_Y1_N4
\UART_PORTMAP|Add0~20\ : maxii_lcell
-- Equation(s):
-- \UART_PORTMAP|Add0~20_combout\ = (\UART_PORTMAP|cnt\(4) $ ((!\UART_PORTMAP|Add0~17\)))
-- \UART_PORTMAP|Add0~22\ = CARRY(((\UART_PORTMAP|cnt\(4) & !\UART_PORTMAP|Add0~17COUT1_66\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \UART_PORTMAP|cnt\(4),
	cin0 => \UART_PORTMAP|Add0~17\,
	cin1 => \UART_PORTMAP|Add0~17COUT1_66\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UART_PORTMAP|Add0~20_combout\,
	cout => \UART_PORTMAP|Add0~22\);

-- Location: LC_X6_Y1_N8
\UART_PORTMAP|cnt[4]\ : maxii_lcell
-- Equation(s):
-- \UART_PORTMAP|cnt\(4) = DFFEAS((\UART_PORTMAP|LessThan0~2_combout\ & (\UART_PORTMAP|state_uart.INIT~regout\ & (\UART_PORTMAP|Add0~20_combout\))), GLOBAL(\clk~combout\), VCC, , \UART_PORTMAP|cnt[8]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8080",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \UART_PORTMAP|LessThan0~2_combout\,
	datab => \UART_PORTMAP|state_uart.INIT~regout\,
	datac => \UART_PORTMAP|Add0~20_combout\,
	aclr => GND,
	ena => \UART_PORTMAP|cnt[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_PORTMAP|cnt\(4));

-- Location: LC_X5_Y1_N5
\UART_PORTMAP|Add0~25\ : maxii_lcell
-- Equation(s):
-- \UART_PORTMAP|Add0~25_combout\ = \UART_PORTMAP|cnt\(5) $ ((((\UART_PORTMAP|Add0~22\))))
-- \UART_PORTMAP|Add0~27\ = CARRY(((!\UART_PORTMAP|Add0~22\)) # (!\UART_PORTMAP|cnt\(5)))
-- \UART_PORTMAP|Add0~27COUT1_68\ = CARRY(((!\UART_PORTMAP|Add0~22\)) # (!\UART_PORTMAP|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UART_PORTMAP|cnt\(5),
	cin => \UART_PORTMAP|Add0~22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UART_PORTMAP|Add0~25_combout\,
	cout0 => \UART_PORTMAP|Add0~27\,
	cout1 => \UART_PORTMAP|Add0~27COUT1_68\);

-- Location: LC_X6_Y1_N7
\UART_PORTMAP|cnt[5]\ : maxii_lcell
-- Equation(s):
-- \UART_PORTMAP|cnt\(5) = DFFEAS((\UART_PORTMAP|LessThan0~2_combout\ & (\UART_PORTMAP|state_uart.INIT~regout\ & (\UART_PORTMAP|Add0~25_combout\))), GLOBAL(\clk~combout\), VCC, , \UART_PORTMAP|cnt[8]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8080",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \UART_PORTMAP|LessThan0~2_combout\,
	datab => \UART_PORTMAP|state_uart.INIT~regout\,
	datac => \UART_PORTMAP|Add0~25_combout\,
	aclr => GND,
	ena => \UART_PORTMAP|cnt[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_PORTMAP|cnt\(5));

-- Location: LC_X5_Y1_N6
\UART_PORTMAP|Add0~30\ : maxii_lcell
-- Equation(s):
-- \UART_PORTMAP|Add0~30_combout\ = \UART_PORTMAP|cnt\(6) $ ((((!(!\UART_PORTMAP|Add0~22\ & \UART_PORTMAP|Add0~27\) # (\UART_PORTMAP|Add0~22\ & \UART_PORTMAP|Add0~27COUT1_68\)))))
-- \UART_PORTMAP|Add0~32\ = CARRY((\UART_PORTMAP|cnt\(6) & ((!\UART_PORTMAP|Add0~27\))))
-- \UART_PORTMAP|Add0~32COUT1_70\ = CARRY((\UART_PORTMAP|cnt\(6) & ((!\UART_PORTMAP|Add0~27COUT1_68\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UART_PORTMAP|cnt\(6),
	cin => \UART_PORTMAP|Add0~22\,
	cin0 => \UART_PORTMAP|Add0~27\,
	cin1 => \UART_PORTMAP|Add0~27COUT1_68\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UART_PORTMAP|Add0~30_combout\,
	cout0 => \UART_PORTMAP|Add0~32\,
	cout1 => \UART_PORTMAP|Add0~32COUT1_70\);

-- Location: LC_X6_Y1_N1
\UART_PORTMAP|cnt[6]\ : maxii_lcell
-- Equation(s):
-- \UART_PORTMAP|cnt\(6) = DFFEAS((\UART_PORTMAP|LessThan0~2_combout\ & (\UART_PORTMAP|state_uart.INIT~regout\ & (\UART_PORTMAP|Add0~30_combout\))), GLOBAL(\clk~combout\), VCC, , \UART_PORTMAP|cnt[8]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8080",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \UART_PORTMAP|LessThan0~2_combout\,
	datab => \UART_PORTMAP|state_uart.INIT~regout\,
	datac => \UART_PORTMAP|Add0~30_combout\,
	aclr => GND,
	ena => \UART_PORTMAP|cnt[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_PORTMAP|cnt\(6));

-- Location: LC_X5_Y1_N7
\UART_PORTMAP|Add0~35\ : maxii_lcell
-- Equation(s):
-- \UART_PORTMAP|Add0~35_combout\ = \UART_PORTMAP|cnt\(7) $ (((((!\UART_PORTMAP|Add0~22\ & \UART_PORTMAP|Add0~32\) # (\UART_PORTMAP|Add0~22\ & \UART_PORTMAP|Add0~32COUT1_70\)))))
-- \UART_PORTMAP|Add0~37\ = CARRY(((!\UART_PORTMAP|Add0~32\)) # (!\UART_PORTMAP|cnt\(7)))
-- \UART_PORTMAP|Add0~37COUT1_72\ = CARRY(((!\UART_PORTMAP|Add0~32COUT1_70\)) # (!\UART_PORTMAP|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UART_PORTMAP|cnt\(7),
	cin => \UART_PORTMAP|Add0~22\,
	cin0 => \UART_PORTMAP|Add0~32\,
	cin1 => \UART_PORTMAP|Add0~32COUT1_70\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UART_PORTMAP|Add0~35_combout\,
	cout0 => \UART_PORTMAP|Add0~37\,
	cout1 => \UART_PORTMAP|Add0~37COUT1_72\);

-- Location: LC_X6_Y1_N3
\UART_PORTMAP|cnt[7]\ : maxii_lcell
-- Equation(s):
-- \UART_PORTMAP|cnt\(7) = DFFEAS((\UART_PORTMAP|LessThan0~2_combout\ & (((\UART_PORTMAP|state_uart.INIT~regout\ & \UART_PORTMAP|Add0~35_combout\)))), GLOBAL(\clk~combout\), VCC, , \UART_PORTMAP|cnt[8]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \UART_PORTMAP|LessThan0~2_combout\,
	datac => \UART_PORTMAP|state_uart.INIT~regout\,
	datad => \UART_PORTMAP|Add0~35_combout\,
	aclr => GND,
	ena => \UART_PORTMAP|cnt[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_PORTMAP|cnt\(7));

-- Location: LC_X5_Y1_N8
\UART_PORTMAP|Add0~40\ : maxii_lcell
-- Equation(s):
-- \UART_PORTMAP|Add0~40_combout\ = \UART_PORTMAP|cnt\(8) $ ((((!(!\UART_PORTMAP|Add0~22\ & \UART_PORTMAP|Add0~37\) # (\UART_PORTMAP|Add0~22\ & \UART_PORTMAP|Add0~37COUT1_72\)))))
-- \UART_PORTMAP|Add0~42\ = CARRY((\UART_PORTMAP|cnt\(8) & ((!\UART_PORTMAP|Add0~37\))))
-- \UART_PORTMAP|Add0~42COUT1_74\ = CARRY((\UART_PORTMAP|cnt\(8) & ((!\UART_PORTMAP|Add0~37COUT1_72\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UART_PORTMAP|cnt\(8),
	cin => \UART_PORTMAP|Add0~22\,
	cin0 => \UART_PORTMAP|Add0~37\,
	cin1 => \UART_PORTMAP|Add0~37COUT1_72\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UART_PORTMAP|Add0~40_combout\,
	cout0 => \UART_PORTMAP|Add0~42\,
	cout1 => \UART_PORTMAP|Add0~42COUT1_74\);

-- Location: LC_X5_Y1_N9
\UART_PORTMAP|Add0~45\ : maxii_lcell
-- Equation(s):
-- \UART_PORTMAP|Add0~45_combout\ = ((((!\UART_PORTMAP|Add0~22\ & \UART_PORTMAP|Add0~42\) # (\UART_PORTMAP|Add0~22\ & \UART_PORTMAP|Add0~42COUT1_74\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin => \UART_PORTMAP|Add0~22\,
	cin0 => \UART_PORTMAP|Add0~42\,
	cin1 => \UART_PORTMAP|Add0~42COUT1_74\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UART_PORTMAP|Add0~45_combout\);

-- Location: LC_X6_Y1_N0
\UART_PORTMAP|LessThan0~0\ : maxii_lcell
-- Equation(s):
-- \UART_PORTMAP|LessThan0~0_combout\ = (!\UART_PORTMAP|Add0~0_combout\ & (!\UART_PORTMAP|Add0~10_combout\ & (!\UART_PORTMAP|Add0~5_combout\ & !\UART_PORTMAP|Add0~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UART_PORTMAP|Add0~0_combout\,
	datab => \UART_PORTMAP|Add0~10_combout\,
	datac => \UART_PORTMAP|Add0~5_combout\,
	datad => \UART_PORTMAP|Add0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UART_PORTMAP|LessThan0~0_combout\);

-- Location: LC_X7_Y1_N1
\UART_PORTMAP|LessThan0~1\ : maxii_lcell
-- Equation(s):
-- \UART_PORTMAP|LessThan0~1_combout\ = (!\UART_PORTMAP|Add0~30_combout\ & (((\UART_PORTMAP|LessThan0~0_combout\) # (!\UART_PORTMAP|Add0~25_combout\)) # (!\UART_PORTMAP|Add0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3313",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UART_PORTMAP|Add0~20_combout\,
	datab => \UART_PORTMAP|Add0~30_combout\,
	datac => \UART_PORTMAP|Add0~25_combout\,
	datad => \UART_PORTMAP|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UART_PORTMAP|LessThan0~1_combout\);

-- Location: LC_X7_Y1_N2
\UART_PORTMAP|LessThan0~2\ : maxii_lcell
-- Equation(s):
-- \UART_PORTMAP|LessThan0~2_combout\ = (!\UART_PORTMAP|Add0~45_combout\ & (((\UART_PORTMAP|LessThan0~1_combout\) # (!\UART_PORTMAP|Add0~35_combout\)) # (!\UART_PORTMAP|Add0~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3313",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UART_PORTMAP|Add0~40_combout\,
	datab => \UART_PORTMAP|Add0~45_combout\,
	datac => \UART_PORTMAP|Add0~35_combout\,
	datad => \UART_PORTMAP|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UART_PORTMAP|LessThan0~2_combout\);

-- Location: LC_X7_Y3_N5
\UART_PORTMAP|Selector16~3\ : maxii_lcell
-- Equation(s):
-- \UART_PORTMAP|Selector16~3_combout\ = (\UART_PORTMAP|state_uart.bit_start~regout\ & ((\UART_PORTMAP|LessThan0~2_combout\) # ((!\UART_PORTMAP|state_uart.INIT~regout\ & \ADC_PORTMAP|start_tx~regout\)))) # (!\UART_PORTMAP|state_uart.bit_start~regout\ & 
-- (!\UART_PORTMAP|state_uart.INIT~regout\ & ((\ADC_PORTMAP|start_tx~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b3a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UART_PORTMAP|state_uart.bit_start~regout\,
	datab => \UART_PORTMAP|state_uart.INIT~regout\,
	datac => \UART_PORTMAP|LessThan0~2_combout\,
	datad => \ADC_PORTMAP|start_tx~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UART_PORTMAP|Selector16~3_combout\);

-- Location: LC_X7_Y3_N6
\UART_PORTMAP|state_uart.bit_start\ : maxii_lcell
-- Equation(s):
-- \UART_PORTMAP|state_uart.bit_start~regout\ = DFFEAS((\UART_PORTMAP|state_uart.bit_stop~regout\ & ((\UART_PORTMAP|LessThan0~2_combout\ & ((\UART_PORTMAP|Selector16~3_combout\))) # (!\UART_PORTMAP|LessThan0~2_combout\ & (!\UART_PORTMAP|temp\(2))))) # 
-- (!\UART_PORTMAP|state_uart.bit_stop~regout\ & (((\UART_PORTMAP|Selector16~3_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f704",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \UART_PORTMAP|temp\(2),
	datab => \UART_PORTMAP|state_uart.bit_stop~regout\,
	datac => \UART_PORTMAP|LessThan0~2_combout\,
	datad => \UART_PORTMAP|Selector16~3_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_PORTMAP|state_uart.bit_start~regout\);

-- Location: LC_X7_Y1_N6
\UART_PORTMAP|index[2]~1\ : maxii_lcell
-- Equation(s):
-- \UART_PORTMAP|index[2]~1_combout\ = ((\UART_PORTMAP|LessThan0~2_combout\) # ((!\UART_PORTMAP|state_uart.bit_start~regout\ & !\UART_PORTMAP|state_uart.bit_stop~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff03",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \UART_PORTMAP|state_uart.bit_start~regout\,
	datac => \UART_PORTMAP|state_uart.bit_stop~regout\,
	datad => \UART_PORTMAP|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UART_PORTMAP|index[2]~1_combout\);

-- Location: LC_X7_Y1_N7
\UART_PORTMAP|index[2]~2\ : maxii_lcell
-- Equation(s):
-- \UART_PORTMAP|index[2]~2_combout\ = (\UART_PORTMAP|index[2]~1_combout\ & (((!\UART_PORTMAP|index\(3) & \UART_PORTMAP|LessThan0~2_combout\)) # (!\UART_PORTMAP|state_uart.bit_data~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7500",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UART_PORTMAP|state_uart.bit_data~regout\,
	datab => \UART_PORTMAP|index\(3),
	datac => \UART_PORTMAP|LessThan0~2_combout\,
	datad => \UART_PORTMAP|index[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UART_PORTMAP|index[2]~2_combout\);

-- Location: LC_X7_Y1_N9
\UART_PORTMAP|index[0]\ : maxii_lcell
-- Equation(s):
-- \UART_PORTMAP|index\(0) = DFFEAS((\UART_PORTMAP|state_uart.bit_data~regout\ & (((!\UART_PORTMAP|index\(3) & !\UART_PORTMAP|index\(0))))), GLOBAL(\clk~combout\), VCC, , !\UART_PORTMAP|index[2]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \UART_PORTMAP|state_uart.bit_data~regout\,
	datac => \UART_PORTMAP|index\(3),
	datad => \UART_PORTMAP|index\(0),
	aclr => GND,
	ena => \UART_PORTMAP|ALT_INV_index[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_PORTMAP|index\(0));

-- Location: LC_X7_Y1_N0
\UART_PORTMAP|index[1]\ : maxii_lcell
-- Equation(s):
-- \UART_PORTMAP|index\(1) = DFFEAS((\UART_PORTMAP|state_uart.bit_data~regout\ & (!\UART_PORTMAP|index\(3) & (\UART_PORTMAP|index\(1) $ (\UART_PORTMAP|index\(0))))), GLOBAL(\clk~combout\), VCC, , !\UART_PORTMAP|index[2]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0208",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \UART_PORTMAP|state_uart.bit_data~regout\,
	datab => \UART_PORTMAP|index\(1),
	datac => \UART_PORTMAP|index\(3),
	datad => \UART_PORTMAP|index\(0),
	aclr => GND,
	ena => \UART_PORTMAP|ALT_INV_index[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_PORTMAP|index\(1));

-- Location: LC_X4_Y1_N3
\UART_PORTMAP|Add1~0\ : maxii_lcell
-- Equation(s):
-- \UART_PORTMAP|Add1~0_combout\ = (((\UART_PORTMAP|index\(0) & \UART_PORTMAP|index\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \UART_PORTMAP|index\(0),
	datad => \UART_PORTMAP|index\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UART_PORTMAP|Add1~0_combout\);

-- Location: LC_X7_Y1_N4
\UART_PORTMAP|index[2]\ : maxii_lcell
-- Equation(s):
-- \UART_PORTMAP|index\(2) = DFFEAS((\UART_PORTMAP|state_uart.bit_data~regout\ & (!\UART_PORTMAP|index\(3) & (\UART_PORTMAP|Add1~0_combout\ $ (\UART_PORTMAP|index\(2))))), GLOBAL(\clk~combout\), VCC, , !\UART_PORTMAP|index[2]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0220",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \UART_PORTMAP|state_uart.bit_data~regout\,
	datab => \UART_PORTMAP|index\(3),
	datac => \UART_PORTMAP|Add1~0_combout\,
	datad => \UART_PORTMAP|index\(2),
	aclr => GND,
	ena => \UART_PORTMAP|ALT_INV_index[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_PORTMAP|index\(2));

-- Location: LC_X4_Y1_N7
\UART_PORTMAP|index[3]~0\ : maxii_lcell
-- Equation(s):
-- \UART_PORTMAP|index[3]~0_combout\ = (\UART_PORTMAP|index\(2) & (((\UART_PORTMAP|state_uart.bit_data~regout\ & !\UART_PORTMAP|index\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UART_PORTMAP|index\(2),
	datac => \UART_PORTMAP|state_uart.bit_data~regout\,
	datad => \UART_PORTMAP|index\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UART_PORTMAP|index[3]~0_combout\);

-- Location: LC_X7_Y1_N8
\UART_PORTMAP|index[3]\ : maxii_lcell
-- Equation(s):
-- \UART_PORTMAP|index\(3) = DFFEAS((\UART_PORTMAP|index[2]~2_combout\ & (((\UART_PORTMAP|index\(3))))) # (!\UART_PORTMAP|index[2]~2_combout\ & (\UART_PORTMAP|Add1~0_combout\ & ((\UART_PORTMAP|index[3]~0_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cac0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \UART_PORTMAP|Add1~0_combout\,
	datab => \UART_PORTMAP|index\(3),
	datac => \UART_PORTMAP|index[2]~2_combout\,
	datad => \UART_PORTMAP|index[3]~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_PORTMAP|index\(3));

-- Location: LC_X7_Y1_N5
\UART_PORTMAP|state_uart.bit_data\ : maxii_lcell
-- Equation(s):
-- \UART_PORTMAP|state_uart.bit_data~regout\ = DFFEAS((\UART_PORTMAP|state_uart.bit_data~regout\ & (((\UART_PORTMAP|state_uart.bit_start~regout\ & !\UART_PORTMAP|LessThan0~2_combout\)) # (!\UART_PORTMAP|index\(3)))) # 
-- (!\UART_PORTMAP|state_uart.bit_data~regout\ & (((\UART_PORTMAP|state_uart.bit_start~regout\ & !\UART_PORTMAP|LessThan0~2_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "22f2",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \UART_PORTMAP|state_uart.bit_data~regout\,
	datab => \UART_PORTMAP|index\(3),
	datac => \UART_PORTMAP|state_uart.bit_start~regout\,
	datad => \UART_PORTMAP|LessThan0~2_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_PORTMAP|state_uart.bit_data~regout\);

-- Location: LC_X3_Y4_N8
\UART_PORTMAP|Selector14~2\ : maxii_lcell
-- Equation(s):
-- \UART_PORTMAP|Selector14~2_combout\ = (\UART_PORTMAP|state_uart.bit_data~regout\ & (\UART_PORTMAP|index\(3) & ((\UART_PORTMAP|TX~regout\)))) # (!\UART_PORTMAP|state_uart.bit_data~regout\ & (((!\UART_PORTMAP|state_uart.bit_start~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8d05",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UART_PORTMAP|state_uart.bit_data~regout\,
	datab => \UART_PORTMAP|index\(3),
	datac => \UART_PORTMAP|state_uart.bit_start~regout\,
	datad => \UART_PORTMAP|TX~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UART_PORTMAP|Selector14~2_combout\);

-- Location: LC_X4_Y1_N0
\UART_PORTMAP|Selector14~0\ : maxii_lcell
-- Equation(s):
-- \UART_PORTMAP|Selector14~0_combout\ = (\UART_PORTMAP|temp\(2) & (\UART_PORTMAP|index[3]~0_combout\ & (\UART_PORTMAP|index\(0) & !\UART_PORTMAP|index\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UART_PORTMAP|temp\(2),
	datab => \UART_PORTMAP|index[3]~0_combout\,
	datac => \UART_PORTMAP|index\(0),
	datad => \UART_PORTMAP|index\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UART_PORTMAP|Selector14~0_combout\);

-- Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_adc[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_data_adc(5),
	combout => \data_adc~combout\(5));

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_adc[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_data_adc(7),
	combout => \data_adc~combout\(7));

-- Location: LC_X5_Y4_N7
\ADC_PORTMAP|temp_data[7]\ : maxii_lcell
-- Equation(s):
-- \CONVERSION_DATA|bcd_temp~11\ = (\ADC_PORTMAP|temp_data\(6) & (!\ADC_PORTMAP|temp_data\(4) & (\ADC_PORTMAP|temp_data\(5) $ (!B1_temp_data[7])))) # (!\ADC_PORTMAP|temp_data\(6) & (!\ADC_PORTMAP|temp_data\(5) & (B1_temp_data[7] & 
-- \ADC_PORTMAP|temp_data\(4))))
-- \ADC_PORTMAP|temp_data\(7) = DFFEAS(\CONVERSION_DATA|bcd_temp~11\, GLOBAL(\CLK_CHIA|temp~regout\), VCC, , \ADC_PORTMAP|process_0~0_combout\, \data_adc~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1082",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK_CHIA|temp~regout\,
	dataa => \ADC_PORTMAP|temp_data\(6),
	datab => \ADC_PORTMAP|temp_data\(5),
	datac => \data_adc~combout\(7),
	datad => \ADC_PORTMAP|temp_data\(4),
	aclr => GND,
	sload => VCC,
	ena => \ADC_PORTMAP|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CONVERSION_DATA|bcd_temp~11\,
	regout => \ADC_PORTMAP|temp_data\(7));

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_adc[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_data_adc(4),
	combout => \data_adc~combout\(4));

-- Location: LC_X5_Y4_N0
\ADC_PORTMAP|temp_data[4]\ : maxii_lcell
-- Equation(s):
-- \CONVERSION_DATA|bcd_temp~0\ = (B1_temp_data[4] & (\ADC_PORTMAP|temp_data\(6) $ (((\ADC_PORTMAP|temp_data\(5)) # (!\ADC_PORTMAP|temp_data\(7)))))) # (!B1_temp_data[4] & ((\ADC_PORTMAP|temp_data\(5) & (!\ADC_PORTMAP|temp_data\(7) & 
-- \ADC_PORTMAP|temp_data\(6))) # (!\ADC_PORTMAP|temp_data\(5) & (\ADC_PORTMAP|temp_data\(7) & !\ADC_PORTMAP|temp_data\(6)))))
-- \ADC_PORTMAP|temp_data\(4) = DFFEAS(\CONVERSION_DATA|bcd_temp~0\, GLOBAL(\CLK_CHIA|temp~regout\), VCC, , \ADC_PORTMAP|process_0~0_combout\, \data_adc~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "42b4",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK_CHIA|temp~regout\,
	dataa => \ADC_PORTMAP|temp_data\(5),
	datab => \ADC_PORTMAP|temp_data\(7),
	datac => \data_adc~combout\(4),
	datad => \ADC_PORTMAP|temp_data\(6),
	aclr => GND,
	sload => VCC,
	ena => \ADC_PORTMAP|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CONVERSION_DATA|bcd_temp~0\,
	regout => \ADC_PORTMAP|temp_data\(4));

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_adc[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_data_adc(6),
	combout => \data_adc~combout\(6));

-- Location: LC_X5_Y4_N3
\ADC_PORTMAP|temp_data[6]\ : maxii_lcell
-- Equation(s):
-- \CONVERSION_DATA|bcd_temp~1\ = (\ADC_PORTMAP|temp_data\(5) & (!\ADC_PORTMAP|temp_data\(7) & ((\ADC_PORTMAP|temp_data\(4)) # (!B1_temp_data[6])))) # (!\ADC_PORTMAP|temp_data\(5) & (\ADC_PORTMAP|temp_data\(7) & ((B1_temp_data[6]) # 
-- (!\ADC_PORTMAP|temp_data\(4)))))
-- \ADC_PORTMAP|temp_data\(6) = DFFEAS(\CONVERSION_DATA|bcd_temp~1\, GLOBAL(\CLK_CHIA|temp~regout\), VCC, , \ADC_PORTMAP|process_0~0_combout\, \data_adc~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "518a",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK_CHIA|temp~regout\,
	dataa => \ADC_PORTMAP|temp_data\(5),
	datab => \ADC_PORTMAP|temp_data\(4),
	datac => \data_adc~combout\(6),
	datad => \ADC_PORTMAP|temp_data\(7),
	aclr => GND,
	sload => VCC,
	ena => \ADC_PORTMAP|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CONVERSION_DATA|bcd_temp~1\,
	regout => \ADC_PORTMAP|temp_data\(6));

-- Location: LC_X5_Y4_N5
\ADC_PORTMAP|temp_data[5]\ : maxii_lcell
-- Equation(s):
-- \CONVERSION_DATA|bcd_temp~6\ = (((B1_temp_data[5]) # (\ADC_PORTMAP|temp_data\(6))))
-- \ADC_PORTMAP|temp_data\(5) = DFFEAS(\CONVERSION_DATA|bcd_temp~6\, GLOBAL(\CLK_CHIA|temp~regout\), VCC, , \ADC_PORTMAP|process_0~0_combout\, \data_adc~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK_CHIA|temp~regout\,
	datac => \data_adc~combout\(5),
	datad => \ADC_PORTMAP|temp_data\(6),
	aclr => GND,
	sload => VCC,
	ena => \ADC_PORTMAP|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CONVERSION_DATA|bcd_temp~6\,
	regout => \ADC_PORTMAP|temp_data\(5));

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_adc[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_data_adc(3),
	combout => \data_adc~combout\(3));

-- Location: LC_X5_Y4_N6
\ADC_PORTMAP|temp_data[3]\ : maxii_lcell
-- Equation(s):
-- \CONVERSION_DATA|bcd_temp~2\ = (\CONVERSION_DATA|bcd_temp~11\ & (\CONVERSION_DATA|bcd_temp~0\ $ ((!B1_temp_data[3])))) # (!\CONVERSION_DATA|bcd_temp~11\ & (\CONVERSION_DATA|bcd_temp~0\ & ((B1_temp_data[3]) # (!\CONVERSION_DATA|bcd_temp~1\))))
-- \ADC_PORTMAP|temp_data\(3) = DFFEAS(\CONVERSION_DATA|bcd_temp~2\, GLOBAL(\CLK_CHIA|temp~regout\), VCC, , \ADC_PORTMAP|process_0~0_combout\, \data_adc~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c2c6",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK_CHIA|temp~regout\,
	dataa => \CONVERSION_DATA|bcd_temp~11\,
	datab => \CONVERSION_DATA|bcd_temp~0\,
	datac => \data_adc~combout\(3),
	datad => \CONVERSION_DATA|bcd_temp~1\,
	aclr => GND,
	sload => VCC,
	ena => \ADC_PORTMAP|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CONVERSION_DATA|bcd_temp~2\,
	regout => \ADC_PORTMAP|temp_data\(3));

-- Location: LC_X5_Y4_N8
\CONVERSION_DATA|bcd_temp~3\ : maxii_lcell
-- Equation(s):
-- \CONVERSION_DATA|bcd_temp~3_combout\ = (\CONVERSION_DATA|bcd_temp~1\ & (!\CONVERSION_DATA|bcd_temp~0\ & (!\ADC_PORTMAP|temp_data\(3)))) # (!\CONVERSION_DATA|bcd_temp~1\ & (\CONVERSION_DATA|bcd_temp~11\ & ((\CONVERSION_DATA|bcd_temp~0\) # 
-- (\ADC_PORTMAP|temp_data\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5602",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CONVERSION_DATA|bcd_temp~1\,
	datab => \CONVERSION_DATA|bcd_temp~0\,
	datac => \ADC_PORTMAP|temp_data\(3),
	datad => \CONVERSION_DATA|bcd_temp~11\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CONVERSION_DATA|bcd_temp~3_combout\);

-- Location: LC_X5_Y4_N1
\CONVERSION_DATA|bcd_temp~4\ : maxii_lcell
-- Equation(s):
-- \CONVERSION_DATA|bcd_temp~4_combout\ = (\ADC_PORTMAP|temp_data\(3) & (!\CONVERSION_DATA|bcd_temp~11\ & ((!\CONVERSION_DATA|bcd_temp~1\)))) # (!\ADC_PORTMAP|temp_data\(3) & ((\CONVERSION_DATA|bcd_temp~11\) # ((\CONVERSION_DATA|bcd_temp~0\ & 
-- \CONVERSION_DATA|bcd_temp~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5466",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_PORTMAP|temp_data\(3),
	datab => \CONVERSION_DATA|bcd_temp~11\,
	datac => \CONVERSION_DATA|bcd_temp~0\,
	datad => \CONVERSION_DATA|bcd_temp~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CONVERSION_DATA|bcd_temp~4_combout\);

-- Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_adc[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_data_adc(2),
	combout => \data_adc~combout\(2));

-- Location: LC_X5_Y4_N2
\ADC_PORTMAP|temp_data[2]\ : maxii_lcell
-- Equation(s):
-- \CONVERSION_DATA|bcd_temp~5\ = \CONVERSION_DATA|bcd_temp~3_combout\ $ ((((!\CONVERSION_DATA|bcd_temp~4_combout\ & !B1_temp_data[2])) # (!\CONVERSION_DATA|bcd_temp~2\)))
-- \ADC_PORTMAP|temp_data\(2) = DFFEAS(\CONVERSION_DATA|bcd_temp~5\, GLOBAL(\CLK_CHIA|temp~regout\), VCC, , \ADC_PORTMAP|process_0~0_combout\, \data_adc~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a955",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK_CHIA|temp~regout\,
	dataa => \CONVERSION_DATA|bcd_temp~3_combout\,
	datab => \CONVERSION_DATA|bcd_temp~4_combout\,
	datac => \data_adc~combout\(2),
	datad => \CONVERSION_DATA|bcd_temp~2\,
	aclr => GND,
	sload => VCC,
	ena => \ADC_PORTMAP|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CONVERSION_DATA|bcd_temp~5\,
	regout => \ADC_PORTMAP|temp_data\(2));

-- Location: LC_X4_Y4_N0
\CONVERSION_DATA|bcd_temp~9\ : maxii_lcell
-- Equation(s):
-- \CONVERSION_DATA|bcd_temp~9_combout\ = (\CONVERSION_DATA|bcd_temp~2\ & (!\ADC_PORTMAP|temp_data\(2) & ((!\CONVERSION_DATA|bcd_temp~4_combout\)))) # (!\CONVERSION_DATA|bcd_temp~2\ & (\CONVERSION_DATA|bcd_temp~3_combout\ & ((\ADC_PORTMAP|temp_data\(2)) # 
-- (\CONVERSION_DATA|bcd_temp~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c58",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_PORTMAP|temp_data\(2),
	datab => \CONVERSION_DATA|bcd_temp~3_combout\,
	datac => \CONVERSION_DATA|bcd_temp~2\,
	datad => \CONVERSION_DATA|bcd_temp~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CONVERSION_DATA|bcd_temp~9_combout\);

-- Location: LC_X4_Y4_N2
\CONVERSION_DATA|bcd_temp~10\ : maxii_lcell
-- Equation(s):
-- \CONVERSION_DATA|bcd_temp~10_combout\ = (\ADC_PORTMAP|temp_data\(2) & (!\CONVERSION_DATA|bcd_temp~3_combout\ & (!\CONVERSION_DATA|bcd_temp~2\))) # (!\ADC_PORTMAP|temp_data\(2) & ((\CONVERSION_DATA|bcd_temp~3_combout\) # ((\CONVERSION_DATA|bcd_temp~2\ & 
-- \CONVERSION_DATA|bcd_temp~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5646",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_PORTMAP|temp_data\(2),
	datab => \CONVERSION_DATA|bcd_temp~3_combout\,
	datac => \CONVERSION_DATA|bcd_temp~2\,
	datad => \CONVERSION_DATA|bcd_temp~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CONVERSION_DATA|bcd_temp~10_combout\);

-- Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_adc[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_data_adc(1),
	combout => \data_adc~combout\(1));

-- Location: LC_X4_Y4_N8
\CONVERSION_DATA|bcd_temp~8\ : maxii_lcell
-- Equation(s):
-- \CONVERSION_DATA|bcd_temp~8_combout\ = (\ADC_PORTMAP|temp_data\(2) & (((\CONVERSION_DATA|bcd_temp~4_combout\)))) # (!\ADC_PORTMAP|temp_data\(2) & ((\CONVERSION_DATA|bcd_temp~3_combout\ & ((!\CONVERSION_DATA|bcd_temp~4_combout\))) # 
-- (!\CONVERSION_DATA|bcd_temp~3_combout\ & (!\CONVERSION_DATA|bcd_temp~2\ & \CONVERSION_DATA|bcd_temp~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ab44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_PORTMAP|temp_data\(2),
	datab => \CONVERSION_DATA|bcd_temp~3_combout\,
	datac => \CONVERSION_DATA|bcd_temp~2\,
	datad => \CONVERSION_DATA|bcd_temp~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CONVERSION_DATA|bcd_temp~8_combout\);

-- Location: LC_X3_Y4_N2
\ADC_PORTMAP|temp_data[1]\ : maxii_lcell
-- Equation(s):
-- \CONVERSION_DATA|unit[2]~1\ = (\CONVERSION_DATA|bcd_temp~9_combout\ & (\CONVERSION_DATA|bcd_temp~10_combout\ $ ((!B1_temp_data[1])))) # (!\CONVERSION_DATA|bcd_temp~9_combout\ & (\CONVERSION_DATA|bcd_temp~10_combout\ & ((B1_temp_data[1]) # 
-- (!\CONVERSION_DATA|bcd_temp~8_combout\))))
-- \ADC_PORTMAP|temp_data\(1) = DFFEAS(\CONVERSION_DATA|unit[2]~1\, GLOBAL(\CLK_CHIA|temp~regout\), VCC, , \ADC_PORTMAP|process_0~0_combout\, \data_adc~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c2c6",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK_CHIA|temp~regout\,
	dataa => \CONVERSION_DATA|bcd_temp~9_combout\,
	datab => \CONVERSION_DATA|bcd_temp~10_combout\,
	datac => \data_adc~combout\(1),
	datad => \CONVERSION_DATA|bcd_temp~8_combout\,
	aclr => GND,
	sload => VCC,
	ena => \ADC_PORTMAP|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CONVERSION_DATA|unit[2]~1\,
	regout => \ADC_PORTMAP|temp_data\(1));

-- Location: LC_X3_Y4_N1
\CONVERSION_DATA|unit[1]~0\ : maxii_lcell
-- Equation(s):
-- \CONVERSION_DATA|unit[1]~0_combout\ = (\ADC_PORTMAP|temp_data\(1) & (((!\CONVERSION_DATA|bcd_temp~9_combout\ & !\CONVERSION_DATA|bcd_temp~8_combout\)))) # (!\ADC_PORTMAP|temp_data\(1) & ((\CONVERSION_DATA|bcd_temp~9_combout\) # 
-- ((\CONVERSION_DATA|bcd_temp~10_combout\ & \CONVERSION_DATA|bcd_temp~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "545a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_PORTMAP|temp_data\(1),
	datab => \CONVERSION_DATA|bcd_temp~10_combout\,
	datac => \CONVERSION_DATA|bcd_temp~9_combout\,
	datad => \CONVERSION_DATA|bcd_temp~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CONVERSION_DATA|unit[1]~0_combout\);

-- Location: LC_X3_Y4_N6
\CONVERSION_DATA|unit[3]~2\ : maxii_lcell
-- Equation(s):
-- \CONVERSION_DATA|unit[3]~2_combout\ = (\CONVERSION_DATA|bcd_temp~8_combout\ & (((!\ADC_PORTMAP|temp_data\(1) & !\CONVERSION_DATA|bcd_temp~10_combout\)))) # (!\CONVERSION_DATA|bcd_temp~8_combout\ & (\CONVERSION_DATA|bcd_temp~9_combout\ & 
-- ((\ADC_PORTMAP|temp_data\(1)) # (\CONVERSION_DATA|bcd_temp~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "03a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CONVERSION_DATA|bcd_temp~9_combout\,
	datab => \ADC_PORTMAP|temp_data\(1),
	datac => \CONVERSION_DATA|bcd_temp~10_combout\,
	datad => \CONVERSION_DATA|bcd_temp~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CONVERSION_DATA|unit[3]~2_combout\);

-- Location: PIN_35,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_adc[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_data_adc(0),
	combout => \data_adc~combout\(0));

-- Location: LC_X3_Y4_N3
\ADC_PORTMAP|temp_data[0]\ : maxii_lcell
-- Equation(s):
-- \UART_PORTMAP|Mux1~0\ = (\UART_PORTMAP|index\(1) & ((\UART_PORTMAP|index\(0)) # ((\CONVERSION_DATA|unit[2]~1\)))) # (!\UART_PORTMAP|index\(1) & (!\UART_PORTMAP|index\(0) & (B1_temp_data[0])))
-- \ADC_PORTMAP|temp_data\(0) = DFFEAS(\UART_PORTMAP|Mux1~0\, GLOBAL(\CLK_CHIA|temp~regout\), VCC, , \ADC_PORTMAP|process_0~0_combout\, \data_adc~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK_CHIA|temp~regout\,
	dataa => \UART_PORTMAP|index\(1),
	datab => \UART_PORTMAP|index\(0),
	datac => \data_adc~combout\(0),
	datad => \CONVERSION_DATA|unit[2]~1\,
	aclr => GND,
	sload => VCC,
	ena => \ADC_PORTMAP|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UART_PORTMAP|Mux1~0\,
	regout => \ADC_PORTMAP|temp_data\(0));

-- Location: LC_X3_Y4_N4
\UART_PORTMAP|Mux1~1\ : maxii_lcell
-- Equation(s):
-- \UART_PORTMAP|Mux1~1_combout\ = (\UART_PORTMAP|index\(0) & ((\UART_PORTMAP|Mux1~0\ & ((\CONVERSION_DATA|unit[3]~2_combout\))) # (!\UART_PORTMAP|Mux1~0\ & (\CONVERSION_DATA|unit[1]~0_combout\)))) # (!\UART_PORTMAP|index\(0) & (((\UART_PORTMAP|Mux1~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UART_PORTMAP|index\(0),
	datab => \CONVERSION_DATA|unit[1]~0_combout\,
	datac => \CONVERSION_DATA|unit[3]~2_combout\,
	datad => \UART_PORTMAP|Mux1~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UART_PORTMAP|Mux1~1_combout\);

-- Location: LC_X2_Y4_N0
\UART_PORTMAP|TX~0\ : maxii_lcell
-- Equation(s):
-- \UART_PORTMAP|TX~0_combout\ = (\UART_PORTMAP|index\(2) & (!\UART_PORTMAP|temp\(0))) # (!\UART_PORTMAP|index\(2) & (\UART_PORTMAP|temp\(0) & ((\UART_PORTMAP|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6622",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UART_PORTMAP|index\(2),
	datab => \UART_PORTMAP|temp\(0),
	datad => \UART_PORTMAP|Mux1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UART_PORTMAP|TX~0_combout\);

-- Location: LC_X5_Y4_N4
\CONVERSION_DATA|LessThan2~0\ : maxii_lcell
-- Equation(s):
-- \CONVERSION_DATA|LessThan2~0_combout\ = ((\CONVERSION_DATA|bcd_temp~1\ & ((\ADC_PORTMAP|temp_data\(3)) # (\CONVERSION_DATA|bcd_temp~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_PORTMAP|temp_data\(3),
	datac => \CONVERSION_DATA|bcd_temp~0\,
	datad => \CONVERSION_DATA|bcd_temp~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CONVERSION_DATA|LessThan2~0_combout\);

-- Location: LC_X6_Y4_N8
\CONVERSION_DATA|bcd_temp~7\ : maxii_lcell
-- Equation(s):
-- \CONVERSION_DATA|bcd_temp~7_combout\ = (\CONVERSION_DATA|bcd_temp~6\ & (\ADC_PORTMAP|temp_data\(7) & (\CONVERSION_DATA|bcd_temp~11\ $ (!\CONVERSION_DATA|LessThan2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8008",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CONVERSION_DATA|bcd_temp~6\,
	datab => \ADC_PORTMAP|temp_data\(7),
	datac => \CONVERSION_DATA|bcd_temp~11\,
	datad => \CONVERSION_DATA|LessThan2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CONVERSION_DATA|bcd_temp~7_combout\);

-- Location: LC_X6_Y4_N5
\CONVERSION_DATA|tens[3]~12\ : maxii_lcell
-- Equation(s):
-- \CONVERSION_DATA|tens[3]~12_combout\ = (\ADC_PORTMAP|temp_data\(6) & ((\ADC_PORTMAP|temp_data\(4) & ((\ADC_PORTMAP|temp_data\(5)) # (!\ADC_PORTMAP|temp_data\(7)))) # (!\ADC_PORTMAP|temp_data\(4) & (\ADC_PORTMAP|temp_data\(5) & 
-- !\ADC_PORTMAP|temp_data\(7))))) # (!\ADC_PORTMAP|temp_data\(6) & (((!\ADC_PORTMAP|temp_data\(5) & \ADC_PORTMAP|temp_data\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "83c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_PORTMAP|temp_data\(4),
	datab => \ADC_PORTMAP|temp_data\(6),
	datac => \ADC_PORTMAP|temp_data\(5),
	datad => \ADC_PORTMAP|temp_data\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CONVERSION_DATA|tens[3]~12_combout\);

-- Location: LC_X4_Y1_N1
\CONVERSION_DATA|LessThan4~0\ : maxii_lcell
-- Equation(s):
-- \CONVERSION_DATA|LessThan4~0_combout\ = (((\ADC_PORTMAP|temp_data\(6) & \ADC_PORTMAP|temp_data\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \ADC_PORTMAP|temp_data\(6),
	datad => \ADC_PORTMAP|temp_data\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CONVERSION_DATA|LessThan4~0_combout\);

-- Location: LC_X4_Y1_N2
\CONVERSION_DATA|LessThan4~1\ : maxii_lcell
-- Equation(s):
-- \CONVERSION_DATA|LessThan4~1_combout\ = (\CONVERSION_DATA|LessThan4~0_combout\ & ((\ADC_PORTMAP|temp_data\(4)) # ((\ADC_PORTMAP|temp_data\(5)) # (\ADC_PORTMAP|temp_data\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_PORTMAP|temp_data\(4),
	datab => \ADC_PORTMAP|temp_data\(5),
	datac => \ADC_PORTMAP|temp_data\(3),
	datad => \CONVERSION_DATA|LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CONVERSION_DATA|LessThan4~1_combout\);

-- Location: LC_X5_Y4_N9
\CONVERSION_DATA|LessThan6~0\ : maxii_lcell
-- Equation(s):
-- \CONVERSION_DATA|LessThan6~0_combout\ = (\CONVERSION_DATA|bcd_temp~11\ $ (\CONVERSION_DATA|LessThan2~0_combout\ $ (\CONVERSION_DATA|LessThan4~1_combout\))) # (!\CONVERSION_DATA|bcd_temp~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b77b",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CONVERSION_DATA|bcd_temp~11\,
	datab => \CONVERSION_DATA|bcd_temp~5\,
	datac => \CONVERSION_DATA|LessThan2~0_combout\,
	datad => \CONVERSION_DATA|LessThan4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CONVERSION_DATA|LessThan6~0_combout\);

-- Location: LC_X2_Y4_N1
\CONVERSION_DATA|tens[3]~15\ : maxii_lcell
-- Equation(s):
-- \CONVERSION_DATA|tens[3]~15_combout\ = (\CONVERSION_DATA|tens[3]~12_combout\ & (!\CONVERSION_DATA|LessThan6~0_combout\ & ((!\CONVERSION_DATA|bcd_temp~7_combout\) # (!\CONVERSION_DATA|bcd_temp~6\)))) # (!\CONVERSION_DATA|tens[3]~12_combout\ & 
-- (((\CONVERSION_DATA|bcd_temp~7_combout\ & \CONVERSION_DATA|LessThan6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c70",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CONVERSION_DATA|bcd_temp~6\,
	datab => \CONVERSION_DATA|bcd_temp~7_combout\,
	datac => \CONVERSION_DATA|tens[3]~12_combout\,
	datad => \CONVERSION_DATA|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CONVERSION_DATA|tens[3]~15_combout\);

-- Location: LC_X6_Y4_N6
\CONVERSION_DATA|tens[2]~8\ : maxii_lcell
-- Equation(s):
-- \CONVERSION_DATA|tens[2]~8_combout\ = (\ADC_PORTMAP|temp_data\(4) & ((\ADC_PORTMAP|temp_data\(7) & (\ADC_PORTMAP|temp_data\(5) $ (!\ADC_PORTMAP|temp_data\(6)))) # (!\ADC_PORTMAP|temp_data\(7) & (\ADC_PORTMAP|temp_data\(5) & !\ADC_PORTMAP|temp_data\(6))))) 
-- # (!\ADC_PORTMAP|temp_data\(4) & ((\ADC_PORTMAP|temp_data\(7) & (\ADC_PORTMAP|temp_data\(5) & !\ADC_PORTMAP|temp_data\(6))) # (!\ADC_PORTMAP|temp_data\(7) & (!\ADC_PORTMAP|temp_data\(5) & \ADC_PORTMAP|temp_data\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8168",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_PORTMAP|temp_data\(4),
	datab => \ADC_PORTMAP|temp_data\(7),
	datac => \ADC_PORTMAP|temp_data\(5),
	datad => \ADC_PORTMAP|temp_data\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CONVERSION_DATA|tens[2]~8_combout\);

-- Location: LC_X6_Y4_N1
\CONVERSION_DATA|tens[2]~9\ : maxii_lcell
-- Equation(s):
-- \CONVERSION_DATA|tens[2]~9_combout\ = (\ADC_PORTMAP|temp_data\(7) & (\ADC_PORTMAP|temp_data\(6) $ (((!\ADC_PORTMAP|temp_data\(5)) # (!\ADC_PORTMAP|temp_data\(4)))))) # (!\ADC_PORTMAP|temp_data\(7) & ((\ADC_PORTMAP|temp_data\(5) & 
-- ((!\ADC_PORTMAP|temp_data\(6)))) # (!\ADC_PORTMAP|temp_data\(5) & (!\ADC_PORTMAP|temp_data\(4) & \ADC_PORTMAP|temp_data\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "817c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_PORTMAP|temp_data\(4),
	datab => \ADC_PORTMAP|temp_data\(7),
	datac => \ADC_PORTMAP|temp_data\(5),
	datad => \ADC_PORTMAP|temp_data\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CONVERSION_DATA|tens[2]~9_combout\);

-- Location: LC_X6_Y4_N7
\CONVERSION_DATA|tens[2]~6\ : maxii_lcell
-- Equation(s):
-- \CONVERSION_DATA|tens[2]~6_combout\ = (\ADC_PORTMAP|temp_data\(6) & ((\ADC_PORTMAP|temp_data\(4) & (\ADC_PORTMAP|temp_data\(5) & \ADC_PORTMAP|temp_data\(7))) # (!\ADC_PORTMAP|temp_data\(4) & (!\ADC_PORTMAP|temp_data\(5) & !\ADC_PORTMAP|temp_data\(7))))) # 
-- (!\ADC_PORTMAP|temp_data\(6) & (\ADC_PORTMAP|temp_data\(5) $ (((\ADC_PORTMAP|temp_data\(4) & \ADC_PORTMAP|temp_data\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9234",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_PORTMAP|temp_data\(4),
	datab => \ADC_PORTMAP|temp_data\(6),
	datac => \ADC_PORTMAP|temp_data\(5),
	datad => \ADC_PORTMAP|temp_data\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CONVERSION_DATA|tens[2]~6_combout\);

-- Location: LC_X6_Y4_N2
\CONVERSION_DATA|tens[2]~5\ : maxii_lcell
-- Equation(s):
-- \CONVERSION_DATA|tens[2]~5_combout\ = (\ADC_PORTMAP|temp_data\(4) & ((\ADC_PORTMAP|temp_data\(6) & (\ADC_PORTMAP|temp_data\(5) & \ADC_PORTMAP|temp_data\(7))) # (!\ADC_PORTMAP|temp_data\(6) & ((\ADC_PORTMAP|temp_data\(5)) # (\ADC_PORTMAP|temp_data\(7)))))) 
-- # (!\ADC_PORTMAP|temp_data\(4) & ((\ADC_PORTMAP|temp_data\(6) & (!\ADC_PORTMAP|temp_data\(5) & !\ADC_PORTMAP|temp_data\(7))) # (!\ADC_PORTMAP|temp_data\(6) & (\ADC_PORTMAP|temp_data\(5) & \ADC_PORTMAP|temp_data\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b224",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_PORTMAP|temp_data\(4),
	datab => \ADC_PORTMAP|temp_data\(6),
	datac => \ADC_PORTMAP|temp_data\(5),
	datad => \ADC_PORTMAP|temp_data\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CONVERSION_DATA|tens[2]~5_combout\);

-- Location: LC_X6_Y4_N3
\CONVERSION_DATA|tens[2]~10\ : maxii_lcell
-- Equation(s):
-- \CONVERSION_DATA|tens[2]~10_combout\ = (\ADC_PORTMAP|temp_data\(2) & (\ADC_PORTMAP|temp_data\(3))) # (!\ADC_PORTMAP|temp_data\(2) & ((\ADC_PORTMAP|temp_data\(3) & (\CONVERSION_DATA|tens[2]~6_combout\)) # (!\ADC_PORTMAP|temp_data\(3) & 
-- ((\CONVERSION_DATA|tens[2]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_PORTMAP|temp_data\(2),
	datab => \ADC_PORTMAP|temp_data\(3),
	datac => \CONVERSION_DATA|tens[2]~6_combout\,
	datad => \CONVERSION_DATA|tens[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CONVERSION_DATA|tens[2]~10_combout\);

-- Location: LC_X6_Y4_N4
\CONVERSION_DATA|tens[2]~11\ : maxii_lcell
-- Equation(s):
-- \CONVERSION_DATA|tens[2]~11_combout\ = (\ADC_PORTMAP|temp_data\(2) & ((\CONVERSION_DATA|tens[2]~10_combout\ & ((\CONVERSION_DATA|tens[2]~9_combout\))) # (!\CONVERSION_DATA|tens[2]~10_combout\ & (\CONVERSION_DATA|tens[2]~8_combout\)))) # 
-- (!\ADC_PORTMAP|temp_data\(2) & (((\CONVERSION_DATA|tens[2]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CONVERSION_DATA|tens[2]~8_combout\,
	datab => \CONVERSION_DATA|tens[2]~9_combout\,
	datac => \ADC_PORTMAP|temp_data\(2),
	datad => \CONVERSION_DATA|tens[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CONVERSION_DATA|tens[2]~11_combout\);

-- Location: LC_X3_Y4_N9
\CONVERSION_DATA|tens[0]~14\ : maxii_lcell
-- Equation(s):
-- \CONVERSION_DATA|tens[0]~14_combout\ = \CONVERSION_DATA|bcd_temp~9_combout\ $ ((((!\ADC_PORTMAP|temp_data\(1) & !\CONVERSION_DATA|bcd_temp~10_combout\)) # (!\CONVERSION_DATA|bcd_temp~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a955",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CONVERSION_DATA|bcd_temp~9_combout\,
	datab => \ADC_PORTMAP|temp_data\(1),
	datac => \CONVERSION_DATA|bcd_temp~10_combout\,
	datad => \CONVERSION_DATA|bcd_temp~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CONVERSION_DATA|tens[0]~14_combout\);

-- Location: LC_X6_Y4_N9
\CONVERSION_DATA|tens[1]~16\ : maxii_lcell
-- Equation(s):
-- \CONVERSION_DATA|tens[1]~16_combout\ = (\CONVERSION_DATA|bcd_temp~7_combout\ & (((\ADC_PORTMAP|temp_data\(6)) # (\ADC_PORTMAP|temp_data\(5))) # (!\CONVERSION_DATA|tens[3]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fd00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CONVERSION_DATA|tens[3]~12_combout\,
	datab => \ADC_PORTMAP|temp_data\(6),
	datac => \ADC_PORTMAP|temp_data\(5),
	datad => \CONVERSION_DATA|bcd_temp~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CONVERSION_DATA|tens[1]~16_combout\);

-- Location: LC_X2_Y4_N2
\CONVERSION_DATA|tens[1]~13\ : maxii_lcell
-- Equation(s):
-- \CONVERSION_DATA|tens[1]~13_combout\ = \CONVERSION_DATA|bcd_temp~5\ $ (((\CONVERSION_DATA|tens[3]~12_combout\ & (!\CONVERSION_DATA|tens[1]~16_combout\ & \CONVERSION_DATA|LessThan6~0_combout\)) # (!\CONVERSION_DATA|tens[3]~12_combout\ & 
-- (\CONVERSION_DATA|tens[1]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "969c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CONVERSION_DATA|tens[3]~12_combout\,
	datab => \CONVERSION_DATA|bcd_temp~5\,
	datac => \CONVERSION_DATA|tens[1]~16_combout\,
	datad => \CONVERSION_DATA|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CONVERSION_DATA|tens[1]~13_combout\);

-- Location: LC_X2_Y4_N3
\UART_PORTMAP|Mux0~0\ : maxii_lcell
-- Equation(s):
-- \UART_PORTMAP|Mux0~0_combout\ = (\UART_PORTMAP|index\(0) & ((\UART_PORTMAP|index\(1)) # ((!\CONVERSION_DATA|tens[1]~13_combout\)))) # (!\UART_PORTMAP|index\(0) & (!\UART_PORTMAP|index\(1) & (!\CONVERSION_DATA|tens[0]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "89ab",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UART_PORTMAP|index\(0),
	datab => \UART_PORTMAP|index\(1),
	datac => \CONVERSION_DATA|tens[0]~14_combout\,
	datad => \CONVERSION_DATA|tens[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UART_PORTMAP|Mux0~0_combout\);

-- Location: LC_X2_Y4_N4
\UART_PORTMAP|Mux0~1\ : maxii_lcell
-- Equation(s):
-- \UART_PORTMAP|Mux0~1_combout\ = (\UART_PORTMAP|index\(1) & ((\UART_PORTMAP|Mux0~0_combout\ & (\CONVERSION_DATA|tens[3]~15_combout\)) # (!\UART_PORTMAP|Mux0~0_combout\ & ((\CONVERSION_DATA|tens[2]~11_combout\))))) # (!\UART_PORTMAP|index\(1) & 
-- (((\UART_PORTMAP|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UART_PORTMAP|index\(1),
	datab => \CONVERSION_DATA|tens[3]~15_combout\,
	datac => \CONVERSION_DATA|tens[2]~11_combout\,
	datad => \UART_PORTMAP|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UART_PORTMAP|Mux0~1_combout\);

-- Location: LC_X2_Y4_N5
\UART_PORTMAP|TX~1\ : maxii_lcell
-- Equation(s):
-- \UART_PORTMAP|TX~1_combout\ = (\UART_PORTMAP|temp\(1) & (\UART_PORTMAP|temp\(0))) # (!\UART_PORTMAP|temp\(1) & ((\UART_PORTMAP|temp\(0) & (\UART_PORTMAP|TX~0_combout\)) # (!\UART_PORTMAP|temp\(0) & (!\UART_PORTMAP|TX~0_combout\ & 
-- \UART_PORTMAP|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UART_PORTMAP|temp\(1),
	datab => \UART_PORTMAP|temp\(0),
	datac => \UART_PORTMAP|TX~0_combout\,
	datad => \UART_PORTMAP|Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UART_PORTMAP|TX~1_combout\);

-- Location: LC_X2_Y4_N6
\UART_PORTMAP|TX~2\ : maxii_lcell
-- Equation(s):
-- \UART_PORTMAP|TX~2_combout\ = (\UART_PORTMAP|index\(1) & ((\UART_PORTMAP|index\(2) & (\UART_PORTMAP|index\(0))) # (!\UART_PORTMAP|index\(2) & ((\UART_PORTMAP|TX~1_combout\))))) # (!\UART_PORTMAP|index\(1) & (\UART_PORTMAP|index\(2) & 
-- ((\UART_PORTMAP|TX~1_combout\) # (!\UART_PORTMAP|index\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bc90",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UART_PORTMAP|index\(0),
	datab => \UART_PORTMAP|index\(1),
	datac => \UART_PORTMAP|index\(2),
	datad => \UART_PORTMAP|TX~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UART_PORTMAP|TX~2_combout\);

-- Location: LC_X2_Y4_N7
\UART_PORTMAP|TX~3\ : maxii_lcell
-- Equation(s):
-- \UART_PORTMAP|TX~3_combout\ = (\UART_PORTMAP|temp\(1) & (((!\UART_PORTMAP|TX~2_combout\)))) # (!\UART_PORTMAP|temp\(1) & (((\UART_PORTMAP|TX~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "50fa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UART_PORTMAP|temp\(1),
	datac => \UART_PORTMAP|TX~1_combout\,
	datad => \UART_PORTMAP|TX~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UART_PORTMAP|TX~3_combout\);

-- Location: LC_X2_Y4_N8
\UART_PORTMAP|Selector14~1\ : maxii_lcell
-- Equation(s):
-- \UART_PORTMAP|Selector14~1_combout\ = (!\UART_PORTMAP|temp\(2) & (!\UART_PORTMAP|index\(3) & (\UART_PORTMAP|state_uart.bit_data~regout\ & \UART_PORTMAP|TX~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UART_PORTMAP|temp\(2),
	datab => \UART_PORTMAP|index\(3),
	datac => \UART_PORTMAP|state_uart.bit_data~regout\,
	datad => \UART_PORTMAP|TX~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UART_PORTMAP|Selector14~1_combout\);

-- Location: LC_X2_Y4_N9
\UART_PORTMAP|TX\ : maxii_lcell
-- Equation(s):
-- \UART_PORTMAP|TX~regout\ = DFFEAS(((\UART_PORTMAP|Selector14~2_combout\) # ((\UART_PORTMAP|Selector14~0_combout\) # (\UART_PORTMAP|Selector14~1_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \UART_PORTMAP|Selector14~2_combout\,
	datac => \UART_PORTMAP|Selector14~0_combout\,
	datad => \UART_PORTMAP|Selector14~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_PORTMAP|TX~regout\);

-- Location: LC_X6_Y3_N7
\ADC_PORTMAP|cs\ : maxii_lcell
-- Equation(s):
-- \ADC_PORTMAP|cs~regout\ = DFFEAS((\ADC_PORTMAP|Equal0~3_combout\ & (!\ADC_PORTMAP|Add0~0_combout\ & ((\ADC_PORTMAP|cs~regout\) # (\ADC_PORTMAP|Add0~90_combout\)))) # (!\ADC_PORTMAP|Equal0~3_combout\ & (((\ADC_PORTMAP|cs~regout\)))), 
-- GLOBAL(\CLK_CHIA|temp~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5c4c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK_CHIA|temp~regout\,
	dataa => \ADC_PORTMAP|Add0~0_combout\,
	datab => \ADC_PORTMAP|cs~regout\,
	datac => \ADC_PORTMAP|Equal0~3_combout\,
	datad => \ADC_PORTMAP|Add0~90_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ADC_PORTMAP|cs~regout\);

-- Location: LC_X7_Y3_N7
\ADC_PORTMAP|rd~0\ : maxii_lcell
-- Equation(s):
-- \ADC_PORTMAP|rd~0_combout\ = ((\ADC_PORTMAP|Equal0~3_combout\ & (\ADC_PORTMAP|Add0~90_combout\ $ (\ADC_PORTMAP|Add0~0_combout\)))) # (!\ADC_PORTMAP|rd~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "60ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_PORTMAP|Add0~90_combout\,
	datab => \ADC_PORTMAP|Add0~0_combout\,
	datac => \ADC_PORTMAP|Equal0~3_combout\,
	datad => \ADC_PORTMAP|rd~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ADC_PORTMAP|rd~0_combout\);

-- Location: LC_X7_Y3_N4
\ADC_PORTMAP|rd\ : maxii_lcell
-- Equation(s):
-- \ADC_PORTMAP|rd~regout\ = DFFEAS((\ADC_PORTMAP|process_0~0_combout\ & (((!\ADC_PORTMAP|LessThan1~4_combout\)) # (!\ADC_PORTMAP|Add0~85_combout\))) # (!\ADC_PORTMAP|process_0~0_combout\ & (!\ADC_PORTMAP|rd~0_combout\ & ((!\ADC_PORTMAP|LessThan1~4_combout\) 
-- # (!\ADC_PORTMAP|Add0~85_combout\)))), GLOBAL(\CLK_CHIA|temp~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "23af",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK_CHIA|temp~regout\,
	dataa => \ADC_PORTMAP|process_0~0_combout\,
	datab => \ADC_PORTMAP|Add0~85_combout\,
	datac => \ADC_PORTMAP|rd~0_combout\,
	datad => \ADC_PORTMAP|LessThan1~4_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ADC_PORTMAP|rd~regout\);

-- Location: LC_X4_Y2_N4
\LCD_PORTMAP|clk_count[0]\ : maxii_lcell
-- Equation(s):
-- \LCD_PORTMAP|clk_count\(0) = DFFEAS((!\LCD_PORTMAP|clk_count\(0)), GLOBAL(\clk~combout\), VCC, , , , , \LCD_PORTMAP|Selector0~1_combout\, )
-- \LCD_PORTMAP|clk_count[0]~9\ = CARRY((\LCD_PORTMAP|clk_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \LCD_PORTMAP|clk_count\(0),
	aclr => GND,
	sclr => \LCD_PORTMAP|Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_PORTMAP|clk_count\(0),
	cout => \LCD_PORTMAP|clk_count[0]~9\);

-- Location: LC_X4_Y2_N5
\LCD_PORTMAP|clk_count[1]\ : maxii_lcell
-- Equation(s):
-- \LCD_PORTMAP|clk_count\(1) = DFFEAS(\LCD_PORTMAP|clk_count\(1) $ ((((\LCD_PORTMAP|clk_count[0]~9\)))), GLOBAL(\clk~combout\), VCC, , , , , \LCD_PORTMAP|Selector0~1_combout\, )
-- \LCD_PORTMAP|clk_count[1]~29\ = CARRY(((!\LCD_PORTMAP|clk_count[0]~9\)) # (!\LCD_PORTMAP|clk_count\(1)))
-- \LCD_PORTMAP|clk_count[1]~29COUT1_62\ = CARRY(((!\LCD_PORTMAP|clk_count[0]~9\)) # (!\LCD_PORTMAP|clk_count\(1)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \LCD_PORTMAP|clk_count\(1),
	aclr => GND,
	sclr => \LCD_PORTMAP|Selector0~1_combout\,
	cin => \LCD_PORTMAP|clk_count[0]~9\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_PORTMAP|clk_count\(1),
	cout0 => \LCD_PORTMAP|clk_count[1]~29\,
	cout1 => \LCD_PORTMAP|clk_count[1]~29COUT1_62\);

-- Location: LC_X4_Y2_N6
\LCD_PORTMAP|clk_count[2]\ : maxii_lcell
-- Equation(s):
-- \LCD_PORTMAP|clk_count\(2) = DFFEAS(\LCD_PORTMAP|clk_count\(2) $ ((((!(!\LCD_PORTMAP|clk_count[0]~9\ & \LCD_PORTMAP|clk_count[1]~29\) # (\LCD_PORTMAP|clk_count[0]~9\ & \LCD_PORTMAP|clk_count[1]~29COUT1_62\))))), GLOBAL(\clk~combout\), VCC, , , , , 
-- \LCD_PORTMAP|Selector0~1_combout\, )
-- \LCD_PORTMAP|clk_count[2]~41\ = CARRY((\LCD_PORTMAP|clk_count\(2) & ((!\LCD_PORTMAP|clk_count[1]~29\))))
-- \LCD_PORTMAP|clk_count[2]~41COUT1_64\ = CARRY((\LCD_PORTMAP|clk_count\(2) & ((!\LCD_PORTMAP|clk_count[1]~29COUT1_62\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \LCD_PORTMAP|clk_count\(2),
	aclr => GND,
	sclr => \LCD_PORTMAP|Selector0~1_combout\,
	cin => \LCD_PORTMAP|clk_count[0]~9\,
	cin0 => \LCD_PORTMAP|clk_count[1]~29\,
	cin1 => \LCD_PORTMAP|clk_count[1]~29COUT1_62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_PORTMAP|clk_count\(2),
	cout0 => \LCD_PORTMAP|clk_count[2]~41\,
	cout1 => \LCD_PORTMAP|clk_count[2]~41COUT1_64\);

-- Location: LC_X4_Y2_N7
\LCD_PORTMAP|clk_count[3]\ : maxii_lcell
-- Equation(s):
-- \LCD_PORTMAP|clk_count\(3) = DFFEAS((\LCD_PORTMAP|clk_count\(3) $ (((!\LCD_PORTMAP|clk_count[0]~9\ & \LCD_PORTMAP|clk_count[2]~41\) # (\LCD_PORTMAP|clk_count[0]~9\ & \LCD_PORTMAP|clk_count[2]~41COUT1_64\)))), GLOBAL(\clk~combout\), VCC, , , , , 
-- \LCD_PORTMAP|Selector0~1_combout\, )
-- \LCD_PORTMAP|clk_count[3]~37\ = CARRY(((!\LCD_PORTMAP|clk_count[2]~41\) # (!\LCD_PORTMAP|clk_count\(3))))
-- \LCD_PORTMAP|clk_count[3]~37COUT1_66\ = CARRY(((!\LCD_PORTMAP|clk_count[2]~41COUT1_64\) # (!\LCD_PORTMAP|clk_count\(3))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \LCD_PORTMAP|clk_count\(3),
	aclr => GND,
	sclr => \LCD_PORTMAP|Selector0~1_combout\,
	cin => \LCD_PORTMAP|clk_count[0]~9\,
	cin0 => \LCD_PORTMAP|clk_count[2]~41\,
	cin1 => \LCD_PORTMAP|clk_count[2]~41COUT1_64\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_PORTMAP|clk_count\(3),
	cout0 => \LCD_PORTMAP|clk_count[3]~37\,
	cout1 => \LCD_PORTMAP|clk_count[3]~37COUT1_66\);

-- Location: LC_X4_Y2_N8
\LCD_PORTMAP|clk_count[4]\ : maxii_lcell
-- Equation(s):
-- \LCD_PORTMAP|clk_count\(4) = DFFEAS(\LCD_PORTMAP|clk_count\(4) $ ((((!(!\LCD_PORTMAP|clk_count[0]~9\ & \LCD_PORTMAP|clk_count[3]~37\) # (\LCD_PORTMAP|clk_count[0]~9\ & \LCD_PORTMAP|clk_count[3]~37COUT1_66\))))), GLOBAL(\clk~combout\), VCC, , , , , 
-- \LCD_PORTMAP|Selector0~1_combout\, )
-- \LCD_PORTMAP|clk_count[4]~43\ = CARRY((\LCD_PORTMAP|clk_count\(4) & ((!\LCD_PORTMAP|clk_count[3]~37\))))
-- \LCD_PORTMAP|clk_count[4]~43COUT1_68\ = CARRY((\LCD_PORTMAP|clk_count\(4) & ((!\LCD_PORTMAP|clk_count[3]~37COUT1_66\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \LCD_PORTMAP|clk_count\(4),
	aclr => GND,
	sclr => \LCD_PORTMAP|Selector0~1_combout\,
	cin => \LCD_PORTMAP|clk_count[0]~9\,
	cin0 => \LCD_PORTMAP|clk_count[3]~37\,
	cin1 => \LCD_PORTMAP|clk_count[3]~37COUT1_66\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_PORTMAP|clk_count\(4),
	cout0 => \LCD_PORTMAP|clk_count[4]~43\,
	cout1 => \LCD_PORTMAP|clk_count[4]~43COUT1_68\);

-- Location: LC_X4_Y2_N9
\LCD_PORTMAP|clk_count[5]\ : maxii_lcell
-- Equation(s):
-- \LCD_PORTMAP|clk_count\(5) = DFFEAS((\LCD_PORTMAP|clk_count\(5) $ (((!\LCD_PORTMAP|clk_count[0]~9\ & \LCD_PORTMAP|clk_count[4]~43\) # (\LCD_PORTMAP|clk_count[0]~9\ & \LCD_PORTMAP|clk_count[4]~43COUT1_68\)))), GLOBAL(\clk~combout\), VCC, , , , , 
-- \LCD_PORTMAP|Selector0~1_combout\, )
-- \LCD_PORTMAP|clk_count[5]~31\ = CARRY(((!\LCD_PORTMAP|clk_count[4]~43COUT1_68\) # (!\LCD_PORTMAP|clk_count\(5))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \LCD_PORTMAP|clk_count\(5),
	aclr => GND,
	sclr => \LCD_PORTMAP|Selector0~1_combout\,
	cin => \LCD_PORTMAP|clk_count[0]~9\,
	cin0 => \LCD_PORTMAP|clk_count[4]~43\,
	cin1 => \LCD_PORTMAP|clk_count[4]~43COUT1_68\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_PORTMAP|clk_count\(5),
	cout => \LCD_PORTMAP|clk_count[5]~31\);

-- Location: LC_X5_Y2_N0
\LCD_PORTMAP|clk_count[6]\ : maxii_lcell
-- Equation(s):
-- \LCD_PORTMAP|clk_count\(6) = DFFEAS((\LCD_PORTMAP|clk_count\(6) $ ((!\LCD_PORTMAP|clk_count[5]~31\))), GLOBAL(\clk~combout\), VCC, , , , , \LCD_PORTMAP|Selector0~1_combout\, )
-- \LCD_PORTMAP|clk_count[6]~21\ = CARRY(((\LCD_PORTMAP|clk_count\(6) & !\LCD_PORTMAP|clk_count[5]~31\)))
-- \LCD_PORTMAP|clk_count[6]~21COUT1_70\ = CARRY(((\LCD_PORTMAP|clk_count\(6) & !\LCD_PORTMAP|clk_count[5]~31\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \LCD_PORTMAP|clk_count\(6),
	aclr => GND,
	sclr => \LCD_PORTMAP|Selector0~1_combout\,
	cin => \LCD_PORTMAP|clk_count[5]~31\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_PORTMAP|clk_count\(6),
	cout0 => \LCD_PORTMAP|clk_count[6]~21\,
	cout1 => \LCD_PORTMAP|clk_count[6]~21COUT1_70\);

-- Location: LC_X5_Y2_N1
\LCD_PORTMAP|clk_count[7]\ : maxii_lcell
-- Equation(s):
-- \LCD_PORTMAP|clk_count\(7) = DFFEAS((\LCD_PORTMAP|clk_count\(7) $ (((!\LCD_PORTMAP|clk_count[5]~31\ & \LCD_PORTMAP|clk_count[6]~21\) # (\LCD_PORTMAP|clk_count[5]~31\ & \LCD_PORTMAP|clk_count[6]~21COUT1_70\)))), GLOBAL(\clk~combout\), VCC, , , , , 
-- \LCD_PORTMAP|Selector0~1_combout\, )
-- \LCD_PORTMAP|clk_count[7]~39\ = CARRY(((!\LCD_PORTMAP|clk_count[6]~21\) # (!\LCD_PORTMAP|clk_count\(7))))
-- \LCD_PORTMAP|clk_count[7]~39COUT1_72\ = CARRY(((!\LCD_PORTMAP|clk_count[6]~21COUT1_70\) # (!\LCD_PORTMAP|clk_count\(7))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \LCD_PORTMAP|clk_count\(7),
	aclr => GND,
	sclr => \LCD_PORTMAP|Selector0~1_combout\,
	cin => \LCD_PORTMAP|clk_count[5]~31\,
	cin0 => \LCD_PORTMAP|clk_count[6]~21\,
	cin1 => \LCD_PORTMAP|clk_count[6]~21COUT1_70\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_PORTMAP|clk_count\(7),
	cout0 => \LCD_PORTMAP|clk_count[7]~39\,
	cout1 => \LCD_PORTMAP|clk_count[7]~39COUT1_72\);

-- Location: LC_X5_Y2_N2
\LCD_PORTMAP|clk_count[8]\ : maxii_lcell
-- Equation(s):
-- \LCD_PORTMAP|clk_count\(8) = DFFEAS((\LCD_PORTMAP|clk_count\(8) $ ((!(!\LCD_PORTMAP|clk_count[5]~31\ & \LCD_PORTMAP|clk_count[7]~39\) # (\LCD_PORTMAP|clk_count[5]~31\ & \LCD_PORTMAP|clk_count[7]~39COUT1_72\)))), GLOBAL(\clk~combout\), VCC, , , , , 
-- \LCD_PORTMAP|Selector0~1_combout\, )
-- \LCD_PORTMAP|clk_count[8]~23\ = CARRY(((\LCD_PORTMAP|clk_count\(8) & !\LCD_PORTMAP|clk_count[7]~39\)))
-- \LCD_PORTMAP|clk_count[8]~23COUT1_74\ = CARRY(((\LCD_PORTMAP|clk_count\(8) & !\LCD_PORTMAP|clk_count[7]~39COUT1_72\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \LCD_PORTMAP|clk_count\(8),
	aclr => GND,
	sclr => \LCD_PORTMAP|Selector0~1_combout\,
	cin => \LCD_PORTMAP|clk_count[5]~31\,
	cin0 => \LCD_PORTMAP|clk_count[7]~39\,
	cin1 => \LCD_PORTMAP|clk_count[7]~39COUT1_72\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_PORTMAP|clk_count\(8),
	cout0 => \LCD_PORTMAP|clk_count[8]~23\,
	cout1 => \LCD_PORTMAP|clk_count[8]~23COUT1_74\);

-- Location: LC_X5_Y2_N3
\LCD_PORTMAP|clk_count[9]\ : maxii_lcell
-- Equation(s):
-- \LCD_PORTMAP|clk_count\(9) = DFFEAS(\LCD_PORTMAP|clk_count\(9) $ (((((!\LCD_PORTMAP|clk_count[5]~31\ & \LCD_PORTMAP|clk_count[8]~23\) # (\LCD_PORTMAP|clk_count[5]~31\ & \LCD_PORTMAP|clk_count[8]~23COUT1_74\))))), GLOBAL(\clk~combout\), VCC, , , , , 
-- \LCD_PORTMAP|Selector0~1_combout\, )
-- \LCD_PORTMAP|clk_count[9]~25\ = CARRY(((!\LCD_PORTMAP|clk_count[8]~23\)) # (!\LCD_PORTMAP|clk_count\(9)))
-- \LCD_PORTMAP|clk_count[9]~25COUT1_76\ = CARRY(((!\LCD_PORTMAP|clk_count[8]~23COUT1_74\)) # (!\LCD_PORTMAP|clk_count\(9)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \LCD_PORTMAP|clk_count\(9),
	aclr => GND,
	sclr => \LCD_PORTMAP|Selector0~1_combout\,
	cin => \LCD_PORTMAP|clk_count[5]~31\,
	cin0 => \LCD_PORTMAP|clk_count[8]~23\,
	cin1 => \LCD_PORTMAP|clk_count[8]~23COUT1_74\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_PORTMAP|clk_count\(9),
	cout0 => \LCD_PORTMAP|clk_count[9]~25\,
	cout1 => \LCD_PORTMAP|clk_count[9]~25COUT1_76\);

-- Location: LC_X5_Y2_N4
\LCD_PORTMAP|clk_count[10]\ : maxii_lcell
-- Equation(s):
-- \LCD_PORTMAP|clk_count\(10) = DFFEAS(\LCD_PORTMAP|clk_count\(10) $ ((((!(!\LCD_PORTMAP|clk_count[5]~31\ & \LCD_PORTMAP|clk_count[9]~25\) # (\LCD_PORTMAP|clk_count[5]~31\ & \LCD_PORTMAP|clk_count[9]~25COUT1_76\))))), GLOBAL(\clk~combout\), VCC, , , , , 
-- \LCD_PORTMAP|Selector0~1_combout\, )
-- \LCD_PORTMAP|clk_count[10]~27\ = CARRY((\LCD_PORTMAP|clk_count\(10) & ((!\LCD_PORTMAP|clk_count[9]~25COUT1_76\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \LCD_PORTMAP|clk_count\(10),
	aclr => GND,
	sclr => \LCD_PORTMAP|Selector0~1_combout\,
	cin => \LCD_PORTMAP|clk_count[5]~31\,
	cin0 => \LCD_PORTMAP|clk_count[9]~25\,
	cin1 => \LCD_PORTMAP|clk_count[9]~25COUT1_76\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_PORTMAP|clk_count\(10),
	cout => \LCD_PORTMAP|clk_count[10]~27\);

-- Location: LC_X5_Y2_N5
\LCD_PORTMAP|clk_count[11]\ : maxii_lcell
-- Equation(s):
-- \LCD_PORTMAP|clk_count\(11) = DFFEAS(\LCD_PORTMAP|clk_count\(11) $ ((((\LCD_PORTMAP|clk_count[10]~27\)))), GLOBAL(\clk~combout\), VCC, , , , , \LCD_PORTMAP|Selector0~1_combout\, )
-- \LCD_PORTMAP|clk_count[11]~11\ = CARRY(((!\LCD_PORTMAP|clk_count[10]~27\)) # (!\LCD_PORTMAP|clk_count\(11)))
-- \LCD_PORTMAP|clk_count[11]~11COUT1_78\ = CARRY(((!\LCD_PORTMAP|clk_count[10]~27\)) # (!\LCD_PORTMAP|clk_count\(11)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \LCD_PORTMAP|clk_count\(11),
	aclr => GND,
	sclr => \LCD_PORTMAP|Selector0~1_combout\,
	cin => \LCD_PORTMAP|clk_count[10]~27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_PORTMAP|clk_count\(11),
	cout0 => \LCD_PORTMAP|clk_count[11]~11\,
	cout1 => \LCD_PORTMAP|clk_count[11]~11COUT1_78\);

-- Location: LC_X5_Y2_N6
\LCD_PORTMAP|clk_count[12]\ : maxii_lcell
-- Equation(s):
-- \LCD_PORTMAP|clk_count\(12) = DFFEAS(\LCD_PORTMAP|clk_count\(12) $ ((((!(!\LCD_PORTMAP|clk_count[10]~27\ & \LCD_PORTMAP|clk_count[11]~11\) # (\LCD_PORTMAP|clk_count[10]~27\ & \LCD_PORTMAP|clk_count[11]~11COUT1_78\))))), GLOBAL(\clk~combout\), VCC, , , , , 
-- \LCD_PORTMAP|Selector0~1_combout\, )
-- \LCD_PORTMAP|clk_count[12]~13\ = CARRY((\LCD_PORTMAP|clk_count\(12) & ((!\LCD_PORTMAP|clk_count[11]~11\))))
-- \LCD_PORTMAP|clk_count[12]~13COUT1_80\ = CARRY((\LCD_PORTMAP|clk_count\(12) & ((!\LCD_PORTMAP|clk_count[11]~11COUT1_78\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \LCD_PORTMAP|clk_count\(12),
	aclr => GND,
	sclr => \LCD_PORTMAP|Selector0~1_combout\,
	cin => \LCD_PORTMAP|clk_count[10]~27\,
	cin0 => \LCD_PORTMAP|clk_count[11]~11\,
	cin1 => \LCD_PORTMAP|clk_count[11]~11COUT1_78\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_PORTMAP|clk_count\(12),
	cout0 => \LCD_PORTMAP|clk_count[12]~13\,
	cout1 => \LCD_PORTMAP|clk_count[12]~13COUT1_80\);

-- Location: LC_X5_Y2_N7
\LCD_PORTMAP|clk_count[13]\ : maxii_lcell
-- Equation(s):
-- \LCD_PORTMAP|clk_count\(13) = DFFEAS((\LCD_PORTMAP|clk_count\(13) $ (((!\LCD_PORTMAP|clk_count[10]~27\ & \LCD_PORTMAP|clk_count[12]~13\) # (\LCD_PORTMAP|clk_count[10]~27\ & \LCD_PORTMAP|clk_count[12]~13COUT1_80\)))), GLOBAL(\clk~combout\), VCC, , , , , 
-- \LCD_PORTMAP|Selector0~1_combout\, )
-- \LCD_PORTMAP|clk_count[13]~1\ = CARRY(((!\LCD_PORTMAP|clk_count[12]~13\) # (!\LCD_PORTMAP|clk_count\(13))))
-- \LCD_PORTMAP|clk_count[13]~1COUT1_82\ = CARRY(((!\LCD_PORTMAP|clk_count[12]~13COUT1_80\) # (!\LCD_PORTMAP|clk_count\(13))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \LCD_PORTMAP|clk_count\(13),
	aclr => GND,
	sclr => \LCD_PORTMAP|Selector0~1_combout\,
	cin => \LCD_PORTMAP|clk_count[10]~27\,
	cin0 => \LCD_PORTMAP|clk_count[12]~13\,
	cin1 => \LCD_PORTMAP|clk_count[12]~13COUT1_80\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_PORTMAP|clk_count\(13),
	cout0 => \LCD_PORTMAP|clk_count[13]~1\,
	cout1 => \LCD_PORTMAP|clk_count[13]~1COUT1_82\);

-- Location: LC_X5_Y2_N8
\LCD_PORTMAP|clk_count[14]\ : maxii_lcell
-- Equation(s):
-- \LCD_PORTMAP|clk_count\(14) = DFFEAS(\LCD_PORTMAP|clk_count\(14) $ ((((!(!\LCD_PORTMAP|clk_count[10]~27\ & \LCD_PORTMAP|clk_count[13]~1\) # (\LCD_PORTMAP|clk_count[10]~27\ & \LCD_PORTMAP|clk_count[13]~1COUT1_82\))))), GLOBAL(\clk~combout\), VCC, , , , , 
-- \LCD_PORTMAP|Selector0~1_combout\, )
-- \LCD_PORTMAP|clk_count[14]~3\ = CARRY((\LCD_PORTMAP|clk_count\(14) & ((!\LCD_PORTMAP|clk_count[13]~1\))))
-- \LCD_PORTMAP|clk_count[14]~3COUT1_84\ = CARRY((\LCD_PORTMAP|clk_count\(14) & ((!\LCD_PORTMAP|clk_count[13]~1COUT1_82\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \LCD_PORTMAP|clk_count\(14),
	aclr => GND,
	sclr => \LCD_PORTMAP|Selector0~1_combout\,
	cin => \LCD_PORTMAP|clk_count[10]~27\,
	cin0 => \LCD_PORTMAP|clk_count[13]~1\,
	cin1 => \LCD_PORTMAP|clk_count[13]~1COUT1_82\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_PORTMAP|clk_count\(14),
	cout0 => \LCD_PORTMAP|clk_count[14]~3\,
	cout1 => \LCD_PORTMAP|clk_count[14]~3COUT1_84\);

-- Location: LC_X5_Y2_N9
\LCD_PORTMAP|clk_count[15]\ : maxii_lcell
-- Equation(s):
-- \LCD_PORTMAP|clk_count\(15) = DFFEAS((\LCD_PORTMAP|clk_count\(15) $ (((!\LCD_PORTMAP|clk_count[10]~27\ & \LCD_PORTMAP|clk_count[14]~3\) # (\LCD_PORTMAP|clk_count[10]~27\ & \LCD_PORTMAP|clk_count[14]~3COUT1_84\)))), GLOBAL(\clk~combout\), VCC, , , , , 
-- \LCD_PORTMAP|Selector0~1_combout\, )
-- \LCD_PORTMAP|clk_count[15]~33\ = CARRY(((!\LCD_PORTMAP|clk_count[14]~3COUT1_84\) # (!\LCD_PORTMAP|clk_count\(15))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \LCD_PORTMAP|clk_count\(15),
	aclr => GND,
	sclr => \LCD_PORTMAP|Selector0~1_combout\,
	cin => \LCD_PORTMAP|clk_count[10]~27\,
	cin0 => \LCD_PORTMAP|clk_count[14]~3\,
	cin1 => \LCD_PORTMAP|clk_count[14]~3COUT1_84\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_PORTMAP|clk_count\(15),
	cout => \LCD_PORTMAP|clk_count[15]~33\);

-- Location: LC_X6_Y2_N0
\LCD_PORTMAP|clk_count[16]\ : maxii_lcell
-- Equation(s):
-- \LCD_PORTMAP|clk_count\(16) = DFFEAS((\LCD_PORTMAP|clk_count\(16) $ ((!\LCD_PORTMAP|clk_count[15]~33\))), GLOBAL(\clk~combout\), VCC, , , , , \LCD_PORTMAP|Selector0~1_combout\, )
-- \LCD_PORTMAP|clk_count[16]~15\ = CARRY(((\LCD_PORTMAP|clk_count\(16) & !\LCD_PORTMAP|clk_count[15]~33\)))
-- \LCD_PORTMAP|clk_count[16]~15COUT1_86\ = CARRY(((\LCD_PORTMAP|clk_count\(16) & !\LCD_PORTMAP|clk_count[15]~33\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \LCD_PORTMAP|clk_count\(16),
	aclr => GND,
	sclr => \LCD_PORTMAP|Selector0~1_combout\,
	cin => \LCD_PORTMAP|clk_count[15]~33\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_PORTMAP|clk_count\(16),
	cout0 => \LCD_PORTMAP|clk_count[16]~15\,
	cout1 => \LCD_PORTMAP|clk_count[16]~15COUT1_86\);

-- Location: LC_X6_Y2_N1
\LCD_PORTMAP|clk_count[17]\ : maxii_lcell
-- Equation(s):
-- \LCD_PORTMAP|clk_count\(17) = DFFEAS((\LCD_PORTMAP|clk_count\(17) $ (((!\LCD_PORTMAP|clk_count[15]~33\ & \LCD_PORTMAP|clk_count[16]~15\) # (\LCD_PORTMAP|clk_count[15]~33\ & \LCD_PORTMAP|clk_count[16]~15COUT1_86\)))), GLOBAL(\clk~combout\), VCC, , , , , 
-- \LCD_PORTMAP|Selector0~1_combout\, )
-- \LCD_PORTMAP|clk_count[17]~35\ = CARRY(((!\LCD_PORTMAP|clk_count[16]~15\) # (!\LCD_PORTMAP|clk_count\(17))))
-- \LCD_PORTMAP|clk_count[17]~35COUT1_88\ = CARRY(((!\LCD_PORTMAP|clk_count[16]~15COUT1_86\) # (!\LCD_PORTMAP|clk_count\(17))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \LCD_PORTMAP|clk_count\(17),
	aclr => GND,
	sclr => \LCD_PORTMAP|Selector0~1_combout\,
	cin => \LCD_PORTMAP|clk_count[15]~33\,
	cin0 => \LCD_PORTMAP|clk_count[16]~15\,
	cin1 => \LCD_PORTMAP|clk_count[16]~15COUT1_86\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_PORTMAP|clk_count\(17),
	cout0 => \LCD_PORTMAP|clk_count[17]~35\,
	cout1 => \LCD_PORTMAP|clk_count[17]~35COUT1_88\);

-- Location: LC_X6_Y2_N2
\LCD_PORTMAP|clk_count[18]\ : maxii_lcell
-- Equation(s):
-- \LCD_PORTMAP|clk_count\(18) = DFFEAS((\LCD_PORTMAP|clk_count\(18) $ ((!(!\LCD_PORTMAP|clk_count[15]~33\ & \LCD_PORTMAP|clk_count[17]~35\) # (\LCD_PORTMAP|clk_count[15]~33\ & \LCD_PORTMAP|clk_count[17]~35COUT1_88\)))), GLOBAL(\clk~combout\), VCC, , , , , 
-- \LCD_PORTMAP|Selector0~1_combout\, )
-- \LCD_PORTMAP|clk_count[18]~5\ = CARRY(((\LCD_PORTMAP|clk_count\(18) & !\LCD_PORTMAP|clk_count[17]~35\)))
-- \LCD_PORTMAP|clk_count[18]~5COUT1_90\ = CARRY(((\LCD_PORTMAP|clk_count\(18) & !\LCD_PORTMAP|clk_count[17]~35COUT1_88\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \LCD_PORTMAP|clk_count\(18),
	aclr => GND,
	sclr => \LCD_PORTMAP|Selector0~1_combout\,
	cin => \LCD_PORTMAP|clk_count[15]~33\,
	cin0 => \LCD_PORTMAP|clk_count[17]~35\,
	cin1 => \LCD_PORTMAP|clk_count[17]~35COUT1_88\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_PORTMAP|clk_count\(18),
	cout0 => \LCD_PORTMAP|clk_count[18]~5\,
	cout1 => \LCD_PORTMAP|clk_count[18]~5COUT1_90\);

-- Location: LC_X6_Y2_N3
\LCD_PORTMAP|clk_count[19]\ : maxii_lcell
-- Equation(s):
-- \LCD_PORTMAP|clk_count\(19) = DFFEAS(\LCD_PORTMAP|clk_count\(19) $ (((((!\LCD_PORTMAP|clk_count[15]~33\ & \LCD_PORTMAP|clk_count[18]~5\) # (\LCD_PORTMAP|clk_count[15]~33\ & \LCD_PORTMAP|clk_count[18]~5COUT1_90\))))), GLOBAL(\clk~combout\), VCC, , , , , 
-- \LCD_PORTMAP|Selector0~1_combout\, )
-- \LCD_PORTMAP|clk_count[19]~7\ = CARRY(((!\LCD_PORTMAP|clk_count[18]~5\)) # (!\LCD_PORTMAP|clk_count\(19)))
-- \LCD_PORTMAP|clk_count[19]~7COUT1_92\ = CARRY(((!\LCD_PORTMAP|clk_count[18]~5COUT1_90\)) # (!\LCD_PORTMAP|clk_count\(19)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \LCD_PORTMAP|clk_count\(19),
	aclr => GND,
	sclr => \LCD_PORTMAP|Selector0~1_combout\,
	cin => \LCD_PORTMAP|clk_count[15]~33\,
	cin0 => \LCD_PORTMAP|clk_count[18]~5\,
	cin1 => \LCD_PORTMAP|clk_count[18]~5COUT1_90\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_PORTMAP|clk_count\(19),
	cout0 => \LCD_PORTMAP|clk_count[19]~7\,
	cout1 => \LCD_PORTMAP|clk_count[19]~7COUT1_92\);

-- Location: LC_X6_Y2_N6
\LCD_PORTMAP|LessThan0~0\ : maxii_lcell
-- Equation(s):
-- \LCD_PORTMAP|LessThan0~0_combout\ = ((!\LCD_PORTMAP|clk_count\(18) & ((!\LCD_PORTMAP|clk_count\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0033",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \LCD_PORTMAP|clk_count\(18),
	datad => \LCD_PORTMAP|clk_count\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LCD_PORTMAP|LessThan0~0_combout\);

-- Location: LC_X6_Y2_N4
\LCD_PORTMAP|clk_count[20]\ : maxii_lcell
-- Equation(s):
-- \LCD_PORTMAP|clk_count\(20) = DFFEAS(\LCD_PORTMAP|clk_count\(20) $ ((((!(!\LCD_PORTMAP|clk_count[15]~33\ & \LCD_PORTMAP|clk_count[19]~7\) # (\LCD_PORTMAP|clk_count[15]~33\ & \LCD_PORTMAP|clk_count[19]~7COUT1_92\))))), GLOBAL(\clk~combout\), VCC, , , , , 
-- \LCD_PORTMAP|Selector0~1_combout\, )
-- \LCD_PORTMAP|clk_count[20]~17\ = CARRY((\LCD_PORTMAP|clk_count\(20) & ((!\LCD_PORTMAP|clk_count[19]~7COUT1_92\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \LCD_PORTMAP|clk_count\(20),
	aclr => GND,
	sclr => \LCD_PORTMAP|Selector0~1_combout\,
	cin => \LCD_PORTMAP|clk_count[15]~33\,
	cin0 => \LCD_PORTMAP|clk_count[19]~7\,
	cin1 => \LCD_PORTMAP|clk_count[19]~7COUT1_92\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_PORTMAP|clk_count\(20),
	cout => \LCD_PORTMAP|clk_count[20]~17\);

-- Location: LC_X6_Y2_N5
\LCD_PORTMAP|clk_count[21]\ : maxii_lcell
-- Equation(s):
-- \LCD_PORTMAP|clk_count\(21) = DFFEAS(\LCD_PORTMAP|clk_count\(21) $ ((((\LCD_PORTMAP|clk_count[20]~17\)))), GLOBAL(\clk~combout\), VCC, , , , , \LCD_PORTMAP|Selector0~1_combout\, )

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \LCD_PORTMAP|clk_count\(21),
	aclr => GND,
	sclr => \LCD_PORTMAP|Selector0~1_combout\,
	cin => \LCD_PORTMAP|clk_count[20]~17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_PORTMAP|clk_count\(21));

-- Location: LC_X4_Y2_N3
\LCD_PORTMAP|LessThan0~4\ : maxii_lcell
-- Equation(s):
-- \LCD_PORTMAP|LessThan0~4_combout\ = ((!\LCD_PORTMAP|clk_count\(14) & (!\LCD_PORTMAP|clk_count\(15) & !\LCD_PORTMAP|clk_count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0003",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \LCD_PORTMAP|clk_count\(14),
	datac => \LCD_PORTMAP|clk_count\(15),
	datad => \LCD_PORTMAP|clk_count\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LCD_PORTMAP|LessThan0~4_combout\);

-- Location: LC_X4_Y2_N1
\LCD_PORTMAP|LessThan0~1\ : maxii_lcell
-- Equation(s):
-- \LCD_PORTMAP|LessThan0~1_combout\ = (((!\LCD_PORTMAP|clk_count\(4) & !\LCD_PORTMAP|clk_count\(5))) # (!\LCD_PORTMAP|clk_count\(7))) # (!\LCD_PORTMAP|clk_count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1fff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_PORTMAP|clk_count\(4),
	datab => \LCD_PORTMAP|clk_count\(5),
	datac => \LCD_PORTMAP|clk_count\(6),
	datad => \LCD_PORTMAP|clk_count\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LCD_PORTMAP|LessThan0~1_combout\);

-- Location: LC_X3_Y2_N4
\LCD_PORTMAP|LessThan0~2\ : maxii_lcell
-- Equation(s):
-- \LCD_PORTMAP|LessThan0~2_combout\ = (((!\LCD_PORTMAP|clk_count\(8) & \LCD_PORTMAP|LessThan0~1_combout\)) # (!\LCD_PORTMAP|clk_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3f0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \LCD_PORTMAP|clk_count\(8),
	datac => \LCD_PORTMAP|clk_count\(9),
	datad => \LCD_PORTMAP|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LCD_PORTMAP|LessThan0~2_combout\);

-- Location: LC_X3_Y2_N5
\LCD_PORTMAP|LessThan0~3\ : maxii_lcell
-- Equation(s):
-- \LCD_PORTMAP|LessThan0~3_combout\ = ((!\LCD_PORTMAP|clk_count\(10) & (!\LCD_PORTMAP|clk_count\(11) & \LCD_PORTMAP|LessThan0~2_combout\))) # (!\LCD_PORTMAP|clk_count\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1f0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_PORTMAP|clk_count\(10),
	datab => \LCD_PORTMAP|clk_count\(11),
	datac => \LCD_PORTMAP|clk_count\(12),
	datad => \LCD_PORTMAP|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LCD_PORTMAP|LessThan0~3_combout\);

-- Location: LC_X3_Y2_N6
\LCD_PORTMAP|LessThan0~5\ : maxii_lcell
-- Equation(s):
-- \LCD_PORTMAP|LessThan0~5_combout\ = (((\LCD_PORTMAP|LessThan0~4_combout\ & \LCD_PORTMAP|LessThan0~3_combout\)) # (!\LCD_PORTMAP|clk_count\(17))) # (!\LCD_PORTMAP|clk_count\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f777",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_PORTMAP|clk_count\(16),
	datab => \LCD_PORTMAP|clk_count\(17),
	datac => \LCD_PORTMAP|LessThan0~4_combout\,
	datad => \LCD_PORTMAP|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LCD_PORTMAP|LessThan0~5_combout\);

-- Location: LC_X3_Y2_N7
\LCD_PORTMAP|LessThan0~6\ : maxii_lcell
-- Equation(s):
-- \LCD_PORTMAP|LessThan0~6_combout\ = (!\LCD_PORTMAP|clk_count\(21) & (((\LCD_PORTMAP|LessThan0~0_combout\ & \LCD_PORTMAP|LessThan0~5_combout\)) # (!\LCD_PORTMAP|clk_count\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0b03",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_PORTMAP|LessThan0~0_combout\,
	datab => \LCD_PORTMAP|clk_count\(20),
	datac => \LCD_PORTMAP|clk_count\(21),
	datad => \LCD_PORTMAP|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LCD_PORTMAP|LessThan0~6_combout\);

-- Location: LC_X4_Y2_N0
\LCD_PORTMAP|state.lcd_power_up\ : maxii_lcell
-- Equation(s):
-- \LCD_PORTMAP|state.lcd_power_up~regout\ = DFFEAS((((\LCD_PORTMAP|state.lcd_power_up~regout\) # (!\LCD_PORTMAP|LessThan0~6_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \LCD_PORTMAP|state.lcd_power_up~regout\,
	datad => \LCD_PORTMAP|LessThan0~6_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_PORTMAP|state.lcd_power_up~regout\);

-- Location: LC_X2_Y2_N1
\LCD_PORTMAP|Equal2~0\ : maxii_lcell
-- Equation(s):
-- \LCD_PORTMAP|Equal2~0_combout\ = (!\LCD_PORTMAP|clk_count\(9) & (!\LCD_PORTMAP|clk_count\(8) & (!\LCD_PORTMAP|clk_count\(10) & !\LCD_PORTMAP|clk_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_PORTMAP|clk_count\(9),
	datab => \LCD_PORTMAP|clk_count\(8),
	datac => \LCD_PORTMAP|clk_count\(10),
	datad => \LCD_PORTMAP|clk_count\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LCD_PORTMAP|Equal2~0_combout\);

-- Location: LC_X6_Y2_N9
\LCD_PORTMAP|Equal2~1\ : maxii_lcell
-- Equation(s):
-- \LCD_PORTMAP|Equal2~1_combout\ = (\LCD_PORTMAP|clk_count\(15) & (\LCD_PORTMAP|clk_count\(17) & (!\LCD_PORTMAP|clk_count\(4) & \LCD_PORTMAP|clk_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_PORTMAP|clk_count\(15),
	datab => \LCD_PORTMAP|clk_count\(17),
	datac => \LCD_PORTMAP|clk_count\(4),
	datad => \LCD_PORTMAP|clk_count\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LCD_PORTMAP|Equal2~1_combout\);

-- Location: LC_X3_Y2_N9
\LCD_PORTMAP|Equal4~1\ : maxii_lcell
-- Equation(s):
-- \LCD_PORTMAP|Equal4~1_combout\ = (((!\LCD_PORTMAP|clk_count\(2) & !\LCD_PORTMAP|clk_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \LCD_PORTMAP|clk_count\(2),
	datad => \LCD_PORTMAP|clk_count\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LCD_PORTMAP|Equal4~1_combout\);

-- Location: LC_X2_Y2_N5
\LCD_PORTMAP|Equal0~0\ : maxii_lcell
-- Equation(s):
-- \LCD_PORTMAP|Equal0~0_combout\ = (!\LCD_PORTMAP|clk_count\(19) & (!\LCD_PORTMAP|clk_count\(13) & (!\LCD_PORTMAP|clk_count\(18) & !\LCD_PORTMAP|clk_count\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_PORTMAP|clk_count\(19),
	datab => \LCD_PORTMAP|clk_count\(13),
	datac => \LCD_PORTMAP|clk_count\(18),
	datad => \LCD_PORTMAP|clk_count\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LCD_PORTMAP|Equal0~0_combout\);

-- Location: LC_X2_Y2_N6
\LCD_PORTMAP|Equal0~1\ : maxii_lcell
-- Equation(s):
-- \LCD_PORTMAP|Equal0~1_combout\ = (!\LCD_PORTMAP|clk_count\(0) & (!\LCD_PORTMAP|clk_count\(12) & (!\LCD_PORTMAP|clk_count\(16) & !\LCD_PORTMAP|clk_count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_PORTMAP|clk_count\(0),
	datab => \LCD_PORTMAP|clk_count\(12),
	datac => \LCD_PORTMAP|clk_count\(16),
	datad => \LCD_PORTMAP|clk_count\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LCD_PORTMAP|Equal0~1_combout\);

-- Location: LC_X2_Y2_N7
\LCD_PORTMAP|Equal0~2\ : maxii_lcell
-- Equation(s):
-- \LCD_PORTMAP|Equal0~2_combout\ = (!\LCD_PORTMAP|clk_count\(21) & (!\LCD_PORTMAP|clk_count\(20) & (\LCD_PORTMAP|Equal0~0_combout\ & \LCD_PORTMAP|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_PORTMAP|clk_count\(21),
	datab => \LCD_PORTMAP|clk_count\(20),
	datac => \LCD_PORTMAP|Equal0~0_combout\,
	datad => \LCD_PORTMAP|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LCD_PORTMAP|Equal0~2_combout\);

-- Location: LC_X2_Y2_N8
\LCD_PORTMAP|Equal4~2\ : maxii_lcell
-- Equation(s):
-- \LCD_PORTMAP|Equal4~2_combout\ = (\LCD_PORTMAP|clk_count\(7) & (!\LCD_PORTMAP|clk_count\(3) & (\LCD_PORTMAP|Equal4~1_combout\ & \LCD_PORTMAP|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_PORTMAP|clk_count\(7),
	datab => \LCD_PORTMAP|clk_count\(3),
	datac => \LCD_PORTMAP|Equal4~1_combout\,
	datad => \LCD_PORTMAP|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LCD_PORTMAP|Equal4~2_combout\);

-- Location: LC_X2_Y2_N9
\LCD_PORTMAP|Equal2~2\ : maxii_lcell
-- Equation(s):
-- \LCD_PORTMAP|Equal2~2_combout\ = ((\LCD_PORTMAP|Equal2~0_combout\ & (\LCD_PORTMAP|Equal2~1_combout\ & \LCD_PORTMAP|Equal4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \LCD_PORTMAP|Equal2~0_combout\,
	datac => \LCD_PORTMAP|Equal2~1_combout\,
	datad => \LCD_PORTMAP|Equal4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LCD_PORTMAP|Equal2~2_combout\);

-- Location: LC_X3_Y2_N8
\LCD_PORTMAP|Selector0~0\ : maxii_lcell
-- Equation(s):
-- \LCD_PORTMAP|Selector0~0_combout\ = ((\LCD_PORTMAP|state.lcd_display~regout\ & ((!\LCD_PORTMAP|Equal4~4_combout\))) # (!\LCD_PORTMAP|state.lcd_display~regout\ & (!\LCD_PORTMAP|Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "03cf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \LCD_PORTMAP|state.lcd_display~regout\,
	datac => \LCD_PORTMAP|Equal2~2_combout\,
	datad => \LCD_PORTMAP|Equal4~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LCD_PORTMAP|Selector0~0_combout\);

-- Location: LC_X3_Y2_N0
\LCD_PORTMAP|Selector0~1\ : maxii_lcell
-- Equation(s):
-- \LCD_PORTMAP|Selector0~1_combout\ = ((\LCD_PORTMAP|state.lcd_power_up~regout\ & ((!\LCD_PORTMAP|Selector0~0_combout\))) # (!\LCD_PORTMAP|state.lcd_power_up~regout\ & (!\LCD_PORTMAP|LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "03cf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \LCD_PORTMAP|state.lcd_power_up~regout\,
	datac => \LCD_PORTMAP|LessThan0~6_combout\,
	datad => \LCD_PORTMAP|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LCD_PORTMAP|Selector0~1_combout\);

-- Location: LC_X4_Y2_N2
\LCD_PORTMAP|Equal4~3\ : maxii_lcell
-- Equation(s):
-- \LCD_PORTMAP|Equal4~3_combout\ = (\LCD_PORTMAP|clk_count\(9) & (\LCD_PORTMAP|clk_count\(8) & (\LCD_PORTMAP|clk_count\(6) & \LCD_PORTMAP|clk_count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_PORTMAP|clk_count\(9),
	datab => \LCD_PORTMAP|clk_count\(8),
	datac => \LCD_PORTMAP|clk_count\(6),
	datad => \LCD_PORTMAP|clk_count\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LCD_PORTMAP|Equal4~3_combout\);

-- Location: LC_X6_Y2_N8
\LCD_PORTMAP|Equal4~0\ : maxii_lcell
-- Equation(s):
-- \LCD_PORTMAP|Equal4~0_combout\ = ((!\LCD_PORTMAP|clk_count\(17) & (!\LCD_PORTMAP|clk_count\(15) & !\LCD_PORTMAP|clk_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0003",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \LCD_PORTMAP|clk_count\(17),
	datac => \LCD_PORTMAP|clk_count\(15),
	datad => \LCD_PORTMAP|clk_count\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LCD_PORTMAP|Equal4~0_combout\);

-- Location: LC_X2_Y2_N3
\LCD_PORTMAP|Equal4~4\ : maxii_lcell
-- Equation(s):
-- \LCD_PORTMAP|Equal4~4_combout\ = (\LCD_PORTMAP|clk_count\(4) & (\LCD_PORTMAP|Equal4~3_combout\ & (\LCD_PORTMAP|Equal4~0_combout\ & \LCD_PORTMAP|Equal4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_PORTMAP|clk_count\(4),
	datab => \LCD_PORTMAP|Equal4~3_combout\,
	datac => \LCD_PORTMAP|Equal4~0_combout\,
	datad => \LCD_PORTMAP|Equal4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LCD_PORTMAP|Equal4~4_combout\);

-- Location: LC_X3_Y2_N3
\LCD_PORTMAP|Selector23~0\ : maxii_lcell
-- Equation(s):
-- \LCD_PORTMAP|Selector23~0_combout\ = ((\LCD_PORTMAP|state.lcd_power_up~regout\ & ((\LCD_PORTMAP|state.lcd_init~regout\))) # (!\LCD_PORTMAP|state.lcd_power_up~regout\ & (!\LCD_PORTMAP|LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cf03",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \LCD_PORTMAP|state.lcd_power_up~regout\,
	datac => \LCD_PORTMAP|LessThan0~6_combout\,
	datad => \LCD_PORTMAP|state.lcd_init~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LCD_PORTMAP|Selector23~0_combout\);

-- Location: LC_X6_Y2_N7
\LCD_PORTMAP|Selector24~1\ : maxii_lcell
-- Equation(s):
-- \LCD_PORTMAP|Selector24~1_combout\ = (\LCD_PORTMAP|Selector24~0_combout\ & (\LCD_PORTMAP|Equal2~1_combout\ & (\LCD_PORTMAP|Equal4~2_combout\ & \LCD_PORTMAP|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_PORTMAP|Selector24~0_combout\,
	datab => \LCD_PORTMAP|Equal2~1_combout\,
	datac => \LCD_PORTMAP|Equal4~2_combout\,
	datad => \LCD_PORTMAP|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LCD_PORTMAP|Selector24~1_combout\);

-- Location: LC_X3_Y2_N2
\LCD_PORTMAP|state.lcd_init\ : maxii_lcell
-- Equation(s):
-- \LCD_PORTMAP|state.lcd_init~regout\ = DFFEAS((\LCD_PORTMAP|ptr[0]~1_combout\ & ((\LCD_PORTMAP|Equal4~4_combout\) # ((\LCD_PORTMAP|Selector23~0_combout\ & !\LCD_PORTMAP|Selector24~1_combout\)))) # (!\LCD_PORTMAP|ptr[0]~1_combout\ & 
-- (((\LCD_PORTMAP|Selector23~0_combout\ & !\LCD_PORTMAP|Selector24~1_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "88f8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \LCD_PORTMAP|ptr[0]~1_combout\,
	datab => \LCD_PORTMAP|Equal4~4_combout\,
	datac => \LCD_PORTMAP|Selector23~0_combout\,
	datad => \LCD_PORTMAP|Selector24~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_PORTMAP|state.lcd_init~regout\);

-- Location: LC_X2_Y2_N2
\LCD_PORTMAP|ptr[0]~0\ : maxii_lcell
-- Equation(s):
-- \LCD_PORTMAP|ptr[0]~0_combout\ = (\LCD_PORTMAP|Equal4~4_combout\ & ((\LCD_PORTMAP|state.lcd_display~regout\) # ((\LCD_PORTMAP|state.lcd_init~regout\ & \LCD_PORTMAP|Equal2~2_combout\)))) # (!\LCD_PORTMAP|Equal4~4_combout\ & 
-- (\LCD_PORTMAP|state.lcd_init~regout\ & ((\LCD_PORTMAP|Equal2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_PORTMAP|Equal4~4_combout\,
	datab => \LCD_PORTMAP|state.lcd_init~regout\,
	datac => \LCD_PORTMAP|state.lcd_display~regout\,
	datad => \LCD_PORTMAP|Equal2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LCD_PORTMAP|ptr[0]~0_combout\);

-- Location: LC_X2_Y2_N4
\LCD_PORTMAP|ptr[1]\ : maxii_lcell
-- Equation(s):
-- \LCD_PORTMAP|ptr\(1) = DFFEAS((!\LCD_PORTMAP|Selector24~0_combout\ & (!\LCD_PORTMAP|ptr[0]~1_combout\ & (\LCD_PORTMAP|ptr\(1) $ (\LCD_PORTMAP|ptr\(0))))), GLOBAL(\clk~combout\), VCC, , \LCD_PORTMAP|ptr[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0012",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \LCD_PORTMAP|ptr\(1),
	datab => \LCD_PORTMAP|Selector24~0_combout\,
	datac => \LCD_PORTMAP|ptr\(0),
	datad => \LCD_PORTMAP|ptr[0]~1_combout\,
	aclr => GND,
	ena => \LCD_PORTMAP|ptr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_PORTMAP|ptr\(1));

-- Location: LC_X7_Y4_N5
\LCD_PORTMAP|Mux2~0\ : maxii_lcell
-- Equation(s):
-- \LCD_PORTMAP|Mux2~0_combout\ = ((\LCD_PORTMAP|ptr\(0) & (\LCD_PORTMAP|ptr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \LCD_PORTMAP|ptr\(0),
	datac => \LCD_PORTMAP|ptr\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LCD_PORTMAP|Mux2~0_combout\);

-- Location: LC_X7_Y4_N6
\LCD_PORTMAP|ptr[0]~1\ : maxii_lcell
-- Equation(s):
-- \LCD_PORTMAP|ptr[0]~1_combout\ = (\LCD_PORTMAP|ptr\(2) & (\LCD_PORTMAP|state.lcd_display~regout\ & (\LCD_PORTMAP|ptr\(3) & \LCD_PORTMAP|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_PORTMAP|ptr\(2),
	datab => \LCD_PORTMAP|state.lcd_display~regout\,
	datac => \LCD_PORTMAP|ptr\(3),
	datad => \LCD_PORTMAP|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LCD_PORTMAP|ptr[0]~1_combout\);

-- Location: LC_X6_Y4_N0
\LCD_PORTMAP|ptr[2]\ : maxii_lcell
-- Equation(s):
-- \LCD_PORTMAP|ptr\(2) = DFFEAS((\LCD_PORTMAP|ptr[0]~1_combout\) # ((!\LCD_PORTMAP|Selector24~0_combout\ & (\LCD_PORTMAP|ptr\(2) $ (\LCD_PORTMAP|Mux2~0_combout\)))), GLOBAL(\clk~combout\), VCC, , \LCD_PORTMAP|ptr[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f1f4",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \LCD_PORTMAP|Selector24~0_combout\,
	datab => \LCD_PORTMAP|ptr\(2),
	datac => \LCD_PORTMAP|ptr[0]~1_combout\,
	datad => \LCD_PORTMAP|Mux2~0_combout\,
	aclr => GND,
	ena => \LCD_PORTMAP|ptr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_PORTMAP|ptr\(2));

-- Location: LC_X7_Y2_N6
\LCD_PORTMAP|Selector29~0\ : maxii_lcell
-- Equation(s):
-- \LCD_PORTMAP|Selector29~0_combout\ = (((!\LCD_PORTMAP|ptr\(1) & !\LCD_PORTMAP|ptr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \LCD_PORTMAP|ptr\(1),
	datad => \LCD_PORTMAP|ptr\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LCD_PORTMAP|Selector29~0_combout\);

-- Location: LC_X7_Y2_N7
\LCD_PORTMAP|Selector24~0\ : maxii_lcell
-- Equation(s):
-- \LCD_PORTMAP|Selector24~0_combout\ = (!\LCD_PORTMAP|ptr\(3) & (\LCD_PORTMAP|ptr\(2) & (\LCD_PORTMAP|state.lcd_init~regout\ & \LCD_PORTMAP|Selector29~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_PORTMAP|ptr\(3),
	datab => \LCD_PORTMAP|ptr\(2),
	datac => \LCD_PORTMAP|state.lcd_init~regout\,
	datad => \LCD_PORTMAP|Selector29~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LCD_PORTMAP|Selector24~0_combout\);

-- Location: LC_X2_Y2_N0
\LCD_PORTMAP|ptr[0]\ : maxii_lcell
-- Equation(s):
-- \LCD_PORTMAP|ptr\(0) = DFFEAS(((!\LCD_PORTMAP|ptr\(0) & ((!\LCD_PORTMAP|Selector24~0_combout\)))), GLOBAL(\clk~combout\), VCC, , \LCD_PORTMAP|ptr[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0033",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \LCD_PORTMAP|ptr\(0),
	datad => \LCD_PORTMAP|Selector24~0_combout\,
	aclr => GND,
	ena => \LCD_PORTMAP|ptr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_PORTMAP|ptr\(0));

-- Location: LC_X7_Y2_N0
\LCD_PORTMAP|Equal5~1\ : maxii_lcell
-- Equation(s):
-- \LCD_PORTMAP|Equal5~1_combout\ = ((\LCD_PORTMAP|ptr\(0) & (\LCD_PORTMAP|ptr\(1) & \LCD_PORTMAP|ptr\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \LCD_PORTMAP|ptr\(0),
	datac => \LCD_PORTMAP|ptr\(1),
	datad => \LCD_PORTMAP|ptr\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LCD_PORTMAP|Equal5~1_combout\);

-- Location: LC_X3_Y2_N1
\LCD_PORTMAP|ptr[3]\ : maxii_lcell
-- Equation(s):
-- \LCD_PORTMAP|ptr\(3) = DFFEAS(((!\LCD_PORTMAP|Selector24~0_combout\ & (\LCD_PORTMAP|ptr\(3) $ (\LCD_PORTMAP|Equal5~1_combout\)))), GLOBAL(\clk~combout\), VCC, , \LCD_PORTMAP|ptr[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "003c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \LCD_PORTMAP|ptr\(3),
	datac => \LCD_PORTMAP|Equal5~1_combout\,
	datad => \LCD_PORTMAP|Selector24~0_combout\,
	aclr => GND,
	ena => \LCD_PORTMAP|ptr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_PORTMAP|ptr\(3));

-- Location: LC_X7_Y2_N1
\LCD_PORTMAP|Equal5~0\ : maxii_lcell
-- Equation(s):
-- \LCD_PORTMAP|Equal5~0_combout\ = (\LCD_PORTMAP|ptr\(3) & (\LCD_PORTMAP|ptr\(2) & (\LCD_PORTMAP|ptr\(1) & \LCD_PORTMAP|ptr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_PORTMAP|ptr\(3),
	datab => \LCD_PORTMAP|ptr\(2),
	datac => \LCD_PORTMAP|ptr\(1),
	datad => \LCD_PORTMAP|ptr\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LCD_PORTMAP|Equal5~0_combout\);

-- Location: LC_X7_Y2_N9
\LCD_PORTMAP|state.lcd_display\ : maxii_lcell
-- Equation(s):
-- \LCD_PORTMAP|state.lcd_display~regout\ = DFFEAS((\LCD_PORTMAP|Selector24~1_combout\) # ((\LCD_PORTMAP|state.lcd_display~regout\ & ((!\LCD_PORTMAP|Equal4~4_combout\) # (!\LCD_PORTMAP|Equal5~0_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff4c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \LCD_PORTMAP|Equal5~0_combout\,
	datab => \LCD_PORTMAP|state.lcd_display~regout\,
	datac => \LCD_PORTMAP|Equal4~4_combout\,
	datad => \LCD_PORTMAP|Selector24~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_PORTMAP|state.lcd_display~regout\);

-- Location: LC_X7_Y4_N8
\LCD_PORTMAP|lcd_rs\ : maxii_lcell
-- Equation(s):
-- \LCD_PORTMAP|lcd_rs~regout\ = DFFEAS(((\LCD_PORTMAP|state.lcd_display~regout\) # ((!\LCD_PORTMAP|state.lcd_power_up~regout\ & \LCD_PORTMAP|lcd_rs~regout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfcc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \LCD_PORTMAP|state.lcd_display~regout\,
	datac => \LCD_PORTMAP|state.lcd_power_up~regout\,
	datad => \LCD_PORTMAP|lcd_rs~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_PORTMAP|lcd_rs~regout\);

-- Location: LC_X2_Y1_N9
\LCD_PORTMAP|Equal0~3\ : maxii_lcell
-- Equation(s):
-- \LCD_PORTMAP|Equal0~3_combout\ = (\LCD_PORTMAP|clk_count\(1) & (!\LCD_PORTMAP|clk_count\(7) & (\LCD_PORTMAP|Equal4~0_combout\ & \LCD_PORTMAP|clk_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_PORTMAP|clk_count\(1),
	datab => \LCD_PORTMAP|clk_count\(7),
	datac => \LCD_PORTMAP|Equal4~0_combout\,
	datad => \LCD_PORTMAP|clk_count\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LCD_PORTMAP|Equal0~3_combout\);

-- Location: LC_X2_Y1_N0
\LCD_PORTMAP|Equal0~4\ : maxii_lcell
-- Equation(s):
-- \LCD_PORTMAP|Equal0~4_combout\ = ((\LCD_PORTMAP|Equal2~0_combout\ & (\LCD_PORTMAP|Equal0~2_combout\ & \LCD_PORTMAP|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \LCD_PORTMAP|Equal2~0_combout\,
	datac => \LCD_PORTMAP|Equal0~2_combout\,
	datad => \LCD_PORTMAP|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LCD_PORTMAP|Equal0~4_combout\);

-- Location: LC_X2_Y1_N1
\LCD_PORTMAP|lcd_en\ : maxii_lcell
-- Equation(s):
-- \LCD_PORTMAP|lcd_en~regout\ = DFFEAS((\LCD_PORTMAP|clk_count\(4) & (\LCD_PORTMAP|lcd_en~regout\ & ((!\LCD_PORTMAP|Equal0~4_combout\) # (!\LCD_PORTMAP|clk_count\(2))))) # (!\LCD_PORTMAP|clk_count\(4) & ((\LCD_PORTMAP|lcd_en~regout\) # 
-- ((!\LCD_PORTMAP|clk_count\(2) & \LCD_PORTMAP|Equal0~4_combout\)))), GLOBAL(\clk~combout\), VCC, , \LCD_PORTMAP|state.lcd_power_up~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4dcc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \LCD_PORTMAP|clk_count\(4),
	datab => \LCD_PORTMAP|lcd_en~regout\,
	datac => \LCD_PORTMAP|clk_count\(2),
	datad => \LCD_PORTMAP|Equal0~4_combout\,
	aclr => GND,
	ena => \LCD_PORTMAP|state.lcd_power_up~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_PORTMAP|lcd_en~regout\);

-- Location: LC_X3_Y4_N0
\LCD_PORTMAP|Selector33~3\ : maxii_lcell
-- Equation(s):
-- \LCD_PORTMAP|Selector33~3_combout\ = ((!\LCD_PORTMAP|ptr\(2) & ((!\CONVERSION_DATA|tens[0]~14_combout\) # (!\LCD_PORTMAP|ptr\(3))))) # (!\LCD_PORTMAP|state.lcd_display~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3777",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_PORTMAP|ptr\(2),
	datab => \LCD_PORTMAP|state.lcd_display~regout\,
	datac => \LCD_PORTMAP|ptr\(3),
	datad => \CONVERSION_DATA|tens[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LCD_PORTMAP|Selector33~3_combout\);

-- Location: LC_X2_Y3_N1
\LCD_PORTMAP|Selector30~0\ : maxii_lcell
-- Equation(s):
-- \LCD_PORTMAP|Selector30~0_combout\ = ((\LCD_PORTMAP|state.lcd_display~regout\ & (\LCD_PORTMAP|ptr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \LCD_PORTMAP|state.lcd_display~regout\,
	datac => \LCD_PORTMAP|ptr\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LCD_PORTMAP|Selector30~0_combout\);

-- Location: LC_X2_Y3_N6
\LCD_PORTMAP|Selector33~0\ : maxii_lcell
-- Equation(s):
-- \LCD_PORTMAP|Selector33~0_combout\ = (\CONVERSION_DATA|tens[3]~12_combout\ & (\CONVERSION_DATA|LessThan6~0_combout\ & ((!\CONVERSION_DATA|bcd_temp~7_combout\) # (!\CONVERSION_DATA|bcd_temp~6\)))) # (!\CONVERSION_DATA|tens[3]~12_combout\ & 
-- (((\CONVERSION_DATA|bcd_temp~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7c0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CONVERSION_DATA|bcd_temp~6\,
	datab => \CONVERSION_DATA|bcd_temp~7_combout\,
	datac => \CONVERSION_DATA|tens[3]~12_combout\,
	datad => \CONVERSION_DATA|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LCD_PORTMAP|Selector33~0_combout\);

-- Location: LC_X2_Y3_N7
\LCD_PORTMAP|Selector33~1\ : maxii_lcell
-- Equation(s):
-- \LCD_PORTMAP|Selector33~1_combout\ = ((\LCD_PORTMAP|ptr\(1) & (\ADC_PORTMAP|temp_data\(0))) # (!\LCD_PORTMAP|ptr\(1) & ((\LCD_PORTMAP|Selector33~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ADC_PORTMAP|temp_data\(0),
	datac => \LCD_PORTMAP|ptr\(1),
	datad => \LCD_PORTMAP|Selector33~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LCD_PORTMAP|Selector33~1_combout\);

-- Location: LC_X2_Y3_N8
\LCD_PORTMAP|Selector33~2\ : maxii_lcell
-- Equation(s):
-- \LCD_PORTMAP|Selector33~2_combout\ = (\LCD_PORTMAP|Selector30~0_combout\ & (((!\LCD_PORTMAP|ptr\(2) & \LCD_PORTMAP|Selector33~1_combout\)) # (!\LCD_PORTMAP|ptr\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4c44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_PORTMAP|ptr\(3),
	datab => \LCD_PORTMAP|Selector30~0_combout\,
	datac => \LCD_PORTMAP|ptr\(2),
	datad => \LCD_PORTMAP|Selector33~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LCD_PORTMAP|Selector33~2_combout\);

-- Location: LC_X2_Y3_N5
\LCD_PORTMAP|data_to_display[0]\ : maxii_lcell
-- Equation(s):
-- \LCD_PORTMAP|data_to_display\(0) = DFFEAS((\LCD_PORTMAP|Selector33~2_combout\) # ((\LCD_PORTMAP|Selector33~3_combout\ & (\LCD_PORTMAP|ptr\(1) & !\LCD_PORTMAP|ptr\(0)))), GLOBAL(\clk~combout\), VCC, , \LCD_PORTMAP|state.lcd_power_up~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff08",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \LCD_PORTMAP|Selector33~3_combout\,
	datab => \LCD_PORTMAP|ptr\(1),
	datac => \LCD_PORTMAP|ptr\(0),
	datad => \LCD_PORTMAP|Selector33~2_combout\,
	aclr => GND,
	ena => \LCD_PORTMAP|state.lcd_power_up~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_PORTMAP|data_to_display\(0));

-- Location: LC_X7_Y4_N0
\LCD_PORTMAP|Mux10~0\ : maxii_lcell
-- Equation(s):
-- \LCD_PORTMAP|Mux10~0_combout\ = (\LCD_PORTMAP|ptr\(0) & (\CONVERSION_DATA|LessThan4~1_combout\ & (!\LCD_PORTMAP|ptr\(1)))) # (!\LCD_PORTMAP|ptr\(0) & (((!\CONVERSION_DATA|tens[1]~13_combout\) # (!\LCD_PORTMAP|ptr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0d5d",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_PORTMAP|ptr\(0),
	datab => \CONVERSION_DATA|LessThan4~1_combout\,
	datac => \LCD_PORTMAP|ptr\(1),
	datad => \CONVERSION_DATA|tens[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LCD_PORTMAP|Mux10~0_combout\);

-- Location: LC_X7_Y4_N1
\LCD_PORTMAP|Mux10~1\ : maxii_lcell
-- Equation(s):
-- \LCD_PORTMAP|Mux10~1_combout\ = (\LCD_PORTMAP|ptr\(2) & (\LCD_PORTMAP|Mux2~0_combout\)) # (!\LCD_PORTMAP|ptr\(2) & ((\LCD_PORTMAP|Mux10~0_combout\) # ((\LCD_PORTMAP|Mux2~0_combout\ & \CONVERSION_DATA|unit[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bba8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_PORTMAP|Mux2~0_combout\,
	datab => \LCD_PORTMAP|ptr\(2),
	datac => \CONVERSION_DATA|unit[1]~0_combout\,
	datad => \LCD_PORTMAP|Mux10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LCD_PORTMAP|Mux10~1_combout\);

-- Location: LC_X7_Y4_N2
\LCD_PORTMAP|data_to_display[1]\ : maxii_lcell
-- Equation(s):
-- \LCD_PORTMAP|data_to_display\(1) = DFFEAS((\LCD_PORTMAP|state.lcd_display~regout\ & (((\LCD_PORTMAP|ptr\(3) & \LCD_PORTMAP|Mux10~1_combout\)))) # (!\LCD_PORTMAP|state.lcd_display~regout\ & (\LCD_PORTMAP|Mux2~0_combout\)), GLOBAL(\clk~combout\), VCC, , 
-- \LCD_PORTMAP|state.lcd_power_up~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e222",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \LCD_PORTMAP|Mux2~0_combout\,
	datab => \LCD_PORTMAP|state.lcd_display~regout\,
	datac => \LCD_PORTMAP|ptr\(3),
	datad => \LCD_PORTMAP|Mux10~1_combout\,
	aclr => GND,
	ena => \LCD_PORTMAP|state.lcd_power_up~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_PORTMAP|data_to_display\(1));

-- Location: LC_X7_Y4_N4
\LCD_PORTMAP|Selector31~1\ : maxii_lcell
-- Equation(s):
-- \LCD_PORTMAP|Selector31~1_combout\ = (\LCD_PORTMAP|ptr\(2) & (!\LCD_PORTMAP|ptr\(3))) # (!\LCD_PORTMAP|ptr\(2) & (\LCD_PORTMAP|ptr\(1) & ((\CONVERSION_DATA|tens[2]~11_combout\) # (!\LCD_PORTMAP|ptr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7454",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_PORTMAP|ptr\(3),
	datab => \LCD_PORTMAP|ptr\(2),
	datac => \LCD_PORTMAP|ptr\(1),
	datad => \CONVERSION_DATA|tens[2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LCD_PORTMAP|Selector31~1_combout\);

-- Location: LC_X7_Y4_N9
\LCD_PORTMAP|Selector31~0\ : maxii_lcell
-- Equation(s):
-- \LCD_PORTMAP|Selector31~0_combout\ = (!\LCD_PORTMAP|ptr\(2) & ((\LCD_PORTMAP|ptr\(3) & (\LCD_PORTMAP|ptr\(1) & \CONVERSION_DATA|unit[2]~1\)) # (!\LCD_PORTMAP|ptr\(3) & (!\LCD_PORTMAP|ptr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2101",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_PORTMAP|ptr\(3),
	datab => \LCD_PORTMAP|ptr\(2),
	datac => \LCD_PORTMAP|ptr\(1),
	datad => \CONVERSION_DATA|unit[2]~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LCD_PORTMAP|Selector31~0_combout\);

-- Location: LC_X7_Y4_N7
\LCD_PORTMAP|data_to_display[2]\ : maxii_lcell
-- Equation(s):
-- \LCD_PORTMAP|data_to_display\(2) = DFFEAS((\LCD_PORTMAP|ptr\(0) & (((\LCD_PORTMAP|Selector31~0_combout\)) # (!\LCD_PORTMAP|state.lcd_display~regout\))) # (!\LCD_PORTMAP|ptr\(0) & (\LCD_PORTMAP|state.lcd_display~regout\ & 
-- (\LCD_PORTMAP|Selector31~1_combout\))), GLOBAL(\clk~combout\), VCC, , \LCD_PORTMAP|state.lcd_power_up~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \LCD_PORTMAP|ptr\(0),
	datab => \LCD_PORTMAP|state.lcd_display~regout\,
	datac => \LCD_PORTMAP|Selector31~1_combout\,
	datad => \LCD_PORTMAP|Selector31~0_combout\,
	aclr => GND,
	ena => \LCD_PORTMAP|state.lcd_power_up~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_PORTMAP|data_to_display\(2));

-- Location: LC_X2_Y3_N2
\LCD_PORTMAP|Selector30~1\ : maxii_lcell
-- Equation(s):
-- \LCD_PORTMAP|Selector30~1_combout\ = (\LCD_PORTMAP|ptr\(0) & ((\CONVERSION_DATA|unit[3]~2_combout\) # ((!\LCD_PORTMAP|ptr\(1))))) # (!\LCD_PORTMAP|ptr\(0) & (((\LCD_PORTMAP|ptr\(1) & \CONVERSION_DATA|tens[3]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "da8a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_PORTMAP|ptr\(0),
	datab => \CONVERSION_DATA|unit[3]~2_combout\,
	datac => \LCD_PORTMAP|ptr\(1),
	datad => \CONVERSION_DATA|tens[3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LCD_PORTMAP|Selector30~1_combout\);

-- Location: LC_X2_Y3_N3
\LCD_PORTMAP|Selector30~2\ : maxii_lcell
-- Equation(s):
-- \LCD_PORTMAP|Selector30~2_combout\ = (\LCD_PORTMAP|ptr\(1) & (((\LCD_PORTMAP|ptr\(3) & !\LCD_PORTMAP|Selector30~1_combout\)) # (!\LCD_PORTMAP|state.lcd_display~regout\))) # (!\LCD_PORTMAP|ptr\(1) & (((\LCD_PORTMAP|state.lcd_display~regout\ & 
-- \LCD_PORTMAP|Selector30~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c8c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_PORTMAP|ptr\(3),
	datab => \LCD_PORTMAP|ptr\(1),
	datac => \LCD_PORTMAP|state.lcd_display~regout\,
	datad => \LCD_PORTMAP|Selector30~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LCD_PORTMAP|Selector30~2_combout\);

-- Location: LC_X2_Y3_N4
\LCD_PORTMAP|data_to_display[3]\ : maxii_lcell
-- Equation(s):
-- \LCD_PORTMAP|data_to_display\(3) = DFFEAS((\LCD_PORTMAP|ptr\(2) & (!\LCD_PORTMAP|ptr\(3) & (\LCD_PORTMAP|Selector30~0_combout\))) # (!\LCD_PORTMAP|ptr\(2) & (((!\LCD_PORTMAP|Selector30~2_combout\)))), GLOBAL(\clk~combout\), VCC, , 
-- \LCD_PORTMAP|state.lcd_power_up~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "404f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \LCD_PORTMAP|ptr\(3),
	datab => \LCD_PORTMAP|Selector30~0_combout\,
	datac => \LCD_PORTMAP|ptr\(2),
	datad => \LCD_PORTMAP|Selector30~2_combout\,
	aclr => GND,
	ena => \LCD_PORTMAP|state.lcd_power_up~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_PORTMAP|data_to_display\(3));

-- Location: LC_X7_Y2_N8
\LCD_PORTMAP|Mux7~0\ : maxii_lcell
-- Equation(s):
-- \LCD_PORTMAP|Mux7~0_combout\ = (\LCD_PORTMAP|ptr\(3) & (!\LCD_PORTMAP|ptr\(2))) # (!\LCD_PORTMAP|ptr\(3) & ((\LCD_PORTMAP|ptr\(2) & (\LCD_PORTMAP|ptr\(1))) # (!\LCD_PORTMAP|ptr\(2) & (!\LCD_PORTMAP|ptr\(1) & \LCD_PORTMAP|ptr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6362",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_PORTMAP|ptr\(3),
	datab => \LCD_PORTMAP|ptr\(2),
	datac => \LCD_PORTMAP|ptr\(1),
	datad => \LCD_PORTMAP|ptr\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LCD_PORTMAP|Mux7~0_combout\);

-- Location: LC_X7_Y2_N4
\LCD_PORTMAP|data_to_display[4]\ : maxii_lcell
-- Equation(s):
-- \LCD_PORTMAP|data_to_display\(4) = DFFEAS((\LCD_PORTMAP|state.lcd_display~regout\ & (\LCD_PORTMAP|Mux7~0_combout\)) # (!\LCD_PORTMAP|state.lcd_display~regout\ & (((!\LCD_PORTMAP|ptr\(2) & \LCD_PORTMAP|Selector29~0_combout\)))), GLOBAL(\clk~combout\), VCC, 
-- , \LCD_PORTMAP|state.lcd_power_up~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa30",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \LCD_PORTMAP|Mux7~0_combout\,
	datab => \LCD_PORTMAP|ptr\(2),
	datac => \LCD_PORTMAP|Selector29~0_combout\,
	datad => \LCD_PORTMAP|state.lcd_display~regout\,
	aclr => GND,
	ena => \LCD_PORTMAP|state.lcd_power_up~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_PORTMAP|data_to_display\(4));

-- Location: LC_X7_Y2_N2
\LCD_PORTMAP|data_to_display[5]\ : maxii_lcell
-- Equation(s):
-- \LCD_PORTMAP|data_to_display\(5) = DFFEAS((\LCD_PORTMAP|state.lcd_display~regout\ & (((\LCD_PORTMAP|ptr\(3))))) # (!\LCD_PORTMAP|state.lcd_display~regout\ & (\LCD_PORTMAP|Selector29~0_combout\ & ((!\LCD_PORTMAP|ptr\(2))))), GLOBAL(\clk~combout\), VCC, , 
-- \LCD_PORTMAP|state.lcd_power_up~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0ca",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \LCD_PORTMAP|Selector29~0_combout\,
	datab => \LCD_PORTMAP|ptr\(3),
	datac => \LCD_PORTMAP|state.lcd_display~regout\,
	datad => \LCD_PORTMAP|ptr\(2),
	aclr => GND,
	ena => \LCD_PORTMAP|state.lcd_power_up~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_PORTMAP|data_to_display\(5));

-- Location: LC_X2_Y3_N0
\LCD_PORTMAP|Mux5~0\ : maxii_lcell
-- Equation(s):
-- \LCD_PORTMAP|Mux5~0_combout\ = (\LCD_PORTMAP|ptr\(3) & (((!\LCD_PORTMAP|ptr\(2)) # (!\LCD_PORTMAP|ptr\(1))) # (!\LCD_PORTMAP|ptr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_PORTMAP|ptr\(0),
	datab => \LCD_PORTMAP|ptr\(1),
	datac => \LCD_PORTMAP|ptr\(2),
	datad => \LCD_PORTMAP|ptr\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LCD_PORTMAP|Mux5~0_combout\);

-- Location: LC_X2_Y3_N9
\LCD_PORTMAP|data_to_display[6]\ : maxii_lcell
-- Equation(s):
-- \LCD_PORTMAP|data_to_display\(6) = DFFEAS((\LCD_PORTMAP|state.lcd_display~regout\ & (((\LCD_PORTMAP|data_to_display\(6) & !\LCD_PORTMAP|state.lcd_power_up~regout\)) # (!\LCD_PORTMAP|Mux5~0_combout\))) # (!\LCD_PORTMAP|state.lcd_display~regout\ & 
-- (\LCD_PORTMAP|data_to_display\(6) & ((!\LCD_PORTMAP|state.lcd_power_up~regout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ace",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \LCD_PORTMAP|state.lcd_display~regout\,
	datab => \LCD_PORTMAP|data_to_display\(6),
	datac => \LCD_PORTMAP|Mux5~0_combout\,
	datad => \LCD_PORTMAP|state.lcd_power_up~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_PORTMAP|data_to_display\(6));

-- Location: LC_X7_Y2_N5
\LCD_PORTMAP|data_to_display[7]\ : maxii_lcell
-- Equation(s):
-- \LCD_PORTMAP|data_to_display\(7) = DFFEAS((\LCD_PORTMAP|data_to_display\(7) & (((\LCD_PORTMAP|ptr\(2) & \LCD_PORTMAP|state.lcd_init~regout\)) # (!\LCD_PORTMAP|state.lcd_power_up~regout\))) # (!\LCD_PORTMAP|data_to_display\(7) & (\LCD_PORTMAP|ptr\(2) & 
-- (\LCD_PORTMAP|state.lcd_init~regout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0ea",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \LCD_PORTMAP|data_to_display\(7),
	datab => \LCD_PORTMAP|ptr\(2),
	datac => \LCD_PORTMAP|state.lcd_init~regout\,
	datad => \LCD_PORTMAP|state.lcd_power_up~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_PORTMAP|data_to_display\(7));

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\TX~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \UART_PORTMAP|TX~regout\,
	oe => VCC,
	padio => ww_TX);

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\cs~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ADC_PORTMAP|ALT_INV_cs~regout\,
	oe => VCC,
	padio => ww_cs);

-- Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\wr~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ADC_PORTMAP|ALT_INV_cs~regout\,
	oe => VCC,
	padio => ww_wr);

-- Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rd~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ADC_PORTMAP|ALT_INV_rd~regout\,
	oe => VCC,
	padio => ww_rd);

-- Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\clk_adc_out~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \CLK_CHIA|temp~regout\,
	oe => VCC,
	padio => ww_clk_adc_out);

-- Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\lcd_rw~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_lcd_rw);

-- Location: PIN_68,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\lcd_rs~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \LCD_PORTMAP|lcd_rs~regout\,
	oe => VCC,
	padio => ww_lcd_rs);

-- Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\lcd_en~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \LCD_PORTMAP|lcd_en~regout\,
	oe => VCC,
	padio => ww_lcd_en);

-- Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\data_to_display[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \LCD_PORTMAP|data_to_display\(0),
	oe => VCC,
	padio => ww_data_to_display(0));

-- Location: PIN_76,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\data_to_display[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \LCD_PORTMAP|data_to_display\(1),
	oe => VCC,
	padio => ww_data_to_display(1));

-- Location: PIN_78,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\data_to_display[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \LCD_PORTMAP|data_to_display\(2),
	oe => VCC,
	padio => ww_data_to_display(2));

-- Location: PIN_77,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\data_to_display[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \LCD_PORTMAP|data_to_display\(3),
	oe => VCC,
	padio => ww_data_to_display(3));

-- Location: PIN_82,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\data_to_display[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \LCD_PORTMAP|data_to_display\(4),
	oe => VCC,
	padio => ww_data_to_display(4));

-- Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\data_to_display[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \LCD_PORTMAP|data_to_display\(5),
	oe => VCC,
	padio => ww_data_to_display(5));

-- Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\data_to_display[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \LCD_PORTMAP|data_to_display\(6),
	oe => VCC,
	padio => ww_data_to_display(6));

-- Location: PIN_83,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\data_to_display[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \LCD_PORTMAP|data_to_display\(7),
	oe => VCC,
	padio => ww_data_to_display(7));
END structure;


