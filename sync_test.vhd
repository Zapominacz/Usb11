LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY sync_test IS
END sync_test;
 
ARCHITECTURE behavior OF sync_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT fsm
    PORT(
         DP : IN  std_logic;
         DM : IN  std_logic;
         Clk_60Mhz : IN  std_logic;
         synced : OUT  std_logic;
         data : OUT  std_logic_vector(63 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal DP : std_logic := '0';
   signal DM : std_logic := '0';
   signal Clk_60Mhz : std_logic := '1';

 	--Outputs
   signal synced : std_logic;
   signal data : std_logic_vector(63 downto 0);

	constant sync_pattern : std_logic_vector(7 downto 0) := X"80";
 
	constant USB_FREQUENCY : REAL := (12.0 * 1000.0 * 1000.0); 
	constant USB_FREQUENCY : TIME := 1 sec / FREQUENCY;
	constant USB_HALF_PEROID : TIME := PEROID / 2;
	
	constant CLK_FREQUENCY : REAL := (60.0 * 1000.0 * 1000.0); 
	constant CLK_PEROID : TIME := 1 sec / FREQUENCY;
	constant CLK_HALF_PEROID : TIME := PEROID / 2;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: fsm PORT MAP (
          DP => DP,
          DM => DM,
          Clk_60Mhz => Clk_60Mhz,
          synced => synced,
          data => data
        );

	Clk_60Mhz <= not Clk_60Mhz after CLK_HALF_PEROID;

   -- Stimulus process
   stim_proc: process
   begin		
      wait for CLK_PEROID;
			l1 : for i in 8 downto 0 loop
				l2 : for j in 5 downto 0 loop
					DP <= sync_pattern(i);
					wait for PEROID;
				end loop l2;				
			end loop l1;
   end process stim_proc;
	
END;
