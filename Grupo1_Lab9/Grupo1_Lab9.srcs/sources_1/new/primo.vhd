----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.10.2022 23:42:52
-- Design Name: 
-- Module Name: primo - Behavioral
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

entity primo is
  Port (num : in std_logic_vector (3 downto 0);
        y : out std_logic);
end primo;

architecture Behavioral of primo is
signal u0: std_logic;
signal u1: std_logic;
begin
u0<=num(0) and (num(1) or ((not(num(3)) or num(2))));
u1<=num(1) and (num(3) nor num(2));
y<=u0 or u1;
end Behavioral;
