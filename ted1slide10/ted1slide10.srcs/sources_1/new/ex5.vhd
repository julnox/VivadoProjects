library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--

entity ex5 is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           d : in STD_LOGIC;
           s : out STD_LOGIC);
end ex5;

architecture Behavioral of ex5 is

begin

    s <= a and (b or c or d);

end Behavioral;
