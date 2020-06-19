LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY pratica_5 IS
	PORT( a,b :IN STD_LOGIC;
	s,cf :OUT STD_LOGIC);
END pratica_5;

ARCHITECTURE a OF pratica_5 IS
  BEGIN
	s <= a XOR b;
	cf <= a AND b;
END a;
