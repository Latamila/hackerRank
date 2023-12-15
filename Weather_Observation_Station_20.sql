/*A median is defined as a number separating the higher half of 
a data set from the lower half. Query the median of the Northern 
Latitudes (LAT_N) from STATION and round your answer to  decimal places.
*/

*/
select cast(lat_n as decimal(20,4))
from (select row_number() over(order by lat_n desc) as num,
  lat_n from station)
where num = (select floor((count(*)/2)+1) from station);

/*CAST(LAT_N AS DECIMAL(20,4)): Converte o valor da 
coluna "LAT_N" para um número decimal com até 20 dígitos 
no total e 4 casas decimais.

SELECT ROW_NUMBER() OVER(ORDER BY LAT_N DESC) AS NUM, LAT_N FROM STATION: Nesta parte,
a tabela "STATION" é usada para criar uma tabela derivada. Cada linha recebe um número 
de linha (NUM) com base na ordenação descendente dos valores na coluna "LAT_N". A tabela
resultante tem duas colunas, NUM e LAT_N.

A tabela derivada com ordenação descendente dos valores serve para atribuir 
números de linha sequenciais a cada registro da tabela original 
(neste caso, a tabela "STATION") com base na ordenação dos valores na 
coluna "LAT_N" em ordem descendente. Isso é feito usando a função de janela ROW_NUMBER().

O principal objetivo dessa tabela derivada é facilitar a identificação do valor que
representa a mediana da coluna "LAT_N". Vamos entender por que isso é necessário:

* Ordenação Descendente:

Ordenar os valores em ordem descendente permite que a mediana seja encontrada mais facilmente, 
pois os valores estão organizados do maior para o menor.

* Atribuição de Números de Linha:

A função ROW_NUMBER() OVER(ORDER BY LAT_N DESC) atribui a cada linha um número 
sequencial (NUM) com base na ordem descendente dos valores em "LAT_N". 
Isso significa que o registro com o maior valor de "LAT_N" terá o NUM 
mais baixo, e assim por diante.

*Identificação da Mediana:

Uma vez que temos números de linha sequenciais, podemos identificar a 
posição da mediana com base no total de linhas na tabela. 
A condição NUM = (SELECT FLOOR((COUNT(*)/2)+1) FROM STATION)

onde A função FLOOR é uma função matemática que arredonda um número 
para baixo para o inteiro mais próximo ou para o número inteiro igual 
ou menor. No contexto do código SQL fornecido, 
a função FLOOR está sendo usada para calcular a metade arredondada 
para baixo do total de linhas na tabela "STATION".
Vamos analisar o trecho relevante do código:

COUNT(*): Retorna o número total de linhas na tabela "STATION".

COUNT(*)/2: Calcula a metade do total de linhas. 
Se o número total de linhas for ímpar, isso representará a 
posição exata da mediana. Se o número total de linhas for par, 
isso representará o ponto entre as duas posições médias.

FLOOR((COUNT(*)/2)+1): Adiciona 1 ao valor obtido anteriormente e,
em seguida, aplica a função FLOOR. A adição de 1 é feita para garantir
que, em caso de um número par de linhas, o valor retornado seja a posição
imediatamente à direita do centro.
*/
      
