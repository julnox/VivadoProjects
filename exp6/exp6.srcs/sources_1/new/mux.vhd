library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux is
    Port ( a : in STD_LOGIC_VECTOR (3 downto 0);
           b : in STD_LOGIC_VECTOR (3 downto 0);
           sw : in STD_LOGIC;
           an: out STD_LOGIC_VECTOR (3 downto 0));
end mux;

architecture Behavioral of mux is

component bcd7s
    Port ( muxbcd : in STD_LOGIC_VECTOR (3 downto 0);
           seg : out STD_LOGIC_VECTOR (6 downto 0));
end component;

signal sig1: STD_LOGIC_VECTOR (3 downto 0);

begin
    u1: bcd7s PORT MAP (muxbcd => sig1);

    an<="1110" when sw='0' else
        "1101" when sw='1';
        
    with sw select sig1 <=
             a when '0',
             b when '1';
           
end Behavioral;
