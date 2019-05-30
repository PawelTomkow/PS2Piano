library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PS2ConvToFreQ is
    PORT(
         DO_IN     : in std_logic_vector (7 downto 0);
         E0        : in std_logic;
         F0        : in std_logic;
         DO_Rdy_IN : in std_logic;
         FREQ_OUT  : out std_logic_vector (3 downto 0);
         ENABLE_KEYBOARD : out std_logic
        );
end PS2ConvToFreQ;

architecture Behavioral of PS2ConvToFreQ is

begin

   with DO_IN & E0 & F0 select
      FREQ_OUT <=     "0000" when X"15" & "00", -- Q // C
                  "0001" when X"1E" & "00", -- 2 // C#
                  "0010" when X"1D" & "00", -- W // D
                  "0011" when X"26" & "00", -- 3 // D#
                  "0100" when X"24" & "00", -- E // E
                  "0101" when X"2D" & "00", -- R // F
                  "0110" when X"2E" & "00", -- 5 // F#
                  "0111" when X"2C" & "00", -- T // G
                  "1000" when X"36" & "00", -- 6 // G#
                  "1001" when X"35" & "00", -- Y // A
                  "1010" when X"3D" & "00", -- 7 // A#
                  "1011" when X"3C" & "00", -- U // B
                  "1111" when others;
  
   with DO_IN & E0 & F0 select
      ENABLE_KEYBOARD <=   '1' when X"15" & "00", -- Q // C
                  '1' when X"1E" & "00", -- 2 // C#
                  '1' when X"1D" & "00", -- W // D
                  '1' when X"26" & "00", -- 3 // D#
                  '1' when X"24" & "00", -- E // E
                  '1' when X"2D" & "00", -- R // F
                  '1' when X"2E" & "00", -- 5 // F#
                  '1' when X"2C" & "00", -- T // G
                  '1' when X"36" & "00", -- 6 // G#
                  '1' when X"35" & "00", -- Y // A
                  '1' when X"3D" & "00", -- 7 // A#
                  '1' when X"3C" & "00",
                  '0' when others;


end Behavioral;

