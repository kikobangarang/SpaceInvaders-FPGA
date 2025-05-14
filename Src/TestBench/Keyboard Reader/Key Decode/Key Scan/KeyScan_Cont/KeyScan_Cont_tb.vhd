library ieee;
use ieee.std_logic_1164.all;

entity KeyScan_Cont_tb is
end KeyScan_Cont_tb;

architecture behavioral of KeyScan_Cont_tb is

component KeyScan_Cont is
port(
	CE, Reset, clk: in std_logic;
	Q: out std_logic_vector(3 downto 0)
);
end component;

-- UUT Signals
constant MCLK_PERIOD : time := 20ns;
constant MCLK_HALF_PERIOD : time := MCLK_PERIOD / 2;

signal CE_tb : std_logic;
signal Reset_tb : std_logic;
signal clk_tb : std_logic;
signal Q_tb : std_logic_vector(3 downto 0);


begin

-- Unit Under Test
UUT: KeyScan_Cont port map(
	Reset => Reset_tb,
	CE => CE_tb,
	clk => clk_tb,
	Q => Q_tb
);

clk_gen : process
begin
	clk_tb <= '0';
	wait for MCLK_HALF_PERIOD;
	clk_tb <= '1';
	wait for MCLK_HALF_PERIOD;
end process;
	
stimulus : process
begin

	--reset
	Reset_tb <= '1';
	CE_tb <= '0';
	wait for MCLK_PERIOD*2;
	
	-- Counting Up till 15
	Reset_tb <= '0';
	CE_tb <= '1';
	wait for MCLK_PERIOD*15;

	Reset_tb <= '1';
	
wait;
end process;

end behavioral;