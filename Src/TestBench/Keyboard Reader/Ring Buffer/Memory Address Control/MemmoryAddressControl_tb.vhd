library ieee;
use ieee.std_logic_1164.all;

entity MemoryAddressControl_tb is
end MemoryAddressControl_tb;

architecture behavioral of MemoryAddressControl_tb is

    component MemoryAddressControl is
    port(
        putget, incPut, incGet, Reset, clk: in std_logic;
        full, empty: out std_logic;
        Address: out std_logic_vector(2 downto 0)
    );
    end component;

    -- UUT Signals
    constant MCLK_PERIOD : time := 20 ns;
    constant MCLK_HALF_PERIOD : time := MCLK_PERIOD / 2;

    signal putget_tb, incPut_tb, incGet_tb, Reset_tb, clk_tb, full_tb, empty_tb: std_logic;
    signal Address_tb : std_logic_vector(2 downto 0);

begin

    -- Unit Under Test
    UUT: MemoryAddressControl port map(
        putget => putget_tb,
        incPut => incPut_tb,
        incGet => incGet_tb,
        Reset => Reset_tb,
        clk => clk_tb,
        full => full_tb,
        empty => empty_tb,
        Address => Address_tb
    );

    -- Clock generation process
    clk_gen : process
    begin
        clk_tb <= '0';
        wait for MCLK_HALF_PERIOD;
        clk_tb <= '1';
        wait for MCLK_HALF_PERIOD;
    end process;
    
    stimulus : process
    begin

        
        Reset_tb <= '1';
        putget_tb <= '0';
        incPut_tb <= '0';
        incGet_tb <= '0';
        wait for MCLK_PERIOD * 2;

        Reset_tb <= '0';
        wait for MCLK_PERIOD * 2;

		putget_tb <= '1';
		wait for MCLK_PERIOD * 2;

		incPut_tb <= '1';
		wait for MCLK_PERIOD;

        	incPut_tb <= '0';
		putget_tb <= '0';
		wait for MCLK_PERIOD * 8;

-------------------------------------------------

		putget_tb <= '1';
		wait for MCLK_PERIOD * 2;

		incPut_tb <= '1';
		wait for MCLK_PERIOD;

        	incPut_tb <= '0';
		putget_tb <= '0';
		wait for MCLK_PERIOD * 8;

------------------------------------------------

		putget_tb <= '1';
		wait for MCLK_PERIOD * 2;

		incPut_tb <= '1';
		wait for MCLK_PERIOD;

        	incPut_tb <= '0';
		putget_tb <= '0';
		wait for MCLK_PERIOD * 8;

-----------------------------------------------

		putget_tb <= '1';
		wait for MCLK_PERIOD * 2;

		incPut_tb <= '1';
		wait for MCLK_PERIOD;

        	incPut_tb <= '0';
		putget_tb <= '0';
		wait for MCLK_PERIOD * 8;

----------------------------------------------

		putget_tb <= '1';
		wait for MCLK_PERIOD * 2;

		incPut_tb <= '1';
		wait for MCLK_PERIOD;

        	incPut_tb <= '0';
		putget_tb <= '0';
		wait for MCLK_PERIOD * 8;

---------------------------------------------

		putget_tb <= '1';
		wait for MCLK_PERIOD * 2;

		incPut_tb <= '1';
		wait for MCLK_PERIOD;

        	incPut_tb <= '0';
		putget_tb <= '0';
		wait for MCLK_PERIOD * 8;

---------------------------------------------


		putget_tb <= '1';
		wait for MCLK_PERIOD * 2;

		incPut_tb <= '1';
		wait for MCLK_PERIOD;

        	incPut_tb <= '0';
		putget_tb <= '0';
		wait for MCLK_PERIOD * 8;

---------------------------------------------

		putget_tb <= '1';
		wait for MCLK_PERIOD * 2;

		incPut_tb <= '1';
		wait for MCLK_PERIOD;

        	incPut_tb <= '0';
		putget_tb <= '0';
		wait for MCLK_PERIOD * 8;

---------------------------------------------




        putget_tb <= '0';
        wait for MCLK_PERIOD;

	incGet_tb <= '1';
	wait for MCLK_PERIOD*8;





       

        wait;
    end process;

end behavioral;
