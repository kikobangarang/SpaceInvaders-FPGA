library ieee;
use ieee.std_logic_1164.all;

entity MAC_Compare_tb is
end MAC_Compare_tb;

architecture behavioral of MAC_Compare_tb is

component MAC_Compare is
port(
	incPutOut, incGetOut: in std_logic_vector(2 downto 0);
	Q: out std_logic
);
end component;

-- UUT Signals
constant MCLK_PERIOD : time := 20ns;
constant MCLK_HALF_PERIOD : time := MCLK_PERIOD / 2;

signal Q_tb : std_logic;
signal incGetOut_tb, incPutOut_tb : std_logic_vector(2 downto 0);


begin

-- Unit Under Test
UUT: MAC_Compare port map(
	incPutOut => incPutOut_tb, 
	incGetOut => incGetOut_tb,
	Q => Q_tb
);
	
stimulus : process
begin

	incGetOut_tb <= "011";
	incPutOut_tb <= "100";
	wait for MCLK_PERIOD*2;

	incGetOut_tb <= "101";
	incPutOut_tb <= "101";
	wait for MCLK_PERIOD*2;

	incGetOut_tb <= "000";
	incPutOut_tb <= "111";
	wait for MCLK_PERIOD*2;

	incGetOut_tb <= "000";
	incPutOut_tb <= "000";
	wait for MCLK_PERIOD*2;
	

	
wait;
end process;

end behavioral;