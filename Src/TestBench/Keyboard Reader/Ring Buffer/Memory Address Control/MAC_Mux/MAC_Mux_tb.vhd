library ieee;
use ieee.std_logic_1164.all;

entity MAC_Mux_tb is 
end MAC_Mux_tb;

architecture behavioral of MAC_Mux_tb is
    component MAC_Mux is port(
        incPutOut, incGetOut: in std_logic_vector(2 downto 0);
		putGet: in std_logic;
		Address: out std_logic_vector(2 downto 0)
    );
    end component;

-- UUT signals
constant MCLK_PERIOD : time := 20 ns;
constant MCLK_HALF_PERIOD : time := MCLK_PERIOD / 2;

    signal incGetOut_tb, incPutOut_tb: std_logic_vector(2 downto 0);
	signal putGet_tb : std_logic;
	signal Address_tb : std_logic_vector(2 downto 0);

    begin

        --Unit Under Test

        UUT: MAC_Mux port map(
            incPutOut => incPutOut_tb,
			incGetOut => incGetOut_tb,
			putGet => putGet_tb,
			Address => Address_tb
        );

        stimulus: process
        begin
					
					incGetOut_tb <= "101";
					incPutOut_tb <= "010";
					putGet_tb <= '0';
					wait for MCLK_PERIOD*2;


					putGet_tb <= '1';
					wait for MCLK_PERIOD*2;

            wait;
            end process;

end behavioral;