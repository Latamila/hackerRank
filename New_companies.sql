/*Given the table schemas below, write a query to print the company_code,
founder name, total number of lead managers, total number of senior managers, 
total number of managers, and total number of employees. Order your output 
by ascending company_code.*/
select 
  c.company_code, 
  c.founder, 
  count(distinct lm.lead_manager_code),
  count(distinct sm.senior_manager_code), 
  count(distinct m.manager_code),
  count(distinct e.employee_code) 
from 
  company c, 
  lead_manager lm,
  senior_manager sm, 
  manager m, 
  employee e
where 
  c.company_code = lm.company_code 
  and lm.lead_manager_code = sm.lead_manager_code
  and sm.senior_manager_code = m.senior_manager_code 
  and m.manager_code = e.manager_code
group by 
  c.company_code, 
  c.founder 
order by 
  c.company_code;

/*Seleção de Colunas:

c.company_code: Código da empresa.
c.founder: Fundador da empresa.
COUNT(DISTINCT lm.lead_manager_code) AS lead_managers: Contagem distinta 
de códigos de lead managers.
COUNT(DISTINCT sm.senior_manager_code) AS senior_managers: Contagem distinta 
de códigos de senior managers.
COUNT(DISTINCT m.manager_code) AS managers: Contagem distinta de códigos de managers.
COUNT(DISTINCT e.employee_code) AS employees: Contagem distinta de códigos de employees.
Tabelas Envolvidas:

Company c, Lead_Manager lm, Senior_Manager sm, Manager m, Employee e: Essas são 
as tabelas envolvidas na consulta.
Condições de Junção (JOIN):

As cláusulas WHERE especificam as condições de junção entre as tabelas.
As condições indicam como as tabelas devem ser relacionadas para extrair
as informações desejadas.
Agrupamento (GROUP BY):

A cláusula GROUP BY agrupa os resultados pela combinação única de company_code
e founder. Isso significa que as contagens distintas serão calculadas para 
cada combinação única de empresa e fundador.
Ordenação (ORDER BY):

A cláusula ORDER BY ordena os resultados com base no company_code.*/



