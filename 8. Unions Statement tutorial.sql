# UNIONS = combining rows data from a seperate tables or from the same table

SELECT first_name, last_name
FROM parks_and_recreation.employee_demographics
UNION all
SELECT first_name, last_name
FROM parks_and_recreation.employee_salary;

SELECT first_name, last_name, 'Old' AS Label
FROM parks_and_recreation.employee_demographics
WHERE age > 50
UNION
SELECT first_name, last_name, 'Highly Paid Emplpoyee' AS Label
FROM parks_and_recreation.employee_salary
WHERE salary > 70000;

SELECT first_name, last_name, 'Old Man' AS Label
FROM parks_and_recreation.employee_demographics
WHERE age > 40 AND gender = 'Male'
UNION
SELECT first_name, last_name, 'Old Lady' AS Label
FROM parks_and_recreation.employee_demographics
WHERE age > 40 AND gender = 'Female'
UNION
SELECT first_name, last_name, 'Highly Paid Emplpoyee' AS Label
FROM parks_and_recreation.employee_salary
WHERE salary > 70000
ORDER BY first_name, last_name;