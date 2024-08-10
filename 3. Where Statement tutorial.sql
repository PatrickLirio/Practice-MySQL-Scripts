# WHERE CLAUSE
# COMPARISON OPERATORS
# LOGICAL OPERATORS (AND OR NOT)
# LIKE STATEMENT (% = anything and _ = one character )

SELECT * 
FROM parks_and_recreation.employee_salary
WHERE first_name = "Leslie";

SELECT * 
FROM parks_and_recreation.employee_salary
WHERE salary > 50000;
SELECT * 
FROM parks_and_recreation.employee_salary
WHERE salary < 50000;
SELECT * 
FROM parks_and_recreation.employee_salary
WHERE salary = 50000;
SELECT * 
FROM parks_and_recreation.employee_salary
WHERE salary >= 50000;

SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE gender = 'Female';
SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE gender != 'Female';
SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE birth_date > '1985-01-01';

SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE birth_date > '1985-01-01'
AND gender = 'male';
SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE birth_date > '1985-01-01'
AND gender = 'Female';
SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE birth_date > '1985-01-01'
OR gender = 'Female';
SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE birth_date > '1985-01-01'
OR NOT gender = 'male';

SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE (first_name = 'Leslie' AND age = 44) OR age > 55;


SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE '%er%'; 
# it should be exactly the first 2 or 3 letters of the name when you use "%"
# it should be read as J E R and anythings come after.alter
# if you put a % at the beginning it will be read as anything before and E R and anything after E R

SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE 'a___';
# the number of '_' represents the number of letter or character you are looking 
# it should be read as it will start in an a and another 2 characters we are looking
SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE 'a___%';
# we combine the underscore sign and the percent sign.
# it should be read as it will start in an a and another 2 characters we are looking and anything after it.

SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE 'a___%';





