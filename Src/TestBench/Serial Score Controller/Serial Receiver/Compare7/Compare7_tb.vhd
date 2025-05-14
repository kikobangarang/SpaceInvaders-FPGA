library ieee;
use ieee.std_logic_1164.all;

entity Compare7_tb is
end Compare7_tb;

architecture behavioral of Compare7_tb is

component Compare7 is port(
	Data: in std_logic_vector(3 downto 0);
	R: out std_logic
);
end component;		

-- UUT signals
constant MCLK_PERIOD : time := 20 ns;
constant MCLK_HALF_PERIOD : time := MCLK_PERIOD / 2;

signal Data_tb : std_logic_vector(3 downto 0);
signal R_tb : std_logic;

begin

-- Unit Under Test
UUT: Compare7 port map(
	Data => Data_tb,
	R => R_tb
);
					
stimulus: process
begin

	-- 0
    Data_tb <= "0000";
    wait for MCLK_PERIOD*2;

	-- 1
	Data_tb <= "0001";
    wait for MCLK_PERIOD*2;

	-- 2
	Data_tb <= "0010";
    wait for MCLK_PERIOD*2;

	-- 3
	Data_tb <= "0011";
    wait for MCLK_PERIOD*2;

	-- 4
	Data_tb <= "0100";
    wait for MCLK_PERIOD*2;

	-- 5
	Data_tb <= "0101";
    wait for MCLK_PERIOD*2;

	-- 6
	Data_tb <= "0110";
    wait for MCLK_PERIOD*2;

	-- 7
	Data_tb <= "0111";
    wait for MCLK_PERIOD*2;

	-- 8
	Data_tb <= "1000";
    wait for MCLK_PERIOD*2;

	-- 9
	Data_tb <= "1001";
    wait for MCLK_PERIOD*2;

	-- 10
	Data_tb <= "1010";
    wait for MCLK_PERIOD*2;

	-- 11
	Data_tb <= "1011";
    wait for MCLK_PERIOD*2;

	-- 12
	Data_tb <= "1100";
    wait for MCLK_PERIOD*2;

	-- 13
	Data_tb <= "1101";
    wait for MCLK_PERIOD*2;

	-- 14
	Data_tb <= "1110";
    wait for MCLK_PERIOD*2;

	-- 15
	Data_tb <= "1111";
    wait for MCLK_PERIOD*2;
   
wait;
end process;

end behavioral;