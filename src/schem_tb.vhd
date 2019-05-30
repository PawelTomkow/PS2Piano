-- Vhdl test bench created from schematic C:\Users\lab\Desktop\Michal_Pawel_Organki\Projekt\schem.sch - Tue Apr 16 12:09:50 2019
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
ENTITY schem_schem_sch_tb IS
END schem_schem_sch_tb;
ARCHITECTURE behavioral OF schem_schem_sch_tb IS 

   COMPONENT schem
   PORT( RESET	:	IN	STD_LOGIC; 
          CLK	:	IN	STD_LOGIC; 
          FPGA_INIT_B	:	OUT	STD_LOGIC; 
          SF_CE0	:	OUT	STD_LOGIC; 
          AD_CONV	:	OUT	STD_LOGIC; 
          AMP_CS	:	OUT	STD_LOGIC; 
          SPI_SS_B	:	OUT	STD_LOGIC; 
          DAC_CLR	:	OUT	STD_LOGIC; 
          DAC_CS	:	OUT	STD_LOGIC; 
          SPI_SCK	:	OUT	STD_LOGIC; 
          SPI_MISO	:	IN	STD_LOGIC; 
          LED_0	:	OUT	STD_LOGIC; 
          LED_1	:	OUT	STD_LOGIC; 
          SPI_MOSI	:	OUT	STD_LOGIC);
   END COMPONENT;

   SIGNAL RESET	:	STD_LOGIC;
   SIGNAL CLK	:	STD_LOGIC;
   SIGNAL FPGA_INIT_B	:	STD_LOGIC;
   SIGNAL SF_CE0	:	STD_LOGIC;
   SIGNAL AD_CONV	:	STD_LOGIC;
   SIGNAL AMP_CS	:	STD_LOGIC;
   SIGNAL SPI_SS_B	:	STD_LOGIC;
   SIGNAL DAC_CLR	:	STD_LOGIC;
   SIGNAL DAC_CS	:	STD_LOGIC;
   SIGNAL SPI_SCK	:	STD_LOGIC;
   SIGNAL SPI_MISO	:	STD_LOGIC;
   SIGNAL LED_0	:	STD_LOGIC;
   SIGNAL LED_1	:	STD_LOGIC;
   SIGNAL SPI_MOSI	:	STD_LOGIC;

constant CLK_PERIOD : time := 20 ns;

constant SIM_TIME   : time := 2000 us;
constant SIM_CLOCKS : positive := SIM_TIME / CLK_PERIOD;

BEGIN

   UUT: schem PORT MAP(
		RESET => RESET, 
		CLK => CLK, 
		FPGA_INIT_B => FPGA_INIT_B, 
		SF_CE0 => SF_CE0, 
		AD_CONV => AD_CONV, 
		AMP_CS => AMP_CS, 
		SPI_SS_B => SPI_SS_B, 
		DAC_CLR => DAC_CLR, 
		DAC_CS => DAC_CS, 
		SPI_SCK => SPI_SCK, 
		SPI_MISO => SPI_MISO, 
		LED_0 => LED_0, 
		LED_1 => LED_1, 
		SPI_MOSI => SPI_MOSI
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

  SPI_MISO <= '0';
  wait;
end process; 

END;
