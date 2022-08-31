----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.03.2020 14:39:55
-- Design Name: 
-- Module Name: tb_contador_sincrono - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_contador_sincrono is
--  Port ( );
end tb_contador_sincrono;

architecture Behavioral of tb_contador_sincrono is

component contador_sincrono is
    Port ( reset : in STD_LOGIC;
           clk : in STD_LOGIC;
           saida : out STD_LOGIC_VECTOR (2 downto 0));
end component;

signal sreset : std_logic := '0';
signal sclk : std_logic := '0';
signal ssaida: std_logic_vector(2 downto 0) := "000";

begin

	uut: contador_sincrono port map(
		reset	=> sreset,
		clk	=> sclk,
		saida	=> ssaida);
		
	-- criando estimulos nas entradas
	sreset <= '0', '1' after 15 ns, '0' after 35 ns; -- reset fica ativo por 20 ns;
	sclk <= not sclk after 5 ns; -- cria sinal periodico com T=10ns, fclk=100MHz	

end Behavioral;
