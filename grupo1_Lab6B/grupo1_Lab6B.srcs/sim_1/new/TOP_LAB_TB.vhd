----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.09.2022 08:30:10
-- Design Name: 
-- Module Name: TOP_LAB_TB - Behavioral
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

entity TOP_LAB_TB is
--  Port ( );
end TOP_LAB_TB;

architecture Behavioral of TOP_LAB_TB is

component TOP_LAB is
    Port ( A : in STD_LOGIC_VECTOR (0 to 11);
           B : in STD_LOGIC_VECTOR (0 to 11);
           MENOR : out STD_LOGIC;
           IGUAL : out STD_LOGIC;
           MAYOR : out STD_LOGIC);
end component TOP_LAB;

signal A : std_logic_vector (0 to 11);
signal B : std_logic_vector (0 to 11);
signal MENOR:std_logic ;
signal MAYOR:std_logic ;
signal IGUAL:std_logic ;

begin

TB: TOP_LAB port map (A(0)=>A(0),A(1)=>A(1),A(2)=>A(2),A(3)=>A(3),
                        A(4)=>A(4),A(5)=>A(5),A(6)=>A(6),A(7)=>A(7),
                        A(8)=>A(8),A(9)=>A(9),A(10)=>A(10),A(11)=>A(11),
                        B(0)=>B(0),B(1)=>B(1),B(2)=>B(2),B(3)=>B(3),
                        B(4)=>B(4),B(5)=>B(5),B(6)=>B(6),B(7)=>B(7),
                        B(8)=>B(8),B(9)=>B(9),B(10)=>B(10),B(11)=>B(11),
                        MENOR=>MENOR,MAYOR=>MAYOR,IGUAL=>IGUAL);

process
begin

A <= "101000011010";B <= "101100101101"; wait for 10 ns;
A <= "000101000101";B <= "000110000010"; wait for 10 ns;
A <= "011010010100";B <= "011010010100"; wait for 10 ns;
A <= "101011010101";B <= "010101101010"; wait for 10 ns;
A <= "101010101001";B <= "101010101001"; wait for 10 ns;
A <= "000000101001";B <= "000000101010"; wait for 10 ns;
end process;

end Behavioral;
