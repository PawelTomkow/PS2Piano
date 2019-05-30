--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:23:11 05/17/2019
-- Design Name:   
-- Module Name:   C:/Users/lab/Desktop/organki/dziala nie dziala/Organiki/Organy1/tb_keybeep.vhd
-- Project Name:  Organy1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: KeyboardAndGenerator
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_keybeep IS
END tb_keybeep;
 
ARCHITECTURE behavior OF tb_keybeep IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT KeyboardAndGenerator
    PORT(
         CLK : IN  std_logic;
         RESET : IN  std_logic;
         BUSY : IN  std_logic;
         ENABLE : IN  std_logic;
         MODE_01 : IN  std_logic;
         MODE_02 : IN  std_logic;
         FREQ : IN  std_logic_vector(3 downto 0);
         START_OUT : OUT  std_logic;
         ADDRESS_OUT : OUT  std_logic_vector(3 downto 0);
         COMMAND_OUT : OUT  std_logic_vector(3 downto 0);
         DATA_OUT : OUT  std_logic_vector(11 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal RESET : std_logic := '0';
   signal BUSY : std_logic := '0';
   signal ENABLE : std_logic := '0';
   signal MODE_01 : std_logic := '0';
   signal MODE_02 : std_logic := '0';
   signal FREQ : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal START_OUT : std_logic;
   signal ADDRESS_OUT : std_logic_vector(3 downto 0);
   signal COMMAND_OUT : std_logic_vector(3 downto 0);
   signal DATA_OUT : std_logic_vector(11 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: KeyboardAndGenerator PORT MAP (
          CLK => CLK,
          RESET => RESET,
          BUSY => BUSY,
          ENABLE => ENABLE,
          MODE_01 => MODE_01,
          MODE_02 => MODE_02,
          FREQ => FREQ,
          START_OUT => START_OUT,
          ADDRESS_OUT => ADDRESS_OUT,
          COMMAND_OUT => COMMAND_OUT,
          DATA_OUT => DATA_OUT
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      
      RESET <= '1';
      

   end process;

END;
