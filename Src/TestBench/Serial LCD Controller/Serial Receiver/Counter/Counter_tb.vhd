library ieee;
use ieee.std_logic_1164.all;

entity Counter_tb is
end Counter_tb;

architecture behavioral of Counter_tb is

component Counter is
port(
	clear, clk: in std_logic;
	Q: out std_logic_vector(3 downto 0)
);
end component;

-- UUT Signals
constant MCLK_PERIOD : time := 20ns;
constant MCLK_HALF_PERIOD : time := MCLK_PERIOD / 2;

signal clear_tb : std_logic;
signal clk_tb : std_logic;
signal Q_tb : std_logic_vector(3 downto 0);


begin

-- Unit Under Test
UUT: Counter port map(
	clear => clear_tb,
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

	-- Clear
	clear_tb <= '1';
	wait for MCLK_PERIOD*2;
	
	-- Counting Up till 15
	clear_tb <= '0';
	wait for MCLK_PERIOD*15;

	-- Clear
	clear_tb <= '1';
	wait for MCLK_PERIOD*2;
	
wait;
end process;

end behavioral;