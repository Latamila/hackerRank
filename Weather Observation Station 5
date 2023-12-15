/*Query the two cities in STATION with the shortest and longest CITY names,
as well as their respective lengths (i.e.: number of characters in the name).
If there is more than one smallest or largest city, 
choose the one that comes first when ordered alphabetically.
*/
**********************************************
select city as c, length(city) as l from station
order by l desc, c asc limit 1;
select city as c, length(city) as l from station
order by l asc, c asc limit 1;
*************************************************
/*Este código SQL está destinado a ser executado em um banco de dados que possui 
uma tabela chamada "station" com uma coluna chamada "city". 
Vamos analisar cada parte do código:

Primeiro bloco SQL:
Neste bloco, a consulta está selecionando a cidade ("city") da tabela "station" e 
também está calculando o comprimento (número de caracteres) da cidade usando a 
função LENGTH(city). As colunas resultantes são renomeadas como "c" para a cidade 
e "l" para o comprimento.

A cláusula ORDER BY ordena os resultados primeiro pelo comprimento da cidade em 
ordem decrescente (DESC) e, em seguida, pelo nome da cidade em ordem crescente (ASC). 
Finalmente, a cláusula LIMIT 1 limita o resultado a apenas uma linha, ou seja, 
a cidade com o maior comprimento.

Segundo bloco SQL:
Neste bloco, a consulta está selecionando a cidade ('city') e renomeando como 'c', 
depois calcula seu comprimento com a função length(city) e guardando em 'l', informa 
que é da tabela station. Depois ordena l de forma ascendente(do menor para o maior) e
o 'c' de forma ascendente (de A a Z). Por fim, limita 1 para retornar apenas
o primeiro resultado. 
*/
