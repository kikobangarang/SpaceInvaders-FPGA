library ieee;
use ieee.std_logic_1164.all;

entity Score_Dispatcher_tb is 
end Score_Dispatcher_tb;

architecture behavioral of Score_Dispatcher_tb is
    
	component Score_Dispatcher is port(
    	Din: in std_logic_vector(6 downto 0);
		Dval, clk, Reset: in std_logic;
		WrD, done: out std_logic;
		Dout: out std_logic_vector(6 downto 0)
	);
	end component;
   
    -- UUT Signals
    constant MCLK_PERIOD : time := 20ns;
    constant MCLK_HALF_PERIOD : time := MCLK_PERIOD / 2;

	signal Dval_tb, clk_tb, Reset_tb, WrD_tb, done_tb: std_logic;
	signal Din_tb, Dout_tb: std_logic_vector(6 downto 0);


    begin

        --Unit Under Test

        UUT:Score_Dispatcher port map(
			    Din => Din_tb,
				Dval => Dval_tb, 
				clk => clk_tb, 
				Reset => Reset_tb,
				WrD => WrD_tb, 
				done => done_tb,
				Dout => Dout_tb
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

					Din_tb <= "0000000";
					Dval_tb <= '0';
					Reset_tb <= '1';
					wait for MCLK_PERIOD*2;

					Reset_tb <= '0';
					wait for MCLK_PERIOD*2;

					Din_tb <= "1010101";
					wait for MCLK_PERIOD*2;

					Dval_tb <= '1';
					wait for MCLK_PERIOD*6;

					Dval_tb <= '0';
					wait for MCLK_PERIOD*2;

          wait;
          end process;
			 
end behavioral;