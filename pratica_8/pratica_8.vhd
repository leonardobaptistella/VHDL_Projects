LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

ENTITY pratica_8 IS
GENERIC(n: NATURAL:=4);
PORT ( A: IN STD_LOGIC_VECTOR(n-1 DOWNTO 0); --Palavra A
		 B: IN STD_LOGIC_VECTOR(n-1 DOWNTO 0); --Palavra B
		 C: IN STD_LOGIC;								--Carry de Entrada
		 C_O : OUT STD_LOGIC;
	    S : OUT STD_LOGIC_VECTOR(n-1 DOWNTO 0)) ; -- Saida Soma
END pratica_8 ;

ARCHITECTURE LogicFunc OF pratica_8 IS
	SIGNAL carry : STD_LOGIC_VECTOR(n-1 DOWNTO 0); --
BEGIN
	carry(0)<= C;
	
	and_for : FOR i IN 1 TO n-1 GENERATE
		S(i) <=  A(i) XOR B(i) XOR carry(i-1) ;
		carry(i) <= (A(i) AND B(i)) OR (carry(i-1) AND A(i)) OR (carry(i-1) AND B(i)) ;
	END GENERATE and_for;
	C_O <= carry(n-1);
END LogicFunc ;
