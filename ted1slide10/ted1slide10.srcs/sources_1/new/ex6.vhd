

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--Exercício 6 Slide 10

--Entradas:
--Chave A
--Chave B
--Chave C
--Entradas=0 significam chave FECHADA(Ligada/Acesa)

--Saída:
--S
--Saída=0 significa FALSO

entity ex6 is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           s : out STD_LOGIC);
end ex6;


architecture Behavioral of ex6 is

begin

    s <= (not a and((not b and c) or (b and not c))) or (a and not b and not c);

end Behavioral;
