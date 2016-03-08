LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY testFsm IS
END testFsm;
 
ARCHITECTURE behavior OF testFsm IS 

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
   signal DM : std_logic := '1';
   signal Clk_60Mhz : std_logic := '1';

 	--Outputs
   signal synced : std_logic;
   signal data : std_logic_vector(63 downto 0);

	constant FREQUENCY : REAL := (60.0 * 1000.0 * 1000.0); 
	constant PEROID : TIME := 1 sec / FREQUENCY;
	constant HALF_PEROID : TIME := PEROID / 2;
	constant QUARTER_PEROID : TIME := PEROID / 4;
 
	constant SYNC_PATTERN : std_logic_vector(7 downto 0) := "01010100";
	constant INPUT_PATTERN : std_logic_vector(31 downto 0) := "11111111000000001111111101010100";
	--zawiera SYNC_PATTERN
	constant INPUT_DATA : std_logic_vector(63 downto 0) := X"FEDCBA9876543210";
	
BEGIN
	-- Instantiate the Unit Under Test (UUT)
   uut: fsm PORT MAP (
          DP => DP,
          DM => DM,
          Clk_60Mhz => Clk_60Mhz,
          synced => synced,
          data => data
        );

	Clk_60Mhz <= not Clk_60Mhz after HALF_PEROID;
	
   -- Stimulus process
   simulation: process	
		begin
		wait for PEROID * 3;
		--sync pattern
		l1 : for i in 31 downto 0 loop
			DP <= INPUT_PATTERN(i);
			DM <= not INPUT_PATTERN(i);
			l2 : for j in 4 downto 0 loop
				wait for PEROID;
			end loop l2;
		end loop l1;
		--Input data
		l3 : for i in 63 downto 0 loop
			DP <= INPUT_DATA(i);
			DM <= not INPUT_DATA(i);
			l4 : for j in 4 downto 0 loop
				wait for PEROID;
			end loop l4;
		end loop l3;
   end process simulation;

END;
