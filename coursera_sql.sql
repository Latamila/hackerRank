/*Retrieve all employees whose address is in Elgin,IL.*/

SELECT F_NAME , L_NAME
FROM EMPLOYEES
WHERE ADDRESS LIKE '%Elgin,IL%';

/*Use the LIKE operator to find similar strings.*/
SELECT F_NAME , L_NAME
FROM EMPLOYEES
WHERE B_DATE LIKE '197%';

/*Retrieve all employees in department 5 whose salary is between 60000 and 70000.*/

SELECT *
FROM EMPLOYEES
WHERE (SALARY BETWEEN 60000 AND 70000) AND DEP_ID = 5;

/*Retrieve a list of employees ordered by department ID. Use the ORDER BY clause for this SQL problem. 
By default, the ORDER BY clause sorts the records in ascending order.*/
SELECT F_NAME, L_NAME, DEP_ID 
FROM EMPLOYEES
ORDER BY DEP_ID;

/*Retrieve a list of employees ordered in descending order by department ID 
and within each department ordered alphabetically in descending order by last name.
Use the ORDER BY clause with DESC for this SQL problem.*/
SELECT F_NAME, L_NAME, DEP_ID 
FROM EMPLOYEES
ORDER BY DEP_ID DESC, L_NAME DESC;

/*n SQL problem 2 (Exercise 2 Problem 2), use department name instead of department ID. 
Retrieve a list of employees ordered by department name, and within each department 
ordered alphabetically in descending order by last name.
Department name is in the DEPARTMENTS table. So your query will need to retrieve data 
from more than one table. DoNT worry if you are not able to figure this SQL problem out. 
We ll cover working with multiple tables in the lecture Working with Multiple Tables.*/
SELECT D.DEP_NAME , E.F_NAME, E.L_NAME
FROM EMPLOYEES as E, DEPARTMENTS as D
WHERE E.DEP_ID = D.DEPT_ID_DEP
ORDER BY D.DEP_NAME, E.L_NAME DESC;

/*For each department ID retrieve the number of employees in the department.
Use COUNT(*) to retrieve the total count of a column, and then GROUP BY.*/
SELECT DEP_ID, COUNT(*)
FROM EMPLOYESS
GROUP BY DEP_ID;

/*For each department retrieve the number of employees in the department, 
and the average employee salary in the department.Use COUNT(*) to retrieve 
the total count of a column, and AVG() function to compute average salaries, and then GROUP BY.
*/
SELECT DEP_ID, COUNT(*), AVG(SALARY)
FROM EMPLOYEES
GROUP BY DEP_ID;

/*Label the computed columns in the result set of SQL problem 2 (Exercise 3 Problem 2) as NUM_EMPLOYEES and AVG_SALARY.
Use SQL Aliases: column_name AS alias_name. For example, AVG(SALARY) AS “AVG_SALARY”.
*/
SELECT DEP_ID, COUNT(*) AS "NUM_EMPLOYEES", AVG(SALARY) AS "AVG_SALARY"
FROM EMPLOYESS
GROUP BY DEP_ID;

/*
In SQL problem 3 (Exercise 3 Problem 3), order the result set by Average Salary.
Use ORDER BY after the GROUP BY
*/
SELECT DEP_ID, COUNT(*) AS "NUM_EMPLOYESS", AVG(SALARY) AS "AVG_SALARY"
FROM EMPLOYEES
GROUP BY DEP_ID
ORDER BY AVG_SALARY;

/*
In SQL problem 4 (Exercise 3 Problem 4), limit the result to departments with fewer than 4 employees.
Use HAVING after the GROUP BY, and use the count() function in the HAVING clause instead of the column label.
*/
SELECT DEP_ID, COUNT(*) AS "NUM_EMPLOYEES", AVG(SALARY) AS "AVG_SALARY"
FROM EMPLOYEES
GROUP BY DEP_ID
HAVING COUNT(*) < 4
ORDER BY AVG_SALARY;































