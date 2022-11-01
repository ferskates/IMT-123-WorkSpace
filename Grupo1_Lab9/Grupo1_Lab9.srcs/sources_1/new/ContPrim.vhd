----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.10.2022 23:19:37
-- Design Name: 
-- Module Name: ContPrim - Behavioral
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

entity ContPrim is
  Port (clk, rst, en : in std_logic;
        Qs : out std_logic_vector (3 downto 0);
        ys : out std_logic);
end ContPrim;

architecture Behavioral of ContPrim is
component cont4bits is
  Port (clk, reset : in std_logic;
        Q : out std_logic_vector (3 downto 0));
end component cont4bits;
component primo is
  Port (num : inout std_logic_vector (3 downto 0);
        y : out std_logic);
end component primo;
signal ene: std_logic;
signal Qi: std_logic_vector (3 downto 0);
begin
ene <= clk and en; 
utt0: cont4bits port map (clk=>ene,reset=>rst,Q=>Qi);
utt1: primo port map (num=>Qi,y=>ys);
Qs<=Qi;
end Behavioral;
