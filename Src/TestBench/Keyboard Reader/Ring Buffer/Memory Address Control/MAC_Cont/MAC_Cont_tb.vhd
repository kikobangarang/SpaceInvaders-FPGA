library ieee;
use ieee.std_logic_1164.all;

entity MAC_Cont_tb is
end MAC_Cont_tb;

architecture behavioral of MAC_Cont_tb is

component MAC_Cont is
port(
	Reset, clk, CE: in std_logic;
	Q: out std_logic_vector(2 downto 0)
);
end component;

-- UUT Signals
constant MCLK_PERIOD : time := 20ns;
constant MCLK_HALF_PERIOD : time := MCLK_PERIOD / 2;

signal Reset_tb, clk_tb, CE_tb : std_logic;
signal Q_tb : std_logic_vector(2 downto 0);


begin

-- Unit Under Test
UUT: MAC_Cont port map(
	Reset => Reset_tb,
	clk => clk_tb,
	CE => CE_tb,
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

	-- Reset
	Reset_tb <= '1';
	wait for MCLK_PERIOD*2;
	
	-- Counting Up till 7
	Reset_tb <= '0';
	CE_tb <= '1';
	wait for MCLK_PERIOD*7;

	-- Reset
	Reset_tb <= '1';
	wait for MCLK_PERIOD*2;
	
wait;
end process;

end behavioral;