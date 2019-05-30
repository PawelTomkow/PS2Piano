--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : schem.vhf
-- /___/   /\     Timestamp : 05/30/2019 11:35:59
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl C:/Users/lab/Desktop/Organy/Ogranki/Organy1/schem.vhf -w C:/Users/lab/Desktop/Organy/Ogranki/Organy1/schem.sch
--Design Name: schem
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

entity schem is
   port ( CLK         : in    std_logic; 
          ENABLE      : in    std_logic; 
          MODE_01     : in    std_logic; 
          MODE_02     : in    std_logic; 
          PS2_Clk     : in    std_logic; 
          PS2_Data    : in    std_logic; 
          RESET       : in    std_logic; 
          SPI_MISO    : in    std_logic; 
          AD_CONV     : out   std_logic; 
          AMP_CS      : out   std_logic; 
          DAC_CLR     : out   std_logic; 
          DAC_CS      : out   std_logic; 
          FPGA_INIT_B : out   std_logic; 
          led_0       : out   std_logic; 
          led_1       : out   std_logic; 
          SF_CE0      : out   std_logic; 
          SPI_MOSI    : out   std_logic; 
          SPI_SCK     : out   std_logic; 
          SPI_SS_B    : out   std_logic);
end schem;

architecture BEHAVIORAL of schem is
   attribute BOX_TYPE   : string ;
   signal XLXN_4      : std_logic_vector (11 downto 0);
   signal XLXN_8      : std_logic_vector (3 downto 0);
   signal XLXN_9      : std_logic_vector (3 downto 0);
   signal XLXN_19     : std_logic;
   signal XLXN_24     : std_logic_vector (7 downto 0);
   signal XLXN_37     : std_logic;
   signal XLXN_38     : std_logic;
   signal XLXN_53     : std_logic_vector (3 downto 0);
   signal XLXN_56     : std_logic;
   signal XLXN_70     : std_logic;
   signal led_0_DUMMY : std_logic;
   signal led_1_DUMMY : std_logic;
   component DACWrite
      port ( Reset       : in    std_logic; 
             Start       : in    std_logic; 
             SPI_MISO    : in    std_logic; 
             Cmd         : in    std_logic_vector (3 downto 0); 
             Addr        : in    std_logic_vector (3 downto 0); 
             DATA        : in    std_logic_vector (11 downto 0); 
             DAC_CLR     : out   std_logic; 
             DAC_CS      : out   std_logic; 
             SPI_MOSI    : out   std_logic; 
             SPI_SCK     : out   std_logic; 
             SPI_SS_B    : out   std_logic; 
             AMP_CS      : out   std_logic; 
             AD_CONV     : out   std_logic; 
             SF_CE0      : out   std_logic; 
             FPGA_INIT_B : out   std_logic; 
             Busy        : out   std_logic; 
             Clk_50MHz   : in    std_logic; 
             Clk_Sys     : in    std_logic);
   end component;
   
   component KeyboardAndGenerator
      port ( CLK         : in    std_logic; 
             RESET       : in    std_logic; 
             BUSY        : in    std_logic; 
             ENABLE      : in    std_logic; 
             MODE_01     : in    std_logic; 
             MODE_02     : in    std_logic; 
             FREQ        : in    std_logic_vector (3 downto 0); 
             START_OUT   : out   std_logic; 
             ADDRESS_OUT : out   std_logic_vector (3 downto 0); 
             COMMAND_OUT : out   std_logic_vector (3 downto 0); 
             DATA_OUT    : out   std_logic_vector (11 downto 0));
   end component;
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component PS2_Kbd
      port ( PS2_Clk   : in    std_logic; 
             PS2_Data  : in    std_logic; 
             Clk_50MHz : in    std_logic; 
             E0        : out   std_logic; 
             F0        : out   std_logic; 
             DO_Rdy    : out   std_logic; 
             DO        : out   std_logic_vector (7 downto 0); 
             Clk_Sys   : in    std_logic);
   end component;
   
   component PS2ToFreQRISE
      port ( CLK             : in    std_logic; 
             RESET           : in    std_logic; 
             DO_IN           : in    std_logic_vector (7 downto 0); 
             ENABLE_KEYBOARD : out   std_logic; 
             FREQ_OUT        : out   std_logic_vector (3 downto 0); 
             KB_READY        : in    std_logic; 
             E0              : in    std_logic; 
             F0              : in    std_logic);
   end component;
   
begin
   led_0 <= led_0_DUMMY;
   led_1 <= led_1_DUMMY;
   XLXI_1 : DACWrite
      port map (Addr(3 downto 0)=>XLXN_9(3 downto 0),
                Clk_Sys=>CLK,
                Clk_50MHz=>CLK,
                Cmd(3 downto 0)=>XLXN_8(3 downto 0),
                DATA(11 downto 0)=>XLXN_4(11 downto 0),
                Reset=>RESET,
                SPI_MISO=>SPI_MISO,
                Start=>XLXN_56,
                AD_CONV=>AD_CONV,
                AMP_CS=>AMP_CS,
                Busy=>led_1_DUMMY,
                DAC_CLR=>DAC_CLR,
                DAC_CS=>DAC_CS,
                FPGA_INIT_B=>FPGA_INIT_B,
                SF_CE0=>SF_CE0,
                SPI_MOSI=>SPI_MOSI,
                SPI_SCK=>SPI_SCK,
                SPI_SS_B=>SPI_SS_B);
   
   XLXI_6 : KeyboardAndGenerator
      port map (BUSY=>led_1_DUMMY,
                CLK=>CLK,
                ENABLE=>XLXN_19,
                FREQ(3 downto 0)=>XLXN_53(3 downto 0),
                MODE_01=>MODE_01,
                MODE_02=>MODE_02,
                RESET=>RESET,
                ADDRESS_OUT(3 downto 0)=>XLXN_9(3 downto 0),
                COMMAND_OUT(3 downto 0)=>XLXN_8(3 downto 0),
                DATA_OUT(11 downto 0)=>XLXN_4(11 downto 0),
                START_OUT=>XLXN_56);
   
   XLXI_8 : OR2
      port map (I0=>led_0_DUMMY,
                I1=>ENABLE,
                O=>XLXN_19);
   
   XLXI_9 : PS2_Kbd
      port map (Clk_Sys=>CLK,
                Clk_50MHz=>CLK,
                PS2_Clk=>PS2_Clk,
                PS2_Data=>PS2_Data,
                DO(7 downto 0)=>XLXN_24(7 downto 0),
                DO_Rdy=>XLXN_38,
                E0=>XLXN_37,
                F0=>XLXN_70);
   
   XLXI_12 : PS2ToFreQRISE
      port map (CLK=>CLK,
                DO_IN(7 downto 0)=>XLXN_24(7 downto 0),
                E0=>XLXN_37,
                F0=>XLXN_70,
                KB_READY=>XLXN_38,
                RESET=>RESET,
                ENABLE_KEYBOARD=>led_0_DUMMY,
                FREQ_OUT(3 downto 0)=>XLXN_53(3 downto 0));
   
end BEHAVIORAL;


