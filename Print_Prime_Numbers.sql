WITH RECURSIVE cte(n) AS ( 
  SELECT 2 
  UNION ALL 
  SELECT n+1 from cte where n<1000 )
SELECT GROUP_CONCAT(cte.n SEPARATOR '&') 
  FROM cte 
  WHERE NOT EXISTS ( 
  SELECT n FROM cte AS c 
  WHERE c.n > 1 AND c.n <= SQRT(cte.n) AND cte.n % c.n = 0 )
/*Common Table Expression (CTE):

WITH RECURSIVE cte(n) AS ...: Define uma CTE recursiva chamada cte com uma 
coluna n. Inicia com o número 2 e, em seguida, recursivamente, incrementa n 
enquanto n é menor que 1000.
Consulta Final:

SELECT GROUP_CONCAT(cte.n SEPARATOR '&'): Seleciona e concatena os 
números primos encontrados na CTE cte em uma única string, usando o separador &.
Condição de Primalidade:

WHERE NOT EXISTS (...): Utiliza a cláusula WHERE NOT EXISTS para verificar 
se não existe um número c.n na CTE cte que seja maior que 1, menor ou igual 
à raiz quadrada de cte.n e tal que cte.n seja divisível por c.n. Isso ajuda 
a identificar números primos.

c.n > 1 AND c.n <= SQRT(cte.n) AND cte.n % c.n = 0: Essa condição verifica se cte.n 
é divisível por algum número c.n que seja maior que 1 e menor ou igual à raiz 
quadrada de cte.n.

Recursividade na CTE:

A CTE cte é recursiva, o que significa que ela se referencia a 
si mesma (SELECT n + 1 FROM cte WHERE n < 1000). Isso permite gerar
uma sequência de números começando de 2 até 1000.
