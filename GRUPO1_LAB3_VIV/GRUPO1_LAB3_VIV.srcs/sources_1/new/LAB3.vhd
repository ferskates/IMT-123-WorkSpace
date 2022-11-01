----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.08.2022 18:43:46
-- Design Name: 
-- Module Name: LAB3 - Behavioral
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

entity LAB3 is
    Port ( S0 : in STD_LOGIC;
           S1 : in STD_LOGIC;
           D0 : in STD_LOGIC;
           D1 : in STD_LOGIC;
           D2 : in STD_LOGIC;
           D3 : in STD_LOGIC;
           Q :  out STD_LOGIC);
end LAB3;

architecture Behavioral of LAB3 is
signal U1: std_logic;
signal U2: std_logic;
signal U3: std_logic;
signal U4: std_logic;
signal U5: std_logic;
signal U6: std_logic;
begin

U1 <= NOT S0;
U2 <= NOT S1;
U3 <= D0 AND U1 AND U2;
U4 <= D1 AND U2 AND S0;
U5 <= D2 AND S1 AND U1;
U6 <= D3 AND S1 AND S0;
Q  <= U3 OR U4 OR U5 OR U6;

end Behavioral;
