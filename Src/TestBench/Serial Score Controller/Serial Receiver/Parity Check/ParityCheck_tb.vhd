library ieee;
use ieee.std_logic_1164.all;

entity ParityCheck_tb is 
end ParityCheck_tb;

architecture behavioral of ParityCheck_tb is
    component ParityCheck is port(
    	data: in std_logic;
		clk: in std_logic;
		init: in std_logic;
		err: out std_logic
	);
	end component;
   
    -- UUT Signals
    constant MCLK_PERIOD : time := 20ns;
    constant MCLK_HALF_PERIOD : time := MCLK_PERIOD / 2;

	signal data_tb : std_logic;
    signal clk_tb : std_logic;
	signal init_tb: std_logic;
	signal err_tb: std_logic;

    begin

        --Unit Under Test

        UUT:ParityCheck port map(
			    data => data_tb,
				clk => clk_tb,
	          	init => init_tb,
				err => err_tb
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
            	data_tb <= '0';
				init_tb <= '1';
				wait for MCLK_PERIOD*2;

				init_tb <= '0';
				data_tb <= '1';
				wait for MCLK_PERIOD*2;

				data_tb <= '0';
				wait for MCLK_PERIOD*2;

				data_tb <= '1';
				wait for MCLK_PERIOD*2;

				init_tb <= '1';
		wait;
		end process;
			 
end behavioral;