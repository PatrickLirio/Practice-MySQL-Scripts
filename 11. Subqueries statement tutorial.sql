# SUBQUERIES
-- IN - is an operator and will execute the operand. it will only SELECT 1 column
SELECT * 
FROM parks_and_recreation.employee_demographics;

SELECT * 
FROM parks_and_recreation.employee_salary;

SELECT * 
FROM parks_and_recreation.parks_departments;

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE employee_id IN
					(SELECT employee_id
                    FROM parks_and_recreation.employee_salary
                    WHERE dept_id = 1) 
;

-- so it will be read as "select all from employee_demographics 
-- where employee_id is in or equal to employee_id from employee_salary where dept_id = 1"

-- Problem
-- we wanted to know the salary of each employee and the average salary if it is below or above salary

SELECT first_name, last_name, salary,
(SELECT AVG(salary)
FROM parks_and_recreation.employee_salary)  AS AVG_Salary,
CASE
	WHEN salary > (SELECT AVG(salary) FROM parks_and_recreation.employee_salary)  THEN 'Above'
    WHEN salary < (SELECT AVG(salary) FROM parks_and_recreation.employee_salary) THEN 'Below' 
END AS Salary_Status
FROM parks_and_recreation.employee_salary;

-- create a group by of gender and use other agrefated functions
-- do subqueries
SELECT gender
FROM parks_and_recreation.employee_demographics
ORDER BY gender;

SELECT gender, AVG(age), MIN(age), MAX(age), COUNT(gender)
FROM parks_and_recreation.employee_demographics
GROUP BY gender;

SELECT gender, AVG(max_age) # or you can put AVG(`MAX(age)`) IF there is no aliases in your subqueries
FROM ( 
SELECT gender,
AVG(age) AS avg_age, 
MIN(age) AS min_age, 
MAX(age) AS max_age, 
COUNT(gender)
FROM parks_and_recreation.employee_demographics
GROUP BY gender) AS Agg_Table
GROUP BY gender;
							
