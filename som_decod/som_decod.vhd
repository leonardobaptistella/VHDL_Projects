LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY som_decod IS
PORT( j0,k0,ti,j1,k1 :IN STD_LOGIC;
		sai :BUFFER BIT_VECTOR(6 DOWNTO 0));
END som_decod;

ARCHITECTURE estrutural OF som_decod IS
	SIGNAL m0, p0, m1, p1: STD_LOGIC;
	
	COMPONENT somador_completo IS
		PORT( a0,b0,ci :IN STD_LOGIC;
		s1,c1 :OUT STD_LOGIC);
	END COMPONENT; 

	COMPONENT codifcador_bcd IS
		PORT ( entrada :IN BIT_VECTOR(3 DOWNTO 0);
		saida :BUFFER BIT_VECTOR(6 DOWNTO 0));
	END COMPONENT;
	
	BEGIN 
		F1: somador_completo PORT MAP(j0,k0,ti,m0,p0);
		F2: somador_completo PORT MAP(j1,k1,p0,m1,p1);
	END estrutural;