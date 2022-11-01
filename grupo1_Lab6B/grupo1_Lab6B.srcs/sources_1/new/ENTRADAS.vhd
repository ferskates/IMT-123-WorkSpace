----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.09.2022 23:58:47
-- Design Name: 
-- Module Name: ENTRADAS - Behavioral
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

entity ENTRADAS is
    Port ( A : in STD_LOGIC_VECTOR (0 to 3);
           B : in STD_LOGIC_VECTOR (0 to 3);
           X : out STD_LOGIC_VECTOR (0 to 7);
           Y : out STD_LOGIC_VECTOR (0 to 7));
end ENTRADAS;

architecture Behavioral of ENTRADAS is

component NOT_GATE1 is
    Port ( A : in STD_LOGIC;
           B : out STD_LOGIC);
end component NOT_GATE1;

component YES_GATE1 is
    Port ( A : in STD_LOGIC;
           B : out STD_LOGIC);
end component YES_GATE1;

begin

A1: NOT_GATE1 port map (A=>A(0),B=>X(0));
A2: YES_GATE1 port map (A=>A(0),B=>X(1));
A3: NOT_GATE1 port map (A=>A(1),B=>X(2));
A4: YES_GATE1 port map (A=>A(1),B=>X(3));
A5: NOT_GATE1 port map (A=>A(2),B=>X(4));
A6: YES_GATE1 port map (A=>A(2),B=>X(5));
A7: NOT_GATE1 port map (A=>A(3),B=>X(6));
A8: YES_GATE1 port map (A=>A(3),B=>X(7));

A9: NOT_GATE1 port map (A=>B(0),B=>Y(0));
A10: YES_GATE1 port map (A=>B(0),B=>Y(1));
A11: NOT_GATE1 port map (A=>B(1),B=>Y(2));
A12: YES_GATE1 port map (A=>B(1),B=>Y(3));
A13: NOT_GATE1 port map (A=>B(2),B=>Y(4));
A14: YES_GATE1 port map (A=>B(2),B=>Y(5));
A15: NOT_GATE1 port map (A=>B(3),B=>Y(6));
A16: YES_GATE1 port map (A=>B(3),B=>Y(7));

end Behavioral;
