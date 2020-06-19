--Leonardo Baptistella N°Usp:10821172

--Cria o comparador que é usado no projeto
ENTITY comp_1 IS 
	PORT(a, b : IN BIT;
		  y    : OUT BIT);
END ENTITY comp_1;

ARCHITECTURE fluxo_dados OF comp_1 IS 
	BEGIN
	y <= a XOR b;
END ARCHITECTURE fluxo_dados;

-- Cria uma porta NOR de 4 entradas
ENTITY comp_2 IS 
	PORT(e0, e1, e2, e3 : IN BIT;
		     s              : OUT BIT);
END ENTITY comp_2;

ARCHITECTURE fluxo_dados OF comp_2 IS 
	BEGIN
	 s <= NOT(e0 OR e1 OR e2 OR e3);
END ARCHITECTURE fluxo_dados;


--Cria a unidade da prática 2
ENTITY pratica_2 IS
	PORT(A, B : IN BIT_VECTOR(3 DOWNTO 0);
		   i   : OUT BIT);
END ENTITY pratica_2;

ARCHITECTURE fluxo_dados OF pratica_2 IS
	SIGNAL X : BIT_VECTOR(3 DOWNTO 0);
	
	COMPONENT comp_1 IS -- Usa o comp_1
		PORT(a, b : IN BIT;
			  y    : OUT BIT);
	END COMPONENT;
	
	COMPONENT comp_2 IS  -- Usa o comp_2
		PORT(e0, e1, e2, e3 : IN BIT;
				  s               : OUT BIT);
	END COMPONENT;
	
	BEGIN
		--Compara os bits de mesma posição nas 2 palavras
		C3 : comp_1 PORT MAP(a => A(3), b => B(3), y => X(3));
		C2 : comp_1 PORT MAP(a => A(2), b => B(2), y => X(2));
		C1 : comp_1 PORT MAP(a => A(1), b => B(1), y => X(1));
		C0 : comp_1 PORT MAP(a => A(0), b => B(0), y => X(0));
		
		res : comp_2 PORT MAP(e3 => X(3), e2 => X(2), e1 => X(1), e0 => X(0), s => i);
END ARCHITECTURE fluxo_dados;
		
		
