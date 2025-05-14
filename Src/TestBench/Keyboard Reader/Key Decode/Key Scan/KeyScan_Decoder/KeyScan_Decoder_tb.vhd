library ieee;
use ieee.std_logic_1164.all;

entity KeyScan_Decoder_tb is
end KeyScan_Decoder_tb;

architecture behavioral of KeyScan_Decoder_tb is

component KeyScan_Decoder is port(
	S: in std_logic_vector(1 downto 0);
	Col: out std_logic_vector(2 downto 0)
);
end component;

-- UUT Signals
constant MCLK_PERIOD : time := 20 ns;
constant MCLK_HALF_PERIOD : time := MCLK_PERIOD / 2;

signal S_tb :  std_logic_vector(1 downto 0);
signal Col_tb :  std_logic_vector(2 downto 0);

begin 

-- Unit Under Test
UUT: KeyScan_Decoder port map(
	S => S_tb,
	Col => Col_tb
); 
		
stimulus: process
begin
	
	S_tb <= "00";
	wait for MCLK_PERIOD*2;
	
	S_tb <= "01";
	wait for MCLK_PERIOD*2;
	
	S_tb <= "10";
	wait for MCLK_PERIOD*2;
	
	S_tb <= "11";
	wait for MCLK_PERIOD*2;
	
wait;
end process;

end behavioral;