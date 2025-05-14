library ieee;
use ieee.std_logic_1164.all;

entity OutputBuffer_tb is 
end OutputBuffer_tb;

architecture behavioral of OutputBuffer_tb is
    
	component OutputBuffer is port(	
		D : in std_logic_vector(3 downto 0);
		Load, Reset, ACK, clk: in std_logic;
		Q : out std_logic_vector(3 downto 0);
		OBfree, Dval : out std_logic
);
end component;
   
    -- UUT Signals
    constant MCLK_PERIOD : time := 20ns;
    constant MCLK_HALF_PERIOD : time := MCLK_PERIOD / 2;

	signal D_tb, Q_tb : std_logic_vector(3 downto 0);
	signal clk_tb, Reset_tb, Load_tb,  ACK_tb, OBfree_tb, Dval_tb : std_logic; 

    begin

        --Unit Under Test

        UUT: OutputBuffer port map(
			    D => D_tb,
				Load => Load_tb,
				Reset => Reset_tb,
				ACK => ACK_tb,
				clk => clk_tb,
				Q => Q_tb,
				OBfree => OBfree_tb,
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
			D_tb <= "0000";
			wait for MCLK_PERIOD*2;

			Reset_tb <= '0';
			wait for MCLK_PERIOD*2;

			D_tb <= "1001";
			wait for MCLK_PERIOD*2;

			Load_tb <= '1';
			wait for MCLK_PERIOD*2;

			ACK_tb  <= '1';
			wait for MCLK_PERIOD*2;

			Load_tb  <= '0';
			wait for MCLK_PERIOD*2;

			Reset_tb <= '1';
			wait for MCLK_PERIOD*2;
			
          wait;
          end process;
			 
end behavioral;