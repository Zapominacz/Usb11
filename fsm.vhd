library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;

entity fsm is
    Port ( d_p : in  STD_LOGIC; -- D+
           d_m : in  STD_LOGIC; -- D-
           clk_60mhz : in  STD_LOGIC; --clock 5x USB 1.1 (12 MHz)
           synced : out  STD_LOGIC; -- is synced
           data : out  std_logic_vector(63 downto 0)); -- output bit from USB
end fsm;

architecture behavioral of fsm is

	constant sync_pattern : std_logic_vector(7 downto 0) := "01010100";
	-- sync pattern defined in USB 1.1 specification, in NRZI form
	signal received_bits : std_logic_vector(7 downto 0) := (others => '0');
	-- received bits for checking if we reach sync pattern
	signal wave_length_counter : std_logic_vector(2 downto 0) := (others => '0');
	-- range (0 - 4), used to determine position in usb signal
	
	signal sync_bits_counter : std_logic_vector(3 downto 0) := (others => '0');
	-- counts bits to determine when we should check if we caught sync pattern
	
	signal i_synced : std_logic := '0'; --internal signal for synced
	
	--- sync machine states ---
	type state_type is (idle, syncing, is_synced); 
	signal state : state_type := idle;
	signal next_state : state_type;
	
begin

	state_trigger_process : process(clk_60mhz)
		begin -- only for triggering state change in state_process
		if rising_edge(clk_60mhz) then
			state <= next_state;
		end if;
	end process state_trigger_process;
	
	wave_lenght_counter_process : process(clk_60mhz, state, next_state)
		begin -- counts actual poisiton in peroid, resets on mod 5 or state change
		if rising_edge(clk_60mhz) then
			if(wave_length_counter = "100") then
				wave_length_counter <= (others => '0');
			elsif(state = idle and next_state = syncing) then
				wave_length_counter <= "001";
			else
				wave_length_counter <= wave_length_counter + 1;
			end if;
		end if;
	end process wave_lenght_counter_process;

	state_process : process(state, wave_length_counter) 
		begin --based on default template, used only for state changing
		next_state <= state;
		
		case state is
			when idle =>
				if(d_p = '0') then --waiting for zero to start sync
					next_state <= syncing;
				end if;
			when syncing => -- counts sync bits
				if(wave_length_counter = "010") then --when we are in the middle of peroid
					received_bits <= received_bits(6 downto 0) & d_p; --moves register with saved bits
					sync_bits_counter <= sync_bits_counter + 1; -- and increments counter
				end if;
				if(sync_bits_counter = "1000") then
					if(received_bits = sync_pattern) then
						next_state <= is_synced; --caught sync signal
					else
						next_state <= idle; --failed - reset
						sync_bits_counter <= (others => '0');
						received_bits <= (others => '0');
					end if;
				end if;
			when is_synced =>
				i_synced <= '1';	--indicates the sync occured				
			end case;
	end process state_process;

	--- Copying internal signals to destination signals ---
	synced <= i_synced;
	
	
	

--	wave_listener : process (d_p, clk_60mhz) 
--	begin
--		if(rising_edge(d_p) and (state = idle)) then
--			state <= syncing;
--		end if;
--		if(rising_edge(clk_60mhz) and (state = syncing)) then
--			if(wave_length_counter = "100") then
--				wave_length_counter <="000";
--			elsif(wave_length_counter = "010") then
--				received_bits <= received_bits(6 downto 0) & d_p;
--				wave_length_counter <= wave_length_counter + 1;
--				if(received_bits = sync_pattern) then
--					sync_pattern_received <= '1';
--					state <= is_synced;
--				end if;
--			else
--				wave_length_counter <= wave_length_counter + 1;
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

