library ieee;
use ieee.std_logic_1164.all;

entity Score_SerialReceiver_ShiftRegister_tb is
end Score_SerialReceiver_ShiftRegister_tb;

architecture behavioral of Score_SerialReceiver_ShiftRegister_tb is

component Score_SerialReceiver_ShiftRegister is port(
	data : in std_logic;
	clk : in std_logic;
	enableShift : in std_logic;
	Reset : in std_logic;
	D : out std_logic_vector(8 downto 0)
);
end component;		

-- UUT signals
constant MCLK_PERIOD : time := 20 ns;
constant MCLK_HALF_PERIOD : time := MCLK_PERIOD / 2;

signal data_tb, clk_tb, enableShift_tb, Reset_tb : std_logic;
signal D_tb : std_logic_vector(6 downto 0);

begin

-- Unit Under Test
UUT: Score_SerialReceiver_ShiftRegister port map(
	data => data_tb,
	clk => clk_tb,
	enableShift => enableShift_tb,
	Reset => Reset_tb,
	D => D_tb
);

clk_gen : process
begin
	clk_tb <= '0';
	wait for MCLK_HALF_PERIOD;
	clk_tb <= '1';
	wait for MCLK_HALF_PERIOD;
end process;
					
stimulus: process
begin

	Reset_tb <= '1';
	enableShift_tb <= '0';
	data_tb <= '0';
	wait for MCLK_PERIOD*2;

	Reset_tb <= '0';
	wait for MCLK_PERIOD*2;

	-- Palavra igual ao teste do ParityCheck = 1010101

	-- 1
	data_tb <= '1';
	enableShift_tb <= '1';
	wait for MCLK_PERIOD;

	-- 0
	data_tb <= '0';
	enableShift_tb <= '1';
	wait for MCLK_PERIOD;

	-- 1
	data_tb <= '1';
	enableShift_tb <= '1';
	wait for MCLK_PERIOD;

	-- 0 
	data_tb <= '0';
	enableShift_tb <= '1';
	wait for MCLK_PERIOD;

	-- 1
	data_tb <= '1';
	enableShift_tb <= '1';
	wait for MCLK_PERIOD;

	-- 0
	data_tb <= '0';
	enableShift_tb <= '1';
	wait for MCLK_PERIOD;

	-- 1
	data_tb <= '1';
	enableShift_tb <= '1';
	wait for MCLK_PERIOD;

	enableShift_tb <= '0';
	wait for MCLK_PERIOD;

wait;
end process;

end behavioral;