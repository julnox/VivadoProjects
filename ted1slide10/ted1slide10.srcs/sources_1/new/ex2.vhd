library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--Exercicio 2 Slide 10
--Entradas:
--A : Toca-discos
--B : Toca-fitas
--C : Radio FM
--Entradas=0 significam aberto/desligado

--Saidas:
--SA : Saida toca-discos
--SB : Saida toca-fitas
--SC : Saida radio FM
--Saidas=0 significam aberto/desligado

entity ex2 is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           sa : out STD_LOGIC;
           sb : out STD_LOGIC;
           sc : out STD_LOGIC);
end ex2;

architecture Behavioral of ex2 is

begin

  sa <= a;
  sb <= (not a) and b;
  sc <= (not a) and not b and c;

end Behavioral;
