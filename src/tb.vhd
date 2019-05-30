-- Vhdl test bench created from schematic C:\Users\lab\Desktop\Organik\Michal_Pawel\Main_Schem.sch - Fri Apr 05 10:28:06 2019
--
-- Notes: 
-- 1) This testbench template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the unit under test.
-- Xilinx recommends that these types always be used for the top-level
-- I/O of a design in order to guarantee that the testbench will bind
-- correctly to the timing (post-route) simulation model.
-- 2) To use this template as your testbench, change the filename to any
-- name of your choice with the extension .vhd, and use the "Source->Add"
-- menu in Project Navigator to import the testbench. Then
-- edit the user defined section below, adding code to generate the 
-- stimulus for your design.
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;

ENTITY Main_Schem_Main_Schem_sch_tb IS
END Main_Schem_Main_Schem_sch_tb;


ARCHITECTURE behavioral OF Main_Schem_Main_Schem_sch_tb IS 

   COMPONENT Main_Schem
   PORT( CLK: IN std_logic;
         RESET: IN std_logic;
         SPI_MOSI: OUT std_logic;
         SPI_MISO: IN std_logic;
         DAC_CS: OUT std_logic;
         DAC_CLR: OUT std_logic;
         SPI_SS_B: OUT std_logic;
         AMP_CS: OUT std_logic;
         AD_CONV: OUT std_logic;
         SF_CE0: OUT std_logic;
         FPGA_INIT_B: OUT std_logic);
   END COMPONENT;

   SIGNAL CLK	:	STD_LOGIC;
   SIGNAL RESET	:	STD_LOGIC;
   SIGNAL SPI_SCK	:	STD_LOGIC;
   SIGNAL SPI_MOSI	:	STD_LOGIC;
   SIGNAL SPI_MISO	:	STD_LOGIC;
   SIGNAL DAC_CS	:	STD_LOGIC;
   SIGNAL DAC_CLR	:	STD_LOGIC;
   SIGNAL SPI_SS_B	:	STD_LOGIC;
   SIGNAL AMP_CS	:	STD_LOGIC;
   SIGNAL AD_CONV	:	STD_LOGIC;
   SIGNAL SF_CE0	:	STD_LOGIC;
   SIGNAL FPGA_INIT_B	:	STD_LOGIC;

constant CLK_PERIOD : time := 20 ns;
--constant SIM_TIME   : time := 1000 ms;
constant SIM_TIME   : time := 2300 ns;
constant SIM_CLOCKS : positive := SIM_TIME / CLK_PERIOD;

BEGIN

   UUT: Main_Schem PORT MAP(
		CLK => CLK,
      RESET => RESET,
      SPI_MOSI => SPI_MOSI,
      SPI_MISO => SPI_MISO,
      DAC_CS => DAC_CS,
      DAC_CLR => DAC_CLR,
      SPI_SS_B => SPI_SS_B,
      AMP_CS => AMP_CS,
      AD_CONV => AD_CONV,
      SF_CE0 => SF_CE0,
      FPGA_INIT_B => FPGA_INIT_B
   );


-------------------------------------------------
clk_process : process
begin
  for i in 1 to SIM_CLOCKS loop
    CLK <= '0';
    wait for CLK_PERIOD / 2;
    CLK <= '1';
    wait for CLK_PERIOD / 2;
  end loop;
  wait;
end process;

-------------------------------------------------
sim_process : process
begin
  RESET <= '1';
  wait for 100 ns;  
  RESET <= '0';
  wait;
end process; 

END;
