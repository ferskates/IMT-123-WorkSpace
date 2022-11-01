----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.08.2022 21:04:00
-- Design Name: 
-- Module Name: LAB4_TB - Behavioral
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

entity LAB4_TB is
--  Port ( );
end LAB4_TB;

architecture Behavioral of LAB4_TB is

component LAB4 is
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
end component LAB4;

signal tbVectIn : std_logic_vector (4 downto 0);
signal A_s:std_logic ;
signal B_s:std_logic ;
signal C_s:std_logic ;
signal D_s:std_logic ;
signal E_s:std_logic ;
signal F_s:std_logic ;
signal G_s:std_logic ;

begin

DUT: LAB4 port map (
        V => tbVectIn(4),
        Z => tbVectIn(3),
        Y => tbVectIn(2),
        X => tbVectIn(1),
        W => tbVectIn(0),
            A => A_s,
            B => B_s,
            C => C_s,
            D => D_s,
            E => E_s,
            F => F_s,
            G => G_s);

process
    begin
        tbVectIn <= "UUUUU"; wait for 10 ns;
        tbVectIn <= "00000"; wait for 10 ns;
        tbVectIn <= "00001"; wait for 10 ns;
        tbVectIn <= "00010"; wait for 10 ns;
        tbVectIn <= "00011"; wait for 10 ns;
        tbVectIn <= "00100"; wait for 10 ns;
        tbVectIn <= "00101"; wait for 10 ns;
        tbVectIn <= "00110"; wait for 10 ns;
        tbVectIn <= "00111"; wait for 10 ns;
        tbVectIn <= "01000"; wait for 10 ns;
        tbVectIn <= "01001"; wait for 10 ns;
        tbVectIn <= "01010"; wait for 10 ns;
        tbVectIn <= "01011"; wait for 10 ns;
        tbVectIn <= "01100"; wait for 10 ns;
        tbVectIn <= "01101"; wait for 10 ns;
        tbVectIn <= "01110"; wait for 10 ns;
        tbVectIn <= "01111"; wait for 10 ns;

    end process;

end Behavioral;
