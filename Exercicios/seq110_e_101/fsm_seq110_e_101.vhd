library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity fsm_seq110_e_101 is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           a : in STD_LOGIC;
           Z : out STD_LOGIC);
end fsm_seq110_e_101;

architecture Behavioral of fsm_seq110_e_101 is

signal Q, Qp : std_logic_vector(2 downto 0) := "00";

begin

	Qp(0) <= a and (not Q(2) or Q(1)) ;
	Qp(1) <= Q(0) and (Q(2) or (Q(1) and Q(2) and not a));
	Qp(2) <= (Q(1) and Q(2)) and ((Q(0)and not a) or (not Q(0) and a));
	Z <= Q(1) and Q(2);
	
	process(clk,reset)
	begin
		if reset='1' then
			Q <= "00";
		elsif rising_edge(clk) then
			Q <= Qp;
		end if;
	end process;

end Behavioral;
