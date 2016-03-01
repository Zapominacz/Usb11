library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;

entity fsm is
    Port ( DP : in  STD_LOGIC;
           DM : in  STD_LOGIC;
           Clk_60Mhz : in  STD_LOGIC;
           synced : out  STD_LOGIC;
           DO : out  STD_LOGIC);
end fsm;

architecture Behavioral of fsm is
	
	type state_type is (SYNC, SYNCED, END_OF_TRANSMISSION)
	signal state, next_state : state_type;
	
	signal counter

begin
	
	process_of_data : process ( Clk_60Mhz )
	begin
		case state is
			when SYNC =>
			when SYNCED =>
			when END_OF_TRANSMISSION =>
		end case;
	end process process_of_data;


end Behavioral;

