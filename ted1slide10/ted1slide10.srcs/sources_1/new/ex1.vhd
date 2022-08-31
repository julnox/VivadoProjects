library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--Exercicio 1 Slide 10
--Entradas:
--Algarismo A
--Algarismo B
--Algarismo C
--Algarismo D
--Entradas=0 significam o peso do algarismo (0 ou 1)

--Saida:
--Lampada Z
--Z=0 significa lampada apagada

entity ex1 is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           d : in STD_LOGIC;
           z : out STD_LOGIC);
           
end ex1;

architecture Behavioral of ex1 is

begin
  
  z <= a or (b and c and d);

end Behavioral;
