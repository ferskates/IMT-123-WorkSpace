----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.09.2022 00:20:37
-- Design Name: 
-- Module Name: CD4063 - Behavioral
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

entity CD4063 is
    Port ( A : in STD_LOGIC_VECTOR (0 to 3);
           B : in STD_LOGIC_VECTOR (0 to 3);
           MeIn : in STD_LOGIC;
           MaIn : in STD_LOGIC;
           IgIn : in STD_LOGIC;
           MENOR : out STD_LOGIC;
           IGUAL : out STD_LOGIC;
           MAYOR : out STD_LOGIC);
end CD4063;

architecture Behavioral of CD4063 is

component AND_GATE3 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           D : out STD_LOGIC);
end component AND_GATE3;

component ENTRADAS is
    Port ( A : in STD_LOGIC_VECTOR (0 to 3);
           B : in STD_LOGIC_VECTOR (0 to 3);
           X : out STD_LOGIC_VECTOR (0 to 7);
           Y : out STD_LOGIC_VECTOR (0 to 7));
end component ENTRADAS;

component MODULO is
    Port ( X : in STD_LOGIC_VECTOR (0 to 7);--A
           Y : in STD_LOGIC_VECTOR (0 to 7);--B
           Z : in STD_LOGIC;
           S : out STD_LOGIC);
end component MODULO;

signal TEMP: std_logic_vector (0 to 15);
signal AUX: std_logic_vector (0 to 6);

begin

E1: ENTRADAS port map (A(0)=>A(0),A(1)=>A(1),A(2)=>A(2),A(3)=>A(3),B(0)=>B(0),B(1)=>B(1),B(2)=>B(2),B(3)=>B(3),
X(0)=>TEMP(0),X(1)=>TEMP(1),X(2)=>TEMP(2),X(3)=>TEMP(3),X(4)=>TEMP(4),X(5)=>TEMP(5),X(6)=>TEMP(6),X(7)=>TEMP(7),
Y(0)=>TEMP(8),Y(1)=>TEMP(9),Y(2)=>TEMP(10),Y(3)=>TEMP(11),Y(4)=>TEMP(12),Y(5)=>TEMP(13),Y(6)=>TEMP(14),Y(7)=>TEMP(15));

AUX(0) <= NOT MeIn;

M1: MODULO port map (X(0)=>TEMP(1),X(1)=>TEMP(0),X(2)=>TEMP(3),X(3)=>TEMP(2),X(4)=>TEMP(5),X(5)=>TEMP(4),X(6)=>TEMP(7),X(7)=>TEMP(6),
                     Y(0)=>TEMP(8),Y(1)=>TEMP(9),Y(2)=>TEMP(10),Y(3)=>TEMP(11),Y(4)=>TEMP(12),Y(5)=>TEMP(13),Y(6)=>TEMP(14),Y(7)=>TEMP(15),
                     Z=>AUX(0),S=>AUX(2));

AUX(1) <= NOT MaIn;

M2: MODULO port map (X(0)=>TEMP(9),X(1)=>TEMP(8),X(2)=>TEMP(11),X(3)=>TEMP(10),X(4)=>TEMP(13),X(5)=>TEMP(12),X(6)=>TEMP(15),X(7)=>TEMP(14),
                     Y(0)=>TEMP(0),Y(1)=>TEMP(1),Y(2)=>TEMP(2),Y(3)=>TEMP(3),Y(4)=>TEMP(4),Y(5)=>TEMP(5),Y(6)=>TEMP(6),Y(7)=>TEMP(7),
                     Z=>AUX(1),S=>AUX(3));
                     
AUX(4) <= NOT AUX(2);
AUX(5) <= NOT AUX(3);
 
I1: AND_GATE3 port map (A=>AUX(4),B=>IgIn,C=>AUX(5),D=>AUX(6));

MENOR <= AUX (2);
IGUAL <= AUX(6);
MAYOR <= AUX(3);

end Behavioral;
