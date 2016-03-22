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
	signal sync_received_bits : std_logic_vector(7 downto 0) := (others => '0');
	-- received bits for checking if we reach sync pattern
	-- reused for data bits count
	signal wave_length_counter : std_logic_vector(2 downto 0) := (others => '0');
	-- range (0 - 4), used to determine position in usb signal
	
	signal sync_bits_counter : std_logic_vector(3 downto 0) := (others => '0');
	-- counts bits to determine when we should check if we caught sync pattern
	
	signal i_data : std_logic_vector(63 downto 0) := (others => '0'); --internal for data
	
	signal decoded_bit : std_logic := '1';
	signal last_d_p : std_logic := '1';
	
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
	
	nrzi_decoder : process(clk_60mhz, wave_length_counter, state, d_p) --TODO bit stuffing!!!
		begin
		if (rising_edge(clk_60mhz) and wave_length_counter = 2) then
			if(state = is_synced) then
				decoded_bit <= last_d_p xnor d_p;
				last_d_p <= d_p;
			else 
				last_d_p <= '0';
				decoded_bit <= '1';
			end if;
		end if;
	end process nrzi_decoder;
	
--	nrzi_encoder : process(clk_60mhz, d_p)
--		begin
--		if (rising_edge(clk_60mhz) and wave_length_counter = 4) then
--			if(decoded_bit = '0') then
--				last_dp <= not last_dp;
--			else 
--				last_d_p <= last_dp;
--			end if;
--		end if;
--	end process nrzi_encoder;
	
	
	wave_lenght_counter_process : process(clk_60mhz, state, next_state) --TODO cleanup!!!
		begin -- counts actual poisiton in peroid, resets on mod 5 or state change
		if rising_edge(clk_60mhz) then
			if(wave_length_counter = 4) then
				wave_length_counter <= (others => '0');
			elsif(state = idle and next_state = syncing) then
				wave_length_counter <= "001";
			else
				wave_length_counter <= wave_length_counter + 1;
			end if;
		end if;
	end process wave_lenght_counter_process;

	state_process : process(state, d_p, sync_bits_counter, sync_received_bits) 
		begin --based on default template, used only for state changing
		next_state <= state;

		
		case state is
			when idle =>
				if(d_p = '0') then --waiting for zero to start sync
					next_state <= syncing;
				end if;
			when syncing => -- counts sync bits
				if(sync_bits_counter = 8) then
					if(sync_received_bits = sync_pattern) then
						next_state <= is_synced; --caught sync signal
					else
						next_state <= idle; --failed - reset
					end if;
				end if;
			when is_synced =>
				
			end case;
	end process state_process;
	
	register_process : process(clk_60mhz, state, wave_length_counter)
		begin
		if(rising_edge(clk_60mhz) and state = is_synced) then
			if(wave_length_counter = 2 and received_bits < 64) then
				i_data <= i_data(62 downto 0) & (last_d_p xnor d_p);
				received_bits <= received_bits + 1;
			end if;	
		end if;
	end process register_process;
						
	
	sync_counter_process : process(clk_60mhz, state, wave_length_counter)
		begin
		if(rising_edge(clk_60mhz)) then
			if(state = syncing) then
				if(wave_length_counter = 2) then --when we are in the middle of peroid
					sync_received_bits <= sync_received_bits(6 downto 0) & d_p; --moves register with saved bits
					sync_bits_counter <= sync_bits_counter + 1; -- and increments counter
				end if;
				if(sync_bits_counter = 8) then
					sync_bits_counter <= (others => '0');
					sync_received_bits <= (others => '0');
				end if;
			end if;
		end if;
	end process sync_counter_process;
	
	sync_satus : process(clk_60mhz, state)
		begin
		if(rising_edge(clk_60mhz)) then
			if(state = is_synced) then
				synced <= '1';
			else
				synced <= '0';
			end if;
		end if;
	end process sync_satus;

	--- Copying internal signals to destination signals ---
	data <= i_data;

end Behavioral;

