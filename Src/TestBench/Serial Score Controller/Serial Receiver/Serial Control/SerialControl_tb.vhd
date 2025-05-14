library ieee;
use ieee.std_logic_1164.all;

entity SerialControl_tb is 
end SerialControl_tb;

architecture behavioral of SerialControl_tb is
    component SerialControl is port(
    	Reset, clk, enRX, accept, dFlag, pFlag, RXerror: in std_logic;
		DXval, wr, init: out std_logic
	);
	end component;
   
    -- UUT Signals
    constant MCLK_PERIOD : time := 20ns;
    constant MCLK_HALF_PERIOD : time := MCLK_PERIOD / 2;

	signal Reset_tb, clk_tb, enRX_tb, accept_tb, dFlag_tb, pFlag_tb, RXerror_tb: std_logic;
	signal DXval_tb, wr_tb, init_tb: std_logic;


    begin

        --Unit Under Test

        UUT:SerialControl port map(
			Reset => Reset_tb, 
			clk => clk_tb, 
			enRX => enRX_tb, 
			accept => accept_tb, 
			dFlag => dFlag_tb, 
			pFlag => pFlag_tb, 
			RXerror => RXerror_tb,
			DXval => DXval_tb, 
			wr => wr_tb, 
			init => init_tb
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
					enRX_tb <= '0';
					accept_tb <= '0';
					pFlag_tb <= '0';
					dFlag_tb <= '0';
					RXerror_tb <= '0';
					wait for MCLK_PERIOD*2;

					Reset_tb <= '0';
					wait for MCLK_PERIOD*2;

					enRX_tb <= '1';
					wait for MCLK_PERIOD*2;

					dFlag_tb <= '1';
					wait for MCLK_PERIOD*2;
					
					RXerror_tb <= '1';
					pFlag_tb <= '1';
					wait for MCLK_PERIOD*2;

					RXerror_tb <= '0';
					wait for MCLK_PERIOD*2;

					accept_tb <= '1';
					wait for MCLK_PERIOD*2;
					
          wait;
          end process;
			 
end behavioral;