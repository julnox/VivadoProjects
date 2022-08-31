library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity mux4 is
    Port ( dados1 : in STD_LOGIC_VECTOR (3 downto 0);
           sel1 : in STD_LOGIC_VECTOR (1 downto 0);
           saida1 : out STD_LOGIC;
           dados2 : in STD_LOGIC_VECTOR (3 downto 0);
           sel2 : in STD_LOGIC_VECTOR (1 downto 0);
           saida2 : out STD_LOGIC);
end mux4;

architecture Behavioral of mux4 is

begin

    saida1 <= dados1(0) when sel1="00" else
              dados1(1) when sel1="01" else
              dados1(2) when sel1="10" else
              dados1(3);
    
     with sel2 select
        saida2 <= dados1(0) when "00",
                  dados1(1) when "01",
                  dados1(2) when "10",
                  dados1(3) when others;

end Behavioral;
