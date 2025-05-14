library ieee;
use ieee.std_logic_1164.all;

entity LCD_SerialReceiver_ShiftRegister is
port(	
	data : in std_logic;
	clk : in std_logic;
	enableShift : in std_logic;
	Reset : in std_logic;
	D : out std_logic_vector(8 downto 0)
);
end LCD_SerialReceiver_ShiftRegister;

architecture behavioral of LCD_SerialReceiver_ShiftRegister is

component ShiftRegister_FFD port(	
		clk : in std_logic;
		Reset : in STD_LOGIC;
		Set : in std_logic;
		D : IN STD_LOGIC;
		EN : IN STD_LOGIC;
		Q : out std_logic
);
end component;

signal term0, term1, term2, term3, term4, term5, term6, term7, term8: std_logic;

begin

FFD0: ShiftRegister_FFD port map(
		clk => clk,
		Reset => Reset,
		Set => '0',
		D => data,
		EN => enableShift,
		Q => term0
);

FFD1: ShiftRegister_FFD port map(
		clk => clk,
		Reset => Reset,
		Set => '0',
		D => term0,
		EN => enableShift,
		Q => term1
);

FFD2: ShiftRegister_FFD port map(
		clk => clk,
		Reset => Reset,
		Set => '0',
		D => term1,
		EN => enableShift,
		Q => term2
);

FFD3: ShiftRegister_FFD port map(
		clk => clk,
		Reset => Reset,
		Set => '0',
		D => term2,
		EN => enableShift,
		Q => term3
);

FFD4: ShiftRegister_FFD port map(
		clk => clk,
		Reset => Reset,
		Set => '0',
		D => term3,
		EN => enableShift,
		Q => term4
);

FFD5: ShiftRegister_FFD port map(
		clk => clk,
		Reset => Reset,
		Set => '0',
		D => term4,
		EN => enableShift,
		Q => term5
);

FFD6: ShiftRegister_FFD port map(
	clk => clk,
	Reset => Reset,
	Set => '0',
	D => term5,
	EN => enableShift,
	Q => term6
);

FFD7: ShiftRegister_FFD port map(
	clk => clk,
	Reset => Reset,
	Set => '0',
	D => term6,
	EN => enableShift,
	Q => term7
);

FFD8: ShiftRegister_FFD port map(
	clk => clk,
	Reset => Reset,
	Set => '0',
	D => term7,
	EN => enableShift,
	Q => term8
);

D(0) <= term8;
D(1) <= term7;
D(2) <= term6;
D(3) <= term5;
D(4) <= term4;
D(5) <= term3;
D(6) <= term2;
D(7) <= term1;
D(8) <= term0;


end behavioral;