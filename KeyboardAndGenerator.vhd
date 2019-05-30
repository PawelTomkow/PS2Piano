library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.all;
use IEEE.NUMERIC_STD.ALL;

entity KeyboardAndGenerator is
   Port (CLK : in STD_LOGIC;
         RESET       : in STD_LOGIC;      
         BUSY        : in STD_LOGIC;   
         ENABLE      : in STD_LOGIC;
         MODE_01     : in STD_LOGIC;
         MODE_02     : in STD_LOGIC;
         FREQ        : in STD_LOGIC_VECTOR (3 downto 0); 
         START_OUT   : out STD_LOGIC;
         ADDRESS_OUT : out STD_LOGIC_VECTOR (3 downto 0);
         COMMAND_OUT : out STD_LOGIC_VECTOR (3 downto 0);
         DATA_OUT    : out STD_LOGIC_VECTOR (11 downto 0)
        );
end KeyboardAndGenerator;

architecture Behavioral of KeyboardAndGenerator is
   constant MAX_DELAY_RECTANGLE : positive := 600000;
   constant MAX_DELAY_SAW : positive := 100;
   constant MAX_DELAY_DIFFERENT_SOUNDS : positive := 1500;
   subtype t_dac_data is integer range 0 to 4095;
   subtype t_counter_rectangle is integer range 0 to MAX_DELAY_RECTANGLE;
   subtype t_counter_saw is integer range 0 to MAX_DELAY_SAW;
   subtype t_counter_different_sounds is integer range 0 to MAX_DELAY_DIFFERENT_SOUNDS;
   
   type t_state is (s_init, s_start, s_wait);
   
   constant DELAY_RECTANGLE : t_counter_rectangle := 25000;                     -- 
   constant DELAY_SAW : t_counter_saw := 50;
   signal DELAY_KEYBOARD: t_counter_different_sounds := 50;

   constant ADDRESS : std_logic_vector(3 downto 0) := x"F"; -- All registers 
   constant COMMAND : std_logic_vector(3 downto 0) := x"2"; -- Write to and Update (Power Up) n
   signal   DATA    : t_dac_data := 0;
   signal   FREQ_signal: std_logic_vector (3 downto 0) := x"0";
   signal iBeepGen: UNSIGNED (4 downto 0) := "00000";


   signal counter_rectangle : t_counter_rectangle;
   signal counter_saw : t_counter_saw;
   signal counter_sound : t_counter_different_sounds;
   signal state : t_state;
begin

SetFreq: process( FREQ, DELAY_KEYBOARD)
begin

   case FREQ is
      when "0000" =>      DELAY_KEYBOARD <= 1494;
      when "0001" =>      DELAY_KEYBOARD <= 1410;
      when "0010" =>      DELAY_KEYBOARD <= 1330;
      when "0011" =>      DELAY_KEYBOARD <= 1256;
      when "0100" =>      DELAY_KEYBOARD <= 1186;
      when "0101" =>      DELAY_KEYBOARD <= 1119;
      when "0110" =>      DELAY_KEYBOARD <= 1056;
      when "0111" =>      DELAY_KEYBOARD <= 997;
      when "1000" =>      DELAY_KEYBOARD <= 940;
      when "1001" =>      DELAY_KEYBOARD <= 887;
      when "1010" =>      DELAY_KEYBOARD <= 838;
      when "1011" =>      DELAY_KEYBOARD <= 791;
      when others =>      DELAY_KEYBOARD <= 0;
   end case;

end process;

Generate_signal : process (CLK, RESET, FREQ, DELAY_KEYBOARD)
begin
 if RESET = '1' then 
   counter_rectangle <= 0;
   counter_saw <= 0;
   DATA <= 0;
   START_OUT <= '0';
   state <= s_init;  
 elsif rising_edge(CLK) then
   if MODE_01 = '0' and MODE_02 = '1' then

     case state is
       when s_init     => if BUSY = '0' then
                           START_OUT <= '1';
                           state <= s_start;
                         end if;
 
       when s_start    => START_OUT <= '0';
                         counter_rectangle <= DELAY_RECTANGLE;
                         state <= s_wait;
       
       when s_wait     => if counter_rectangle = 0 then
                           if DATA = 0 then
                             DATA <= 2500;  -- 4095
                           else
                             DATA <= 0;
                           end if;
                           state <= s_init;
                         end if;
     end case;

      if counter_rectangle > 0 then    
         counter_rectangle <= counter_rectangle - 1;
      end if;
  DATA_OUT <= std_logic_vector(to_unsigned(DATA, 12));


   elsif MODE_01 = '1' and MODE_02 = '0' then

     case state is
       when s_init     => if BUSY = '0' then
                           START_OUT <= '1';
                           state <= s_start;
                         end if;
 
       when s_start    => START_OUT <= '0';
                         counter_saw <= DELAY_SAW;
                         state <= s_wait;
       
       when s_wait     => if counter_saw = 0 then
                           if DATA > 4000 then
                              DATA <= 0;
                           else
                              DATA <= DATA + 4;  -- 4095
                           end if;
                           state <= s_init;
                         end if;
     end case;

     if counter_saw > 0 then    
      counter_saw <= counter_saw - 1;
     end if;
  DATA_OUT <= std_logic_vector(to_unsigned(DATA, 12));



   elsif MODE_01 = '1' and MODE_02 = '1' and ENABLE = '1' then
   
        case state is
       when s_init     => if BUSY = '0' or DELAY_KEYBOARD = 0 then
                           START_OUT <= '1';
                           state <= s_start;
                         end if;
 
       when s_start    => START_OUT <= '0';
                         counter_sound <= DELAY_KEYBOARD;
                         state <= s_wait;
       
       when s_wait     => if counter_sound = 0 then
                            iBeepGen <= iBeepGen + 1;
                           state <= s_init;
                         end if;
     end case;

     if counter_sound > 0 then    
      counter_sound <= counter_sound - 1;
     end if;
  DATA_OUT <= std_logic_vector(iBeepGen & "0000000");
    

   end if;

 end if;
end process;

   ADDRESS_OUT <= ADDRESS;
   COMMAND_OUT <= COMMAND;
 --  DATA_OUT <= std_logic_vector(to_unsigned(DATA, 12));


end Behavioral;

