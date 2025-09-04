----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.08.2025 11:44:52
-- Design Name: 
-- Module Name: tb_fsm_seq110 - Behavioral
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

entity tb_fsm_seq110_e_101 is
--  Port ( );
end tb_fsm_seq110_e_101;

architecture Behavioral of tb_fsm_seq110_e_101 is

component fsm_seq110_e_101 is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           a : in STD_LOGIC;
           Z : out STD_LOGIC);
end component;

signal clk,reset,a,Z : std_logic := '0';

begin

    uut: fsm_seq110_e_101 port map(
        clk => clk,
        reset => reset,
        a => a,
        Z => Z); 
    
    -- estimulos nas entradas
    clk <= not clk after 5 ns; --  Fclk=100MHz ; Tclk=10 ns;
    reset <= '0', '1' after 15 ns, '0' after 25 ns;
    a <= '0', '1' after 65 ns, '0' after 105 ns; 
    
    
end Behavioral;
