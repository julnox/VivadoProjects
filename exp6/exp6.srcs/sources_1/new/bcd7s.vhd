library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bcd7s is
    Port ( muxbcd : in STD_LOGIC_VECTOR (3 downto 0);
           seg : out STD_LOGIC_VECTOR (6 downto 0));
end bcd7s;

architecture Behavioral of bcd7s is

begin

   -- Ordem dos segmentos: gfedcba
   seg <= "0111111" when muxbcd="0000" else
          "1111001" when muxbcd="0001" else
          "0100100" when muxbcd="0010" else
          "0110000" when muxbcd="0011" else
          "0011001" when muxbcd="0100" else
          "0010010" when muxbcd="0101" else
          "0000010" when muxbcd="0110" else
          "1111000" when muxbcd="0111" else
          "0000000" when muxbcd="1000" else
          "0010000" when muxbcd="1001" else
          "1111111";

end Behavioral;
