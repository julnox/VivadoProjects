library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--Exercicio 3 Slide 10
--Entradas:
--Rua A
--Rua B
--Entradas=0 significam nenhum carro passando

--Saidas:
--S1 : Semaforo 1
--S2 : Semaforo 2
--Saidas=0 significam luz vermelha

entity ex3 is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           s1 : out STD_LOGIC;
           s2 : out STD_LOGIC);
end ex3;

architecture Behavioral of ex3 is

begin

    s1 <= a;
    s2 <= not a and b;

end Behavioral;
