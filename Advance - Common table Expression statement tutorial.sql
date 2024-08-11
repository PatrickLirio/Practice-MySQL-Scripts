# CTE'S - common table expression = allows you to define a subquery block that you can then reference within the main query
#								= it looks like you are creating a function to make the script reusable
#								= it is like another form of subquery statement 



SELECT gender, AVG(salary), MAX(salary), MIN(salary), COUNT(salary)
FROM parks_and_recreation.employee_demographics AS dem
JOIN parks_and_recreation.employee_salary AS sal
	ON dem.employee_id = dem.employee_id
GROUP BY gender;


-- CTE example
WITH CTE_EXAMPLE AS
(
SELECT gender, AVG(salary) AS avg_sal, MAX(salary) AS max_sal, MIN(salary) AS min_sal, COUNT(salary) AS count_sal
FROM parks_and_recreation.employee_demographics AS dem
JOIN parks_and_recreation.employee_salary AS sal
	ON dem.employee_id = dem.employee_id
GROUP BY gender
)
SELECT AVG(avg_sal)
FROM CTE_EXAMPLE
;

-- subquery example
SELECT AVG(avg_sal)
FROM(SELECT gender, AVG(salary) AS avg_sal, MAX(salary) AS max_sal, MIN(salary) AS min_sal, COUNT(salary) AS count_sal
FROM parks_and_recreation.employee_demographics AS dem
JOIN parks_and_recreation.employee_salary AS sal
	ON dem.employee_id = dem.employee_id
GROUP BY gender
) AS sample_subquery;


-- example of doing 2 or more CTE and joining it  
WITH CTE_EXAMPLE AS
(
SELECT employee_id, gender, birth_date
FROM parks_and_recreation.employee_demographics 
WHERE birth_date > '1985-01-01'
),
CTE_EXAMPLE_2 AS 
(
SELECT employee_id, salary 
FROM parks_and_recreation.employee_salary
WHERE salary > 50000 
)
SELECT *
FROM CTE_EXAMPLE
JOIN CTE_EXAMPLE_2
	ON CTE_EXAMPLE.employee_id = CTE_EXAMPLE_2.employee_id
;

-- other way of aliasing inside a CTE
WITH CTE_EXAMPLE (Gender,Avg_sal,Max_sal, Min_sal, Count_sal) AS
(
SELECT gender, AVG(salary) , MAX(salary) , MIN(salary) , COUNT(salary) 
FROM parks_and_recreation.employee_demographics AS dem
JOIN parks_and_recreation.employee_salary AS sal
	ON dem.employee_id = dem.employee_id
GROUP BY gender
)
SELECT *
FROM CTE_EXAMPLE
; 

