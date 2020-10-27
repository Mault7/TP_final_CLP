----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.10.2020 01:04:44
-- Design Name: 
-- Module Name: tb_Multiplicador_de_punto_flotante - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_Multiplicador_de_punto_flotante is
--  Port ( );
end tb_Multiplicador_de_punto_flotante;

architecture Behavioral of tb_Multiplicador_de_punto_flotante is

component Multiplicador_de_punto_flotante is
    Port ( x : in STD_LOGIC_VECTOR (31 downto 0);   --Factor X
           y : in STD_LOGIC_VECTOR (31 downto 0);   --factor Y 
           z : out STD_LOGIC_VECTOR (31 downto 0)); --Producto Z
end component;


--entradas
signal x : STD_LOGIC_VECTOR (31 downto 0);   --Factor X
signal y : STD_LOGIC_VECTOR (31 downto 0);   --factor Y 

--salida
signal z : STD_LOGIC_VECTOR (31 downto 0); --Producto Z

begin

     uut: Multiplicador_de_punto_flotante PORT MAP (
          x => x,
          y => y,
          z => z
        );
     stim_proc: process
     begin        
              -- hold reset state for 100 ns.
         wait for 100 ns;
                
                   x<="01000000001000000000000000000000";--2.5
                   y<="11000001000110110011001100110011";--(-9.7)
            
         wait;
     end process;
end Behavioral;







