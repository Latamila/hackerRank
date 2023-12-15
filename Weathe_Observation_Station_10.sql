select distinct city
from station 
where lower(right(city,1)) not in ('a', 'e', 'i', 'o', 'u');

/*SELECT DISTINCT CITY: Retorna valores distintos da coluna "CITY", ou seja, 
cada cidade será listada apenas uma vez no resultado.

FROM STATION: Especifica que a tabela usada nesta consulta é chamada "STATION".

A função RIGHT(CITY, 1) extrai a ultima letra da cidade.

WHERE LOWER(RIGHT(CITY, 1)) IN ('a', 'e', 'i', 'o', 'u'): Impõe uma condição para 
EXCLUIR apenas as cidades cuja ultima letra, convertida para minúsculas usando LOWER, 
seja uma vogal ('a', 'e', 'i', 'o', 'u').
