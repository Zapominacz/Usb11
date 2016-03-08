--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : top_lvl.vhf
-- /___/   /\     Timestamp : 03/08/2016 15:21:13
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl C:/Users/lab/usb11/top_lvl.vhf -w C:/Users/lab/usb11/top_lvl.sch
--Design Name: top_lvl
--Device: spartan3e
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity top_lvl is
   port ( Clk_50MHz : in    std_logic; 
          USB_DM    : in    std_logic; 
          USB_DP    : in    std_logic; 
          LCD_D     : out   std_logic_vector (3 downto 0); 
          LCD_E     : out   std_logic; 
          LCD_RS    : out   std_logic; 
          LCD_RW    : out   std_logic; 
          LED1      : out   std_logic; 
          SF_CE     : out   std_logic);
end top_lvl;

architecture BEHAVIORAL of top_lvl is
   attribute CLK_FEEDBACK          : string ;
   attribute CLKDV_DIVIDE          : string ;
   attribute CLKFX_DIVIDE          : string ;
   attribute CLKIN_PERIOD          : string ;
   attribute CLKFX_MULTIPLY        : string ;
   attribute CLKIN_DIVIDE_BY_2     : string ;
   attribute CLKOUT_PHASE_SHIFT    : string ;
   attribute DESKEW_ADJUST         : string ;
   attribute DFS_FREQUENCY_MODE    : string ;
   attribute DLL_FREQUENCY_MODE    : string ;
   attribute DSS_MODE              : string ;
   attribute DUTY_CYCLE_CORRECTION : string ;
   attribute PHASE_SHIFT           : string ;
   attribute STARTUP_WAIT          : string ;
   attribute FACTORY_JF            : string ;
   attribute BOX_TYPE              : string ;
   signal XLXN_2                     : std_logic;
   signal XLXN_3                     : std_logic;
   signal XLXN_5                     : std_logic;
   signal XLXN_28                    : std_logic;
   signal XLXN_34                    : std_logic_vector (63 downto 0);
   signal LCD_D_DUMMY                : std_logic_vector (3 downto 0);
   signal XLXI_1_DSSEN_openSignal    : std_logic;
   signal XLXI_1_PSCLK_openSignal    : std_logic;
   signal XLXI_1_PSEN_openSignal     : std_logic;
   signal XLXI_1_PSINCDEC_openSignal : std_logic;
   signal XLXI_1_RST_openSignal      : std_logic;
   signal XLXI_4_Blank_openSignal    : std_logic_vector (15 downto 0);
   signal XLXI_4_Reset_openSignal    : std_logic;
   component DCM_SP
      -- synopsys translate_off
      generic( CLK_FEEDBACK : string :=  "1X";
               CLKDV_DIVIDE : real :=  2.0;
               CLKFX_DIVIDE : integer :=  1;
               CLKIN_PERIOD : real :=  10.0;
               CLKFX_MULTIPLY : integer :=  4;
               CLKIN_DIVIDE_BY_2 : boolean :=  FALSE;
               CLKOUT_PHASE_SHIFT : string :=  "NONE";
               DESKEW_ADJUST : string :=  "SYSTEM_SYNCHRONOUS";
               DFS_FREQUENCY_MODE : string :=  "LOW";
               DLL_FREQUENCY_MODE : string :=  "LOW";
               DSS_MODE : string :=  "NONE";
               DUTY_CYCLE_CORRECTION : boolean :=  TRUE;
               PHASE_SHIFT : integer :=  0;
               STARTUP_WAIT : boolean :=  FALSE;
               FACTORY_JF : bit_vector :=  x"C080");
      -- synopsys translate_on
      port ( CLKFB    : in    std_logic; 
             CLKIN    : in    std_logic; 
             DSSEN    : in    std_logic; 
             PSCLK    : in    std_logic; 
             PSEN     : in    std_logic; 
             PSINCDEC : in    std_logic; 
             RST      : in    std_logic; 
             CLK0     : out   std_logic; 
             CLK180   : out   std_logic; 
             CLK270   : out   std_logic; 
             CLK2X    : out   std_logic; 
             CLK2X180 : out   std_logic; 
             CLK90    : out   std_logic; 
             CLKDV    : out   std_logic; 
             CLKFX    : out   std_logic; 
             CLKFX180 : out   std_logic; 
             LOCKED   : out   std_logic; 
             PSDONE   : out   std_logic; 
             STATUS   : out   std_logic_vector (7 downto 0));
   end component;
   attribute CLK_FEEDBACK of DCM_SP : component is "1X";
   attribute CLKDV_DIVIDE of DCM_SP : component is "2.0";
   attribute CLKFX_DIVIDE of DCM_SP : component is "1";
   attribute CLKIN_PERIOD of DCM_SP : component is "10.0";
   attribute CLKFX_MULTIPLY of DCM_SP : component is "4";
   attribute CLKIN_DIVIDE_BY_2 of DCM_SP : component is "FALSE";
   attribute CLKOUT_PHASE_SHIFT of DCM_SP : component is "NONE";
   attribute DESKEW_ADJUST of DCM_SP : component is "SYSTEM_SYNCHRONOUS";
   attribute DFS_FREQUENCY_MODE of DCM_SP : component is "LOW";
   attribute DLL_FREQUENCY_MODE of DCM_SP : component is "LOW";
   attribute DSS_MODE of DCM_SP : component is "NONE";
   attribute DUTY_CYCLE_CORRECTION of DCM_SP : component is "TRUE";
   attribute PHASE_SHIFT of DCM_SP : component is "0";
   attribute STARTUP_WAIT of DCM_SP : component is "FALSE";
   attribute FACTORY_JF of DCM_SP : component is "C080";
   attribute BOX_TYPE of DCM_SP : component is "BLACK_BOX";
   
   component BUFG
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUFG : component is "BLACK_BOX";
   
   component LCD1x64
      port ( Clk_50MHz : in    std_logic; 
             Reset     : in    std_logic; 
             Line      : in    std_logic_vector (63 downto 0); 
             Blank     : in    std_logic_vector (15 downto 0); 
             LCD_D     : inout std_logic_vector (3 downto 0); 
             LCD_E     : out   std_logic; 
             LCD_RW    : out   std_logic; 
             LCD_RS    : out   std_logic; 
             SF_CE     : out   std_logic);
   end component;
   
   component fsm
      port ( DP        : in    std_logic; 
             DM        : in    std_logic; 
             Clk_60Mhz : in    std_logic; 
             synced    : out   std_logic; 
             data      : out   std_logic_vector (63 downto 0));
   end component;
   
   attribute CLKFX_MULTIPLY of XLXI_1 : label is "6";
   attribute CLKFX_DIVIDE of XLXI_1 : label is "5";
begin
   LCD_D(3 downto 0) <= LCD_D_DUMMY(3 downto 0);
   XLXI_1 : DCM_SP
   -- synopsys translate_off
   generic map( CLKFX_MULTIPLY => 6,
            CLKFX_DIVIDE => 5)
   -- synopsys translate_on
      port map (CLKFB=>XLXN_5,
                CLKIN=>Clk_50MHz,
                DSSEN=>XLXI_1_DSSEN_openSignal,
                PSCLK=>XLXI_1_PSCLK_openSignal,
                PSEN=>XLXI_1_PSEN_openSignal,
                PSINCDEC=>XLXI_1_PSINCDEC_openSignal,
                RST=>XLXI_1_RST_openSignal,
                CLKDV=>open,
                CLKFX=>XLXN_3,
                CLKFX180=>open,
                CLK0=>XLXN_2,
                CLK2X=>open,
                CLK2X180=>open,
                CLK90=>open,
                CLK180=>open,
                CLK270=>open,
                LOCKED=>open,
                PSDONE=>open,
                STATUS=>open);
   
   XLXI_2 : BUFG
      port map (I=>XLXN_2,
                O=>XLXN_5);
   
   XLXI_3 : BUFG
      port map (I=>XLXN_3,
                O=>XLXN_28);
   
   XLXI_4 : LCD1x64
      port map (Blank(15 downto 0)=>XLXI_4_Blank_openSignal(15 downto 0),
                Clk_50MHz=>Clk_50MHz,
                Line(63 downto 0)=>XLXN_34(63 downto 0),
                Reset=>XLXI_4_Reset_openSignal,
                LCD_E=>LCD_E,
                LCD_RS=>LCD_RS,
                LCD_RW=>LCD_RW,
                SF_CE=>SF_CE,
                LCD_D(3 downto 0)=>LCD_D_DUMMY(3 downto 0));
   
   XLXI_21 : fsm
      port map (Clk_60Mhz=>XLXN_28,
                DM=>USB_DM,
                DP=>USB_DP,
                data(63 downto 0)=>XLXN_34(63 downto 0),
                synced=>LED1);
   
end BEHAVIORAL;


