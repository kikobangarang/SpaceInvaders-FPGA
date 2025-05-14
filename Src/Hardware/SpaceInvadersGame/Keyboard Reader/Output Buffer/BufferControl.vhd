library ieee;
use ieee.std_logic_1164.all;

entity BufferControl is
port(
	Reset, clk, Load, ACK: in std_logic;
	OBfree, Wreg, Dval: out std_logic
);
end BufferControl;

architecture behavioral of BufferControl is

type STATE_TYPE is (STATE_WAITING, STATE_WRITING);

signal CurrentState, NextState: STATE_TYPE;

begin

-- Flip-Flop's
CurrentState <= STATE_WAITING when Reset = '1' else NextState when rising_edge(clk);

-- Generate Next State
GenerateNextState:
process (CurrentState, Load, ACK)
	begin
		case CurrentState is
			when STATE_WAITING => if(Load = '1') then NextState <= STATE_WRITING;
				else NextState <= STATE_WAITING;
					end if;
					
			when STATE_WRITING => if(ACK = '1' and Load = '0') then NextState <= STATE_WAITING;
				else NextState <= STATE_WRITING;
					end if;
		end case;
	end process;

OBfree <= '1' when (CurrentState = STATE_WAITING) else '0';
Dval <= '1' when (CurrentState = STATE_WRITING) else '0';
Wreg <= '1' when (CurrentState = STATE_WRITING) else '0';

end behavioral;