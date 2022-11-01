----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.09.2022 05:32:54
-- Design Name: 
-- Module Name: TOP_LAB - Behavioral
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

entity TOP_LAB is
    Port ( A : in STD_LOGIC_VECTOR (0 to 11);
           B : in STD_LOGIC_VECTOR (0 to 11);
           MENOR : out STD_LOGIC;
           IGUAL : out STD_LOGIC;
           MAYOR : out STD_LOGIC);
end TOP_LAB;

architecture Behavioral of TOP_LAB is

component CD4063 is
    Port ( A : in STD_LOGIC_VECTOR (0 to 3);
           B : in STD_LOGIC_VECTOR (0 to 3);
           MeIn : in STD_LOGIC;
           MaIn : in STD_LOGIC;
           IgIn : in STD_LOGIC;
           MENOR : out STD_LOGIC;
           IGUAL : out STD_LOGIC;
           MAYOR : out STD_LOGIC);
end component CD4063;

signal AUX: std_logic_vector (0 to 6);

begin

F1: CD4063 port map (A(0)=>A(0),A(1)=>A(1),A(2)=>A(2),A(3)=>A(3),
                    B(0)=>B(0),B(1)=>B(1),B(2)=>B(2),B(3)=>B(3),
                    MeIn=>'0',MaIn=>'0',IgIn=>'1',
                    MENOR=>AUX(0),IGUAL=>AUX(1),MAYOR=>AUX(2));

F2: CD4063 port map (A(0)=>A(4),A(1)=>A(5),A(2)=>A(6),A(3)=>A(7),
                    B(0)=>B(4),B(1)=>B(5),B(2)=>B(6),B(3)=>B(7),
                    MeIn=>AUX(0),MaIn=>AUX(2),IgIn=>AUX(1),
                    MENOR=>AUX(3),IGUAL=>AUX(4),MAYOR=>AUX(5));
                    

F3: CD4063 port map (A(0)=>A(8),A(1)=>A(9),A(2)=>A(10),A(3)=>A(11),
                    B(0)=>B(8),B(1)=>B(9),B(2)=>B(10),B(3)=>B(11),
                    MeIn=>AUX(3),MaIn=>AUX(5),IgIn=>AUX(4),
                    MENOR=>MENOR,IGUAL=>IGUAL,MAYOR=>MAYOR);
                                       
end Behavioral;
