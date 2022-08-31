library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_mux4 is
--  Port ( );
end tb_mux4;

architecture Behavioral of tb_mux4 is

    component mux4 
        Port ( dados1 : in STD_LOGIC_VECTOR (3 downto 0);
               sel1 : in STD_LOGIC_VECTOR (1 downto 0);
               saida1 : out STD_LOGIC;
               dados2 : in STD_LOGIC_VECTOR (3 downto 0);
               sel2 : in STD_LOGIC_VECTOR (1 downto 0);
               saida2 : out STD_LOGIC);
    end component;
    
    signal s_dados1, s_dados2: STD_LOGIC_VECTOR (3 DOWNTO 0):="0000";
    signal s_sel1, s_sel2: STD_LOGIC_VECTOR (1 DOWNTO 0):="00";
    signal s_saida1, s_saida2: STD_LOGIC:='0';
    
begin

    uut: mux4 port map (dados1 => s_dados1,
                        sel1 => s_sel1,
                        saida1 => s_saida1,
                        dados2 => s_dados2,
                        sel2 => s_sel2,
                        saida2 => s_saida2);
                    
    stimulus: process
    begin
    
    ------------ sel="00"--------------------------
        s_sel1 <="00"; s_dados1<="0000";
        s_sel2 <= s_sel1; s_dados2<=s_dados1;
        wait for 10ns;
        
        s_sel1 <="00"; s_dados1<="0001";
        s_sel2 <= s_sel1; s_dados2<=s_dados1;
        wait for 10ns;
        
        s_sel1 <="00"; s_dados1<="0010";
        s_sel2 <= s_sel1; s_dados2<=s_dados1;
        wait for 10ns;
        
        s_sel1 <="00"; s_dados1<="0011";
        s_sel2 <= s_sel1; s_dados2<=s_dados1;
        wait for 10ns;

        s_sel1 <="00"; s_dados1<="0100";
        s_sel2 <= s_sel1; s_dados2<=s_dados1;
        wait for 10ns;
        
        s_sel1 <="00"; s_dados1<="0101";
        s_sel2 <= s_sel1; s_dados2<=s_dados1;
        wait for 10ns;
        
        s_sel1 <="00"; s_dados1<="0110";
        s_sel2 <= s_sel1; s_dados2<=s_dados1;
        wait for 10ns;
        
        s_sel1 <="00"; s_dados1<="0111";
        s_sel2 <= s_sel1; s_dados2<=s_dados1;
        wait for 10ns;
        
        -----------
        
        s_sel1 <="00"; s_dados1<="1000";
        s_sel2 <= s_sel1; s_dados2<=s_dados1;
        wait for 10ns;
        
        s_sel1 <="00"; s_dados1<="1001";
        s_sel2 <= s_sel1; s_dados2<=s_dados1;
        wait for 10ns;
        
        s_sel1 <="00"; s_dados1<="1010";
        s_sel2 <= s_sel1; s_dados2<=s_dados1;
        wait for 10ns;
        
        s_sel1 <="00"; s_dados1<="1011";
        s_sel2 <= s_sel1; s_dados2<=s_dados1;
        wait for 10ns;
        
        s_sel1 <="00"; s_dados1<="1100";
        s_sel2 <= s_sel1; s_dados2<=s_dados1;
        wait for 10ns;
        
        s_sel1 <="00"; s_dados1<="1101";
        s_sel2 <= s_sel1; s_dados2<=s_dados1;
        wait for 10ns;
        
        s_sel1 <="00"; s_dados1<="1110";
        s_sel2 <= s_sel1; s_dados2<=s_dados1;
        wait for 10ns;
        
        s_sel1 <="00"; s_dados1<="1111";
        s_sel2 <= s_sel1; s_dados2<=s_dados1;
        wait for 10ns;
       
    ------------ sel="01"--------------------------
        s_sel1 <="01"; s_dados1<="0000";
        s_sel2 <= s_sel1; s_dados2<=s_dados1;
        wait for 10ns;
        
        s_sel1 <="01"; s_dados1<="0001";
        s_sel2 <= s_sel1; s_dados2<=s_dados1;
        wait for 10ns;
        
        s_sel1 <="01"; s_dados1<="0010";
        s_sel2 <= s_sel1; s_dados2<=s_dados1;
        wait for 10ns;
        
        s_sel1 <="01"; s_dados1<="0011";
        s_sel2 <= s_sel1; s_dados2<=s_dados1;
        wait for 10ns;

        s_sel1 <="01"; s_dados1<="0100";
        s_sel2 <= s_sel1; s_dados2<=s_dados1;
        wait for 10ns;
        
        s_sel1 <="01"; s_dados1<="0101";
        s_sel2 <= s_sel1; s_dados2<=s_dados1;
        wait for 10ns;
        
        s_sel1 <="01"; s_dados1<="0110";
        s_sel2 <= s_sel1; s_dados2<=s_dados1;
        wait for 10ns;
        
        s_sel1 <="01"; s_dados1<="0111";
        s_sel2 <= s_sel1; s_dados2<=s_dados1;
        wait for 10ns;
        
        -----------
        
        s_sel1 <="01"; s_dados1<="1000";
        s_sel2 <= s_sel1; s_dados2<=s_dados1;
        wait for 10ns;
        
        s_sel1 <="01"; s_dados1<="1001";
        s_sel2 <= s_sel1; s_dados2<=s_dados1;
        wait for 10ns;
        
        s_sel1 <="01"; s_dados1<="1010";
        s_sel2 <= s_sel1; s_dados2<=s_dados1;
        wait for 10ns;
        
        s_sel1 <="01"; s_dados1<="1011";
        s_sel2 <= s_sel1; s_dados2<=s_dados1;
        wait for 10ns;
        
        s_sel1 <="01"; s_dados1<="1100";
        s_sel2 <= s_sel1; s_dados2<=s_dados1;
        wait for 10ns;
        
        s_sel1 <="01"; s_dados1<="1101";
        s_sel2 <= s_sel1; s_dados2<=s_dados1;
        wait for 10ns;
        
        s_sel1 <="01"; s_dados1<="1110";
        s_sel2 <= s_sel1; s_dados2<=s_dados1;
        wait for 10ns;
        
        s_sel1 <="01"; s_dados1<="1111";
        s_sel2 <= s_sel1; s_dados2<=s_dados1;
        wait for 10ns;
        
        ------------ sel="10"--------------------------
        s_sel1 <="10"; s_dados1<="0000";
        s_sel2 <= s_sel1; s_dados2<=s_dados1;
        wait for 10ns;
        
        s_sel1 <="10"; s_dados1<="0001";
        s_sel2 <= s_sel1; s_dados2<=s_dados1;
        wait for 10ns;
        
        s_sel1 <="10"; s_dados1<="0010";
        s_sel2 <= s_sel1; s_dados2<=s_dados1;
        wait for 10ns;
        
        s_sel1 <="10"; s_dados1<="0011";
        s_sel2 <= s_sel1; s_dados2<=s_dados1;
        wait for 10ns;

        s_sel1 <="10"; s_dados1<="0100";
        s_sel2 <= s_sel1; s_dados2<=s_dados1;
        wait for 10ns;
        
        s_sel1 <="10"; s_dados1<="0101";
        s_sel2 <= s_sel1; s_dados2<=s_dados1;
        wait for 10ns;
        
        s_sel1 <="10"; s_dados1<="0110";
        s_sel2 <= s_sel1; s_dados2<=s_dados1;
        wait for 10ns;
        
        s_sel1 <="10"; s_dados1<="0111";
        s_sel2 <= s_sel1; s_dados2<=s_dados1;
        wait for 10ns;
        
        -----------
        
        s_sel1 <="10"; s_dados1<="1000";
        s_sel2 <= s_sel1; s_dados2<=s_dados1;
        wait for 10ns;
        
        s_sel1 <="10"; s_dados1<="1001";
        s_sel2 <= s_sel1; s_dados2<=s_dados1;
        wait for 10ns;
        
        s_sel1 <="10"; s_dados1<="1010";
        s_sel2 <= s_sel1; s_dados2<=s_dados1;
        wait for 10ns;
        
        s_sel1 <="10"; s_dados1<="1011";
        s_sel2 <= s_sel1; s_dados2<=s_dados1;
        wait for 10ns;
        
        s_sel1 <="10"; s_dados1<="1100";
        s_sel2 <= s_sel1; s_dados2<=s_dados1;
        wait for 10ns;
        
        s_sel1 <="10"; s_dados1<="1101";
        s_sel2 <= s_sel1; s_dados2<=s_dados1;
        wait for 10ns;
        
        s_sel1 <="10"; s_dados1<="1110";
        s_sel2 <= s_sel1; s_dados2<=s_dados1;
        wait for 10ns;
        
        s_sel1 <="10"; s_dados1<="1111";
        s_sel2 <= s_sel1; s_dados2<=s_dados1;
        wait for 10ns;
        
     ------------ sel="11"--------------------------
        s_sel1 <="11"; s_dados1<="0000";
        s_sel2 <= s_sel1; s_dados2<=s_dados1;
        wait for 10ns;
        
        s_sel1 <="11"; s_dados1<="0001";
        s_sel2 <= s_sel1; s_dados2<=s_dados1;
        wait for 10ns;
        
        s_sel1 <="11"; s_dados1<="0010";
        s_sel2 <= s_sel1; s_dados2<=s_dados1;
        wait for 10ns;
        
        s_sel1 <="11"; s_dados1<="0011";
        s_sel2 <= s_sel1; s_dados2<=s_dados1;
        wait for 10ns;

        s_sel1 <="11"; s_dados1<="0100";
        s_sel2 <= s_sel1; s_dados2<=s_dados1;
        wait for 10ns;
        
        s_sel1 <="11"; s_dados1<="0101";
        s_sel2 <= s_sel1; s_dados2<=s_dados1;
        wait for 10ns;
        
        s_sel1 <="11"; s_dados1<="0110";
        s_sel2 <= s_sel1; s_dados2<=s_dados1;
        wait for 10ns;
        
        s_sel1 <="11"; s_dados1<="0111";
        s_sel2 <= s_sel1; s_dados2<=s_dados1;
        wait for 10ns;
        
        -----------
        
        s_sel1 <="11"; s_dados1<="1000";
        s_sel2 <= s_sel1; s_dados2<=s_dados1;
        wait for 10ns;
        
        s_sel1 <="11"; s_dados1<="1001";
        s_sel2 <= s_sel1; s_dados2<=s_dados1;
        wait for 10ns;
        
        s_sel1 <="11"; s_dados1<="1010";
        s_sel2 <= s_sel1; s_dados2<=s_dados1;
        wait for 10ns;
        
        s_sel1 <="11"; s_dados1<="1011";
        s_sel2 <= s_sel1; s_dados2<=s_dados1;
        wait for 10ns;
        
        s_sel1 <="11"; s_dados1<="1100";
        s_sel2 <= s_sel1; s_dados2<=s_dados1;
        wait for 10ns;
        
        s_sel1 <="11"; s_dados1<="1101";
        s_sel2 <= s_sel1; s_dados2<=s_dados1;
        wait for 10ns;
        
        s_sel1 <="11"; s_dados1<="1110";
        s_sel2 <= s_sel1; s_dados2<=s_dados1;
        wait for 10ns;
        
        s_sel1 <="11"; s_dados1<="1111";
        s_sel2 <= s_sel1; s_dados2<=s_dados1;
        wait;
        
       ------------ OUTROS--------------------------

    end process;
end Behavioral;
