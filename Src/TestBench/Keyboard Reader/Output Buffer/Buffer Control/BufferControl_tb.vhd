library ieee;
use ieee.std_logic_1164.all;

entity BufferControl_tb is 
end BufferControl_tb;

architecture behavioral of BufferControl_tb is
    
	component BufferControl is port(
		Reset, clk, Load, ACK: in std_logic;
		OBfree, Wreg, Dval: out std_logic
);
end component;
   
    -- UUT Signals
    constant MCLK_PERIOD : time := 20ns;
    constant MCLK_HALF_PERIOD : time := MCLK_PERIOD / 2;

	signal clk_tb, Reset_tb, Load_tb,  ACK_tb, OBfree_tb, Wreg_tb, Dval_tb: std_logic; 

    begin

        --Unit Under Test

        UUT: BufferControl port map(
			    Reset => Reset_tb, 
				clk => clk_tb, 
				Load => Load_tb, 
				ACK => ACK_tb,
				OBfree => OBfree_tb, 
				Wreg => Wreg_tb, 
				Dval => Dval_tb
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
			Load_tb <= '0';
			ACK_tb <= '0';
			wait for MCLK_PERIOD*2;

			Reset_tb <= '0';
			wait for MCLK_PERIOD*2;

			Load_tb <= '1';
			wait for MCLK_PERIOD*2;
			
			ACK_tb <= '1';
			wait for MCLK_PERIOD*2;
			
			ACK_tb <= '0';
			wait for MCLK_PERIOD*2;
			
          wait;
          end process;
			 
end behavioral;