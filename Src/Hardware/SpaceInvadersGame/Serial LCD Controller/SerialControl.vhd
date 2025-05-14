library ieee;
use ieee.std_logic_1164.all;

entity SerialControl is
port(
	Reset, clk, enRX, accept, dFlag, pFlag, RXerror: in std_logic;
	wr, init, DXval: out std_logic
);
end SerialControl;

architecture behavioral of SerialControl is

type STATE_TYPE is (STATE_INIT, STATE_WRITING, STATE_ERRORCHECK, STATE_WAITINGACCEPT);

signal CurrentState, NextState : STATE_TYPE;

begin

-- Flip-Flop's
CurrentState <= STATE_INIT when Reset = '1' else NextState when rising_edge(clk);

--Generate Next State
GenerateNextState:
process(CurrentState, enRX, accept, dFlag, pFlag, RXerror)
	
	begin
		
		case CurrentState is
			
			when STATE_INIT => if(enRX = '0' and accept = '0') then
										NextState <= STATE_WRITING;
									else NextState <= STATE_INIT;
										end if;
						
			when STATE_WRITING => if(dFlag = '1') then
											NextState <= STATE_ERRORCHECK;
										else if(enRX = '0') then
											NextState <= STATE_WRITING;
										else NextState <= STATE_INIT;
											end if;
										end if;
			
			when STATE_ERRORCHECK =>if(enRX = '1') then
												if(pFlag = '1') then
													if(RXerror = '0') then
														NextState <= STATE_WAITINGACCEPT;
													else NextState <= STATE_INIT;
														end if;
												else NextState <= STATE_INIT;
													end if;
											else NextState <= STATE_ERRORCHECK;
												end if;
													
			when STATE_WAITINGACCEPT => if(accept = '1') then
													NextState <= STATE_INIT;
														else NextState <= STATE_WAITINGACCEPT;
															end if;
		end case;														
	end process;
								
wr <= '1' when (CurrentState = STATE_WRITING) else '0';
init <= '1' when (CurrentState = STATE_INIT) else '0';
DXval <= '1' when (CurrentState = STATE_WAITINGACCEPT) else '0';
	
end behavioral;