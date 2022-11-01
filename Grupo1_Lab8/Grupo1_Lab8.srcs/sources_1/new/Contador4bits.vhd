----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 18.10.2022 05:51:19
-- Design Name: 
-- Module Name: Contador4bits - Behavioral
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
use IEEE.std_logic_unsigned.ALL;
use IEEE.std_logic_arith.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Contador4bits is
  Port ( clk, reset : in std_logic;
         Q : out std_logic_vector (3 downto 0) );
end Contador4bits;

architecture Behavioral of Contador4bits is
signal s: std_logic_vector (3 downto 0):="0000";
signal cuenta: integer range 0 to 24999999:=0;
begin
divisor_frecuencia : process(clk, reset)
    begin
    if reset='0' then
        s<="0000";
        cuenta<=0;
        elsif rising_edge (clk)then
            if cuenta = 24999999 then
            cuenta <= 0;
            s<= not(s);
                else
                cuenta<=cuenta+1;
                s<=s+1;
            end if;
    end if;
    end process;
Q<=s;
end Behavioral;
