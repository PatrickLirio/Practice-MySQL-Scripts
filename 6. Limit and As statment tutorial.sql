# LIMIT AND ALIASING

# LIMIT = is just to specify how much row you want to see in your result

SELECT *
FROM parks_and_recreation.employee_demographics
LIMIT 3;
SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY age DESC
LIMIT 2,1; # it means that since the results are in descending it will take the index 2 

#ALIASING - is the way of changing the name of the columns

SELECT gender, AVG(age) AS avg_age
FROM parks_and_recreation.employee_demographics
GROUP BY gender
HAVING AVG(age) > 40;

# it will also work without the AS cosntructor
SELECT gender, AVG(age) avg_age
FROM parks_and_recreation.employee_demographics
GROUP BY gender
HAVING AVG(age) > 40;