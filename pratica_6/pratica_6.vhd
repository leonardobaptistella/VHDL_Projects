library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--Entidade criada 
entity pratica_6 is
	port( T: in std_logic;
	Clock, Reset, Enable: in std_logic;
	Q1: out std_logic);
end pratica_6;
 
architecture Comportamental of pratica_6 is
	signal tmp: std_logic;
	begin
	process 
	begin
		if Reset = '1' then 
			tmp <= '0';
		end if;
		wait until(Clock'EVENT AND Clock = '1') ;
			if T='0' then
				tmp <= tmp;
			elsif T='1'and Enable = '1' then
				tmp <= not (tmp);
			end if;
	end process;
	Q1 <= tmp;

end Comportamental;
