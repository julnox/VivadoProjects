library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity circ1 is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           s : out STD_LOGIC);
end circ1;

architecture Behavioral of circ1 is

    signal sig1, sig2, sig3, sig4: STD_LOGIC;

begin

    sig1 <= not b;
    sig2 <= not a;
    sig3 <= a and sig1;
    sig4 <= b and sig2;
    s <= sig3 or sig4;

end Behavioral;
