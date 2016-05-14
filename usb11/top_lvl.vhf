--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : top_lvl.vhf
-- /___/   /\     Timestamp : 05/14/2016 21:23:36
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl E:/Education/UCISW/Projekt/usb11/top_lvl.vhf -w E:/Education/UCISW/Projekt/usb11/top_lvl.sch
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
          VGA_B     : out   std_logic; 
          VGA_G     : out   std_logic; 
          VGA_HS    : out   std_logic; 
          VGA_R     : out   std_logic; 
          VGA_VS    : out   std_logic);
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
   signal Clk_Sys                    : std_logic;
   signal Clk_50                     : std_logic;
   signal XLXN_2                     : std_logic;
   signal XLXN_3                     : std_logic;
   signal XLXN_7                     : std_logic;
   signal XLXN_75                    : std_logic_vector (7 downto 0);
   signal XLXN_76                    : std_logic_vector (7 downto 0);
   signal XLXN_77                    : std_logic;
   signal XLXN_93                    : std_logic;
   signal XLXN_99                    : std_logic;
   signal XLXN_100                   : std_logic;
   signal XLXN_101                   : std_logic;
   signal XLXN_102                   : std_logic;
   signal XLXN_103                   : std_logic;
   signal XLXN_109                   : std_logic_vector (7 downto 0);
   signal XLXN_110                   : std_logic;
   signal XLXN_111                   : std_logic;
   signal XLXN_112                   : std_logic;
   signal XLXN_115                   : std_logic;
   signal XLXI_1_DSSEN_openSignal    : std_logic;
   signal XLXI_1_PSCLK_openSignal    : std_logic;
   signal XLXI_1_PSEN_openSignal     : std_logic;
   signal XLXI_1_PSINCDEC_openSignal : std_logic;
   signal XLXI_1_RST_openSignal      : std_logic;
   signal XLXI_7_Reset_openSignal    : std_logic;
   signal XLXI_8_CursorOn_openSignal : std_logic;
   signal XLXI_8_Goto00_openSignal   : std_logic;
   signal XLXI_8_Home_openSignal     : std_logic;
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
   
   component usb_rx
      port ( d_p       : in    std_logic; 
             d_m       : in    std_logic; 
             clk_60mhz : in    std_logic; 
             busy      : out   std_logic; 
             received  : out   std_logic; 
             rx_byte   : out   std_logic_vector (7 downto 0));
   end component;
   
   component FSM_SendByte
      port ( Clk    : in    std_logic; 
             Reset  : in    std_logic; 
             DIRdy  : in    std_logic; 
             TxBusy : in    std_logic; 
             DI     : in    std_logic_vector (7 downto 0); 
             DORdy  : out   std_logic; 
             Busy   : out   std_logic; 
             DO     : out   std_logic_vector (7 downto 0));
   end component;
   
   component VGAtxt48x20
      port ( Char_DI     : in    std_logic_vector (7 downto 0); 
             Home        : in    std_logic; 
             NewLine     : in    std_logic; 
             Goto00      : in    std_logic; 
             Clk_Sys     : in    std_logic; 
             Clk_50MHz   : in    std_logic; 
             CursorOn    : in    std_logic; 
             ScrollEn    : in    std_logic; 
             ScrollClear : in    std_logic; 
             Busy        : out   std_logic; 
             VGA_HS      : out   std_logic; 
             VGA_VS      : out   std_logic; 
             VGA_RGB     : out   std_logic; 
             Char_WE     : in    std_logic);
   end component;
   
   component BUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUF : component is "BLACK_BOX";
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component newline_fsm
      port ( received     : in    std_logic; 
             clk          : in    std_logic; 
             busy         : in    std_logic; 
             newline      : out   std_logic; 
             should_block : in    std_logic);
   end component;
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component sof_filter
      port ( new_line     : in    std_logic; 
             received     : in    std_logic; 
             clk          : in    std_logic; 
             rx_byte      : in    std_logic_vector (7 downto 0); 
             DIRdy        : out   std_logic; 
             DI           : out   std_logic_vector (7 downto 0); 
             should_block : out   std_logic);
   end component;
   
   attribute CLKFX_MULTIPLY of XLXI_1 : label is "6";
   attribute CLKFX_DIVIDE of XLXI_1 : label is "5";
begin
   XLXI_1 : DCM_SP
   -- synopsys translate_off
   generic map( CLKFX_MULTIPLY => 6,
            CLKFX_DIVIDE => 5)
   -- synopsys translate_on
      port map (CLKFB=>Clk_50,
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
                O=>Clk_50);
   
   XLXI_3 : BUFG
      port map (I=>XLXN_3,
                O=>Clk_Sys);
   
   XLXI_6 : usb_rx
      port map (clk_60mhz=>Clk_Sys,
                d_m=>USB_DM,
                d_p=>USB_DP,
                busy=>XLXN_111,
                received=>XLXN_112,
                rx_byte(7 downto 0)=>XLXN_75(7 downto 0));
   
   XLXI_7 : FSM_SendByte
      port map (Clk=>Clk_Sys,
                DI(7 downto 0)=>XLXN_109(7 downto 0),
                DIRdy=>XLXN_110,
                Reset=>XLXI_7_Reset_openSignal,
                TxBusy=>XLXN_101,
                Busy=>XLXN_100,
                DO(7 downto 0)=>XLXN_76(7 downto 0),
                DORdy=>XLXN_77);
   
   XLXI_8 : VGAtxt48x20
      port map (Char_DI(7 downto 0)=>XLXN_76(7 downto 0),
                Char_WE=>XLXN_77,
                Clk_Sys=>Clk_Sys,
                Clk_50MHz=>Clk_50,
                CursorOn=>XLXI_8_CursorOn_openSignal,
                Goto00=>XLXI_8_Goto00_openSignal,
                Home=>XLXI_8_Home_openSignal,
                NewLine=>XLXN_93,
                ScrollClear=>XLXN_102,
                ScrollEn=>XLXN_103,
                Busy=>XLXN_101,
                VGA_HS=>VGA_HS,
                VGA_RGB=>XLXN_7,
                VGA_VS=>VGA_VS);
   
   XLXI_10 : BUF
      port map (I=>XLXN_7,
                O=>VGA_R);
   
   XLXI_33 : GND
      port map (G=>VGA_G);
   
   XLXI_40 : newline_fsm
      port map (busy=>XLXN_99,
                clk=>Clk_Sys,
                received=>XLXN_111,
                should_block=>XLXN_115,
                newline=>XLXN_93);
   
   XLXI_41 : OR2
      port map (I0=>XLXN_101,
                I1=>XLXN_100,
                O=>XLXN_99);
   
   XLXI_42 : VCC
      port map (P=>XLXN_103);
   
   XLXI_43 : VCC
      port map (P=>XLXN_102);
   
   XLXI_44 : BUF
      port map (I=>XLXN_7,
                O=>VGA_B);
   
   XLXI_45 : sof_filter
      port map (clk=>Clk_Sys,
                new_line=>XLXN_111,
                received=>XLXN_112,
                rx_byte(7 downto 0)=>XLXN_75(7 downto 0),
                DI(7 downto 0)=>XLXN_109(7 downto 0),
                DIRdy=>XLXN_110,
                should_block=>XLXN_115);
   
end BEHAVIORAL;


