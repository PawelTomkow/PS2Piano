library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.all;
use IEEE.NUMERIC_STD.ALL;

entity SawGeneration is
   
   Port (CLK : in STD_LOGIC;
         RESET : in STD_LOGIC;   
         BUSY  : in STD_LOGIC;   
         START_OUT : out STD_LOGIC;
         ADDRESS_OUT : out STD_LOGIC_VECTOR (3 downto 0);
         COMMAND_OUT : out STD_LOGIC_VECTOR (3 downto 0);
         DATA_OUT : out STD_LOGIC_VECTOR (11 downto 0)
         );
         
end SawGeneration;

architecture Behavioral of SawGeneration is
   constant MAX_DELAY : positive := 50;
   subtype t_counter is integer range 0 to MAX_DELAY;
   type t_state is (s_init, s_start, s_wait);
   
   constant DELAY : t_counter := 35;

   constant ADDRESS : std_logic_vector(3 downto 0) := x"F"; -- All registers 
   constant COMMAND : std_logic_vector(3 downto 0) := x"2"; -- Write to and Update (Power Up) n
   signal   DATA    : integer := 1;

   signal counter : t_counter;
   signal state : t_state;
begin


Generate_Saw_signal : process (CLK, RESET)
begin
  if RESET = '1'then 
    counter <= 0;
    START_OUT <= '0';
    state <= s_init;  
  elsif rising_edge(CLK) then 
    case state is
      when s_init     => if BUSY = '0' then
                           START_OUT <= '0';
                           state <= s_start;
                         end if;

      when s_start    => START_OUT <= '0';
                         counter <= DELAY;
                         state <= s_wait;
      
      when s_wait     => if counter = 0 then
                           if DATA >= 4000  then
                             DATA <= 0;
                           else
                             DATA <= DATA + 4;
                           end if;
                           state <= s_init;
                         end if;
    end case;

    if counter > 0 then    
      counter <= counter - 1;
    end if;

  end if;
end process;

   ADDRESS_OUT <= ADDRESS;
   COMMAND_OUT <= COMMAND;
   DATA_OUT <= std_logic_vector(to_unsigned(DATA, 12));



end Behavioral;

