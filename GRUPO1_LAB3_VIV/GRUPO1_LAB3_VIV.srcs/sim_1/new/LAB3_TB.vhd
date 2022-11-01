----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.08.2022 18:58:59
-- Design Name: 
-- Module Name: LAB3_TB - Behavioral
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

entity LAB3_TB is
--  Port ( );
end LAB3_TB;

architecture Behavioral of LAB3_TB is

component LAB3 is
    Port ( S0 : in STD_LOGIC;
           S1 : in STD_LOGIC;
           D0 : in STD_LOGIC;
           D1 : in STD_LOGIC;
           D2 : in STD_LOGIC;
           D3 : in STD_LOGIC;
           Q :  out STD_LOGIC);
end component LAB3;
signal S0_s:std_logic ;
signal S1_s:std_logic ;
signal D0_s:std_logic ;
signal D1_s:std_logic ;
signal D2_s:std_logic ;
signal D3_s:std_logic ;
signal Q_s:std_logic ;

begin

Dut: LAB3 port map(
            S0 => S0_s,
            S1 => S1_s,
            D0 => D0_s,
            D1 => D1_s,
            D2 => D2_s,
            D3 => D3_s,
            Q => Q_s);
process 
begin 
--1
S0_s <= '0';
S1_s <= '0';
D0_s <= '0';
D1_s <= '1';
D2_s <= '0';
D3_s <= '1';
wait for 50 ns;
--2
S0_s <= '1';
S1_s <= '0';
D0_s <= '0';
D1_s <= '1';
D2_s <= '0';
D3_s <= '0';
wait for 50 ns;
--3
S0_s <= '0';
S1_s <= '1';
D0_s <= '0';
D1_s <= '1';
D2_s <= '1';
D3_s <= '0';
wait for 50 ns;
--4
S0_s <= '1';
S1_s <= '1';
D0_s <= '1';
D1_s <= '1';
D2_s <= '0';
D3_s <= '1';
wait for 50 ns;
--5
S0_s <= '0';
S1_s <= '0';
D0_s <= '1';
D1_s <= '0';
D2_s <= '1';
D3_s <= '1';
wait for 50 ns;
--6
S0_s <= '1';
S1_s <= '0';
D0_s <= '1';
D1_s <= '0';
D2_s <= '0';
D3_s <= '1';
wait for 50 ns;
--7
S0_s <= '0';
S1_s <= '1';
D0_s <= '1';
D1_s <= '1';
D2_s <= '1';
D3_s <= '0';
wait for 50 ns;
--8
S0_s <= '1';
S1_s <= '1';
D0_s <= '0';
D1_s <= '0';
D2_s <= '0';
D3_s <= '1';
wait for 50 ns;
--9
S0_s <= '0';
S1_s <= '0';
D0_s <= '1';
D1_s <= '1';
D2_s <= '0';
D3_s <= '0';
wait for 50 ns;
--10
S0_s <= '1';
S1_s <= '0';
D0_s <= '0';
D1_s <= '0';
D2_s <= '1';
D3_s <= '1';
wait for 50 ns;
--11
S0_s <= '0';
S1_s <= '1';
D0_s <= '1';
D1_s <= '0';
D2_s <= '1';
D3_s <= '0';
wait for 50 ns;
--12
S0_s <= '1';
S1_s <= '1';
D0_s <= '1';
D1_s <= '1';
D2_s <= '0';
D3_s <= '1';
wait for 50 ns;
--13
S0_s <= '0';
S1_s <= '0';
D0_s <= '0';
D1_s <= '1';
D2_s <= '1';
D3_s <= '1';
wait for 50 ns;
--14
S0_s <= '1';
S1_s <= '0';
D0_s <= '1';
D1_s <= '1';
D2_s <= '1';
D3_s <= '1';
wait for 50 ns;

end process;
end Behavioral;
