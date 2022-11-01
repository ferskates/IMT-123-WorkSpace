----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.09.2022 22:21:07
-- Design Name: 
-- Module Name: MODULO - Behavioral
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

entity MODULO is
    Port ( X : in STD_LOGIC_VECTOR (0 to 7);--A
           Y : in STD_LOGIC_VECTOR (0 to 7);--B
           Z : in STD_LOGIC;
           S : out STD_LOGIC);
end MODULO;

architecture Behavioral of MODULO is

component NOT_GATE1 is
    Port ( A : in STD_LOGIC;
           B : out STD_LOGIC);
end component NOT_GATE1;

component AND_GATE2 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : out STD_LOGIC);
end component AND_GATE2;

component NAND_GATE2 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : out STD_LOGIC);
end component NAND_GATE2;

component NAND_GATE5 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           D : in STD_LOGIC;
           E : in STD_LOGIC;
           F : out STD_LOGIC);
end component NAND_GATE5;

component OR_GATE2 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : out STD_LOGIC);
end component OR_GATE2;

component OR_GATE3 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           D : out STD_LOGIC);
end component OR_GATE3;

component OR_GATE4 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           D : in STD_LOGIC;
           E : out STD_LOGIC);
end component OR_GATE4;

component OR_GATE5 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           D : in STD_LOGIC;
           E : in STD_LOGIC;
           F : out STD_LOGIC);
end component OR_GATE5;

signal TEMP: std_logic_vector (0 to 30);

begin

N0: NAND_GATE2 port map (A=>X(7),B=>Y(7),C=>TEMP(7));
N1: AND_GATE2 port map (A=>X(6),B=>Y(6),C=>TEMP(6));
N2: NAND_GATE2 port map (A=>X(5),B=>Y(5),C=>TEMP(5));
N3: AND_GATE2 port map (A=>X(4),B=>Y(4),C=>TEMP(4));
N4: NAND_GATE2 port map (A=>X(3),B=>Y(3),C=>TEMP(3));
N5: AND_GATE2 port map (A=>X(2),B=>Y(2),C=>TEMP(2));
N6: NAND_GATE2 port map (A=>X(1),B=>Y(1),C=>TEMP(1));
N7: AND_GATE2 port map (A=>X(0),B=>Y(0),C=>TEMP(0));

A1: NOT_GATE1 port map (A=>TEMP(7),B=>TEMP(8));
A2: NOT_GATE1 port map (A=>TEMP(5),B=>TEMP(9));
A3: NOT_GATE1 port map (A=>TEMP(3),B=>TEMP(10));
A4: NOT_GATE1 port map (A=>TEMP(1),B=>TEMP(11));

O0: OR_GATE2 port map (A=>TEMP(8),B=>TEMP(6),C=>TEMP(12));
O1: OR_GATE2 port map (A=>TEMP(9),B=>TEMP(4),C=>TEMP(13));
O2: OR_GATE2 port map (A=>TEMP(10),B=>TEMP(2),C=>TEMP(14));
O3: OR_GATE2 port map (A=>TEMP(11),B=>TEMP(0),C=>TEMP(15));

P0: OR_GATE2 port map (A=>TEMP(12),B=>TEMP(5),C=>TEMP(16));
P1: OR_GATE3 port map (A=>TEMP(12),B=>TEMP(13),C=>TEMP(3),D=>TEMP(17));
P2: OR_GATE4 port map (A=>TEMP(12),B=>TEMP(13),C=>TEMP(14),D=>TEMP(1),E=>TEMP(18));
P3: OR_GATE5 port map (A=>TEMP(12),B=>TEMP(13),C=>TEMP(14),D=>TEMP(15),E=>Z,F=>TEMP(19));

SO: NAND_GATE5 port map (A=>TEMP(7),B=>TEMP(16),C=>TEMP(17),D=>TEMP(18),E=>TEMP(19),F=>S);

end Behavioral;
