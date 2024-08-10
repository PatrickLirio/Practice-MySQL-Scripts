# GROUP BY = group together rows that has the same values
# agreggate function (AGE(),MAX(), MIN() COUNT())
# when aggregate functions are used the main selected column is the only data you put after GROUP BY

SELECT gender
FROM parks_and_recreation.employee_demographics
GROUP BY gender;
SELECT gender, AVG(age)
FROM parks_and_recreation.employee_demographics
GROUP BY gender;
SELECT occupation, salary
FROM parks_and_recreation.employee_salary
GROUP BY occupation,salary;
SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM parks_and_recreation.employee_demographics
GROUP BY gender;

# ORDER BY = sort the result either ascending (ASC) or descending (DESC)
#			= we can also sort it by position of the fields aside from column position name;
#			= you can not use agregate function in this statement.

SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY first_name DESC;
SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY gender,age DESC;
SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY 5,4; # this means column 5 is gender and column 4 is age
