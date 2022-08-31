library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--Exercicio 4 Slide 10
--Entradas:
--M : Sinal de Movimento
--M=0 significa elevador parado

--F1 : Indicador andar 1
--F2 : Indicador andar 2
--F3 : Indicador andar 3
--F1,F2 e F3=0 significam nivel baixo (elevador nao esta no andar)

--Saida:
--Sinal S
--S=0 significa porta fechada

entity ex4 is
    Port ( m : in STD_LOGIC;
           f1 : in STD_LOGIC;
           f2 : in STD_LOGIC;
           f3 : in STD_LOGIC;
           s : out STD_LOGIC);
end ex4;

architecture Behavioral of ex4 is

begin

    s <= not m and (f1 or f2 or f3);

end Behavioral;
