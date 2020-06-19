ENTITY pratica_4 IS
	PORT(A : IN BIT_VECTOR(3 DOWNTO 0);
		  B : IN BIT_VECTOR(3 DOWNTO 0);
		  igual : OUT BIT);
END pratica_4;

ARCHITECTURE comportamental OF pratica_4 IS
BEGIN 
	PROCESS ( A, B )
	BEGIN 
			IF(A = B) THEN 
				igual <= '1';
			ELSE 
				igual <= '0';
			END IF;
	END PROCESS;
END comportamental;
