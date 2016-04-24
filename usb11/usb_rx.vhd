library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;

entity usb_rx is
    port ( d_p : in  STD_LOGIC; -- D+
           d_m : in  STD_LOGIC; -- D-
           clk_60mhz : in  STD_LOGIC; --clock 5x USB 1.1 (12 MHz)
           busy : out  STD_LOGIC; -- is operation occurs
			  received : out  STD_LOGIC; -- byte received pulse
           rx_byte : out  std_logic_vector(7 downto 0));
end usb_rx;

architecture behavioral of usb_rx is

	-- wave synchronization
	signal wave_length_counter : std_logic_vector(2 downto 0);
	-- range (0 - 4), used to determine position in usb signal
	
	-- synchronization
	constant sync_pattern : std_logic_vector(7 downto 0) := "01010100";
	-- sync pattern defined in USB 1.1 specification (0x80), in NRZI form
	
	-- data receive buffer
	signal i_rx_byte : std_logic_vector(7 downto 0); -- storage data
	signal received_bits : std_logic_vector(3 downto 0);
	-- received bits counter (0-8)
	
	-- NRZI encoding
	signal last_d_p : std_logic;
	
	-- usb sequences
	signal se0_signal_counter : std_logic_vector(2 downto 0);
	
	-- Bit stuffing
	signal high_state_lenght : std_logic_vector(3 downto 0);
	
	--- sync machine states ---
	type sync_state_type is (idle, syncing, synced); 
	signal sync_state : sync_state_type := idle;
	signal next_sync_state : sync_state_type;
	
begin

	usb_sequence_process : process(clk_60mhz, next_sync_state, wave_length_counter, d_p, d_m)
		begin -- determines eop_signal
		if(rising_edge(clk_60mhz)) then
			if(next_sync_state = idle) then
				se0_signal_counter <= (others => '0');
			elsif(wave_length_counter = 2) then
				if(d_p = '0' and d_m = '0') then
					se0_signal_counter <= se0_signal_counter + 1;
				else
					se0_signal_counter <= (others => '0');
				end if;
			end if;
		end if;
	end process usb_sequence_process;
	
	high_state_process : process(clk_60mhz, next_sync_state, wave_length_counter, d_p, d_m)
		begin -- determines high sate lenght for bit stuffing
		if(rising_edge(clk_60mhz)) then
			if(next_sync_state = idle) then
				high_state_lenght <= (others => '0');
			elsif(wave_length_counter = 2) then
				if(d_p = '1' and d_m = '0') then
					high_state_lenght <= high_state_lenght + 1;
				else
					high_state_lenght <= (others => '0');
				end if;
			end if;
		end if;
	end process high_state_process;

	sync_state_trigger_process : process(clk_60mhz)
		begin -- only for triggering state change in state_process
		if(rising_edge(clk_60mhz)) then
			sync_state <= next_sync_state;
		end if;
	end process sync_state_trigger_process;
	
	last_dp_process : process(clk_60mhz, wave_length_counter, d_p)
		begin
		if(rising_edge(clk_60mhz) and wave_length_counter = 2) then
			last_d_p <= d_p;
		end if;
	end process last_dp_process;
	
	bit_decoder : process(clk_60mhz, sync_state, next_sync_state, wave_length_counter, received_bits, high_state_lenght, d_p, d_m, i_rx_byte)
		begin
		if (rising_edge(clk_60mhz)) then
			if(next_sync_state = idle or received_bits = 8) then
				received_bits <= (others => '0');
			elsif(wave_length_counter = 2 and high_state_lenght < 6) then
				if(sync_state = synced) then
					i_rx_byte <= (last_d_p xnor d_p) & i_rx_byte(7 downto 1);
				else 
					i_rx_byte <= i_rx_byte(6 downto 0) & d_p;
				end if;
				received_bits <= received_bits + 1; -- increments counter
			end if;
		end if;
	end process bit_decoder;

	wave_lenght_counter_process : process(clk_60mhz, sync_state, next_sync_state)
		begin -- counts actual poisiton in peroid, resets on mod 5 or state change
		if rising_edge(clk_60mhz) then
			if(sync_state = idle and next_sync_state = syncing) then
				wave_length_counter <= "001";
			elsif(wave_length_counter = 4 or next_sync_state = idle) then
				wave_length_counter <= (others => '0');
			else
				wave_length_counter <= wave_length_counter + 1;
			end if;
		end if;
	end process wave_lenght_counter_process;

	state_process : process(sync_state, d_p, d_m, received_bits, i_rx_byte, se0_signal_counter) 
		begin
		next_sync_state <= sync_state;
		case sync_state is
			when idle =>
				if(d_p = '0' and d_m = '1') then --waiting for zero to start sync
					next_sync_state <= syncing;
				end if;
			when syncing => -- counts sync bits
				if(received_bits = 8) then
					if(i_rx_byte = sync_pattern) then
						next_sync_state <= synced; --caught sync signal
					else
						next_sync_state <= idle; --failed - reset
					end if;
				end if;
			when synced =>
				if(se0_signal_counter = 2) then
					next_sync_state <= idle;
				end if;
			end case;
	end process state_process;

	busy_indication_process : process(clk_60mhz, next_sync_state)
		begin -- process indicates that device is busy
		if(rising_edge(clk_60mhz)) then
			if(next_sync_state /= idle) then
				busy <= '1';
			else
				busy <= '0';
			end if;
		end if;
	end process busy_indication_process;
	
	receive_pulse_process : process(clk_60mhz, sync_state, received_bits)
		begin --process to create pulse indicating receive
		if(rising_edge(clk_60mhz)) then
			if(received_bits = 8 and sync_state = synced) then
				received <= '1';
			else
				received <= '0';
			end if;
		end if;
	end process receive_pulse_process;

	--- Copying internal signals to destination signals ---
	rx_byte <= i_rx_byte;

end behavioral;

