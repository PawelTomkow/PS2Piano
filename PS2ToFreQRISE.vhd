library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PS2ToFreQRISE is   
    PORT(
         DO_IN     : in std_logic_vector (7 downto 0);
         KB_READY     : in std_logic;
         E0        : in std_logic;
         F0        : in std_logic;
         CLK       : in std_logic;
         RESET     : in std_logic;
         FREQ_OUT  : out std_logic_vector (3 downto 0);
         ENABLE_KEYBOARD : out std_logic
        );
end PS2ToFreQRISE;

architecture Behavioral of PS2ToFreQRISE is
   type t_state is (s_init, s_start, s_wait);
   signal state : t_state;
   signal busy : std_logic := '0';
begin

   Catch_PS2 : process (CLK, DO_IN)
   begin
      if RESET = '1' then
         --FREQ_OUT <= "0000";
         ENABLE_KEYBOARD <= '0';
         busy <= '0';
      elsif rising_edge(CLK) then
--         case state is 
--           when s_init       => if READY = '0' then
--                                    ENABLE_KEYBOARD <= '0';
--                                    state <= s_start;
--                                 end if;
--            when s_start      => if READY = '1' then
--                                   ENABLE_KEYBOARD <= '1';
--                                    state <= s_init;
--                                 end if;
--         end case;

--         case state is
--            when s_init => if KB_READY = '1' and E0 = '0' and busy = '0' then
--                              state <= s_start;
--                           end if;
--            when s_start => ENABLE_KEYBOARD <= '1';
--                            busy <= '1';
--                            state <= s_wait;
--            when s_wait =>  if F0 = '1' then
--                              busy <= '0';
--                              ENABLE_KEYBOARD <= '0';
--                              state <= s_init;
--                            end if;
--          end case;

         if busy = '0' and KB_READY = '1' and E0 = '0' then
               ENABLE_KEYBOARD <= '1';
               busy <= '1';
         elsif F0 = '1' then
               ENABLE_KEYBOARD <= '0'; 
              busy <= '0';
         end if;
         
      end if;                    
      
   end process;    
   
with DO_IN select
   FREQ_OUT <= "0000" when X"15", -- Q // C
               "0001" when X"1E", -- 2 // C#
               "0010" when X"1D", -- W // D
               "0011" when X"26", -- 3 // D#
               "0100" when X"24", -- E // E
               "0101" when X"2D", -- R // F
               "0110" when X"2E", -- 5 // F#
               "0111" when X"2C", -- T // G
               "1000" when X"36", -- 6 // G#
               "1001" when X"35", -- Y // A
               "1010" when X"3D", -- 7 // A#
               "1011" when X"3C", -- U // B
               "1111" when others;
   
end Behavioral;

