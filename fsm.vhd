library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity fsm is
    Port ( DP : in  STD_LOGIC; -- D+
           DM : in  STD_LOGIC; -- D-
           Clk_60Mhz : in  STD_LOGIC; --clock 5x USB 1.1 (12 MHz)
           synced : out  STD_LOGIC; -- is synced
           data : out  std_logic_vector(63 downto 0)); -- output bit from USB
end fsm;

architecture Behavioral of fsm is

	constant sync_pattern : std_logic_vector(7 downto 0) := "01010100";
	-- sync pattern defined in USB 1.1 specification
	signal received_bits : std_logic_vector(7 downto 0) := (others => '0');
	-- received 
	signal nth_bit : std_logic_vector(2 downto 0) := (others => '0');
	-- nth received bit (0 to 4)
	
	signal internal_synced : std_logic := '0';
	
	type state_type is (idle, syncing, is_synced);
	signal state : state_type := idle;
	signal next_state : state_type;
	
	signal number_of_received_bits : std_logic_vector(3 downto 0) := (others => '0');
	
begin

	triggerProcess : process(Clk_60Mhz)
		begin
		if rising_edge(Clk_60Mhz) then
			state <= next_state;
		end if;
	end process triggerProcess;

	nthBitCounter : process(Clk_60Mhz, state, next_state)
		begin
		if rising_edge(Clk_60Mhz) then
			if(nth_bit = "100" or (state = idle and next_state = syncing)) then
				nth_bit <= (others => '0');
			else
				nth_bit <= nth_bit + 1;
			end if;
		end if;
	end process nthBitCounter;

	stateProcess : process(state, DP)
		begin
		next_state <= state;
		
		case state is
			when idle =>
				if(DP = '0') then
					next_state <= syncing;
				end if;
			when syncing =>
				if(nth_bit = "010") then
					received_bits <= received_bits(6 downto 0) & DP;
					number_of_received_bits <= number_of_received_bits + 1;
					if((received_bits = sync_pattern) and (number_of_received_bits = 8)) then
						next_state <= is_synced;
					elsif(number_of_received_bits = 8) then
						next_state <= idle;
						number_of_received_bits <= (others => '0');
						received_bits <= (others => '0');
					end if;
				end if;
			when is_synced =>
				internal_synced <= '1';					
			end case;
	end process stateProcess;

	synced <= internal_synced;

--	wave_listener : process (DP, Clk_60Mhz) 
--	begin
--		if(rising_edge(DP) and (state = idle)) then
--			state <= syncing;
--		end if;
--		if(rising_edge(Clk_60Mhz) and (state = syncing)) then
--			if(nth_bit = "100") then
--				nth_bit <="000";
--			elsif(nth_bit = "010") then
--				received_bits <= received_bits(6 downto 0) & DP;
--				nth_bit <= nth_bit + 1;
--				if(received_bits = sync_pattern) then
--					sync_pattern_received <= '1';
--					state <= is_synced;
--				end if;
--			else
--				nth_bit <= nth_bit + 1;
--			end if;
--		end if;
--	end process wave_listener;
	
--	state_process : process(state, sync_pattern_received)
--	begin
--		next_state <= syncing;
--		
--		case state is
--			when syncing =>
--				if(sync_pattern_received = '1') then
--					next_state <= is_synced;
--				end if;
--			when idle =>
--				if(sync_pattern_received = '1') then
--					next_state <= is_synced;
--				end if;
--			when is_synced =>
--
--			end case;
--	end process state_process;

end Behavioral;

