----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.08.2022 18:54:03
-- Design Name: 
-- Module Name: LAB4 - Behavioral
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

entity LAB4 is
    Port ( V : in STD_LOGIC;
           W : in STD_LOGIC;
           X : in STD_LOGIC;
           Y : in STD_LOGIC;
           Z : in STD_LOGIC;
           A : out STD_LOGIC;
           B : out STD_LOGIC;
           C : out STD_LOGIC;
           D : out STD_LOGIC;
           E : out STD_LOGIC;
           F : out STD_LOGIC;
           G : out STD_LOGIC);
end LAB4;

architecture Behavioral of LAB4 is

component AND_GATE2 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : out STD_LOGIC);
end component AND_GATE2;

component AND_GATE3 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           D : out STD_LOGIC);
end component AND_GATE3;

component NAND_GATE2 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : out STD_LOGIC);
end component NAND_GATE2;

component NAND_GATE3 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           D : out STD_LOGIC);
end component NAND_GATE3;

component NAND_GATE4 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           D : in STD_LOGIC;
           E : out STD_LOGIC);
end component NAND_GATE4;

component NOT_GATE1 is
    Port ( A : in STD_LOGIC;
           B : out STD_LOGIC);
end component NOT_GATE1;

signal TEMP: std_logic_vector (26 downto 0);

begin

A1: NOT_GATE1 port map (A=>W,B=>TEMP(0));
A2: NOT_GATE1 port map (A=>X,B=>TEMP(1));
A3: NOT_GATE1 port map (A=>Y,B=>TEMP(2));
A4: NOT_GATE1 port map (A=>Z,B=>TEMP(3));
A5: NOT_GATE1 port map (A=>V,B=>TEMP(26));

B1: NAND_GATE2 port map (A=>TEMP(0),B=>TEMP(26),C=>TEMP(4));
B2: NAND_GATE2 port map (A=>TEMP(1),B=>TEMP(26),C=>TEMP(5));
B3: NAND_GATE2 port map (A=>TEMP(2),B=>TEMP(26),C=>TEMP(6));
B4: NAND_GATE2 port map (A=>TEMP(3),B=>TEMP(26),C=>TEMP(7));

C1: NAND_GATE2 port map (A=>TEMP(5),B=>TEMP(7),C=>TEMP(8));
C2: NAND_GATE2 port map (A=>TEMP(0),B=>TEMP(6),C=>TEMP(9));
C3: NAND_GATE4 port map (A=>TEMP(4),B=>TEMP(1),C=>TEMP(2),D=>TEMP(3),E=>TEMP(10));
D1: AND_GATE3 port map (A=>TEMP(8),B=>TEMP(9),C=>TEMP(10),D=>A);

C4: NAND_GATE2 port map (A=>TEMP(5),B=>TEMP(7),C=>TEMP(11));
C5: NAND_GATE3 port map (A=>TEMP(4),B=>TEMP(1),C=>TEMP(6),D=>TEMP(12));
C6: NAND_GATE3 port map (A=>TEMP(0),B=>TEMP(5),C=>TEMP(6),D=>TEMP(13));
D2: AND_GATE3 port map (A=>TEMP(11),B=>TEMP(12),C=>TEMP(13),D=>B);

C7: NAND_GATE2 port map (A=>TEMP(6),B=>TEMP(7),C=>TEMP(14));
C8: NAND_GATE3 port map (A=>TEMP(0),B=>TEMP(5),C=>TEMP(2),D=>TEMP(15));
D3: AND_GATE2 port map (A=>TEMP(14),B=>TEMP(15),C=>C);

C9: NAND_GATE3 port map (A=>TEMP(4),B=>TEMP(1),C=>TEMP(2),D=>TEMP(16));
C10: NAND_GATE3 port map (A=>TEMP(0),B=>TEMP(1),C=>TEMP(6),D=>TEMP(17));
C11: NAND_GATE3 port map (A=>TEMP(4),B=>TEMP(5),C=>TEMP(6),D=>TEMP(18));
D4: AND_GATE3 port map (A=>TEMP(16),B=>TEMP(17),C=>TEMP(18),D=>D);

C12: NOT_GATE1 port map (A=>TEMP(4),B=>TEMP(19));
C13: NAND_GATE2 port map (A=>TEMP(1),B=>TEMP(6),C=>TEMP(20));
D5: AND_GATE2 port map (A=>TEMP(19),B=>TEMP(20),C=>E);

C14: NAND_GATE2 port map (A=>TEMP(4),B=>TEMP(5),C=>TEMP(21));
C15: NAND_GATE2 port map (A=>TEMP(5),B=>TEMP(2),C=>TEMP(22));
C16: NAND_GATE3 port map (A=>TEMP(4),B=>TEMP(2),C=>TEMP(3),D=>TEMP(23));
D6: AND_GATE3 port map (A=>TEMP(21),B=>TEMP(22),C=>TEMP(23),D=>F);

C17: NAND_GATE3 port map (A=>TEMP(4),B=>TEMP(5),C=>TEMP(6),D=>TEMP(24));
C18: NAND_GATE3 port map (A=>TEMP(1),B=>TEMP(2),C=>TEMP(3),D=>TEMP(25));
D7: AND_GATE2 port map (A=>TEMP(24),B=>TEMP(25),C=>G);

end Behavioral;
