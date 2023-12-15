select name from students where marks > 75
order by substr(name,length(name)-2, 3), id;

/*
Esta consulta SQL seleciona os nomes dos estudantes da tabela "students" 
onde a coluna "marks" é maior que 75. Os resultados são ordenados primeiro 
pelos últimos três caracteres de cada nome, começando pelo penúltimo caractere 
até o final do nome (`substr(name, length(name)-2, 3)`), e, em seguida, 
pelo identificador do estudante ("id").

A consulta em SQL é a seguinte:

```sql
SELECT name
FROM students
WHERE marks > 75
ORDER BY SUBSTR(name, LENGTH(name)-2, 3), id;
```

Aqui está uma breve explicação:

- `SELECT name`: Retorna apenas a coluna "name" da tabela "students".

- `FROM students`: Especifica que a tabela usada nesta consulta é chamada "students".

- `WHERE marks > 75`: Impõe uma condição para incluir apenas os estudantes 
cuja pontuação é superior a 75.

- `ORDER BY SUBSTR(name, LENGTH(name)-2, 3), id`: Ordena os resultados primeiro 
pelos últimos três caracteres de cada nome e, em seguida, pelo identificador 
do estudante ("id"). A função `SUBSTR(name, LENGTH(name)-2, 3)` é usada 
para extrair os últimos três caracteres de cada nome.

Portanto, os resultados serão os nomes dos estudantes que atendem 
à condição de pontuação e serão ordenados conforme a especificação acima.

Portanto, em muitos casos, LENGTH(name)-2 é usado para referenciar a posição
relativa dentro da string, considerando a subtração como um deslocamento para
trás a partir do final da string.*/






