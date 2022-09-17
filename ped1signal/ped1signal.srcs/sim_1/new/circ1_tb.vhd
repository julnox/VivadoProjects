library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity circ1_tb is

end circ1_tb;

architecture Behavioral of circ1_tb is

    component circ1
        Port ( a : in STD_LOGIC;
               b : in STD_LOGIC;
               s : out STD_LOGIC);
    end component;

    signal sa, sb, ss: STD_LOGIC:='0';

begin
    uut: circ1 port map(
        a => sa,
        b => sb,
        s => ss);
    
    stimulus: process
    begin
        sa <= '0'; sb <= '0'; wait for 25ns;
        sa <= '0'; sb <= '1'; wait for 25ns;
        sa <= '1'; sb <= '0'; wait for 25ns;
        sa <= '1'; sb <= '1'; wait for 25ns;
    end process;

--       sa <= '0', '1' after 50ns, '0' after 100ns;
--       sb <= '0', '1' after 25ns, '0' after 50ns, '1' after 75ns, '0' after 100ns;

 end Behavioral;
