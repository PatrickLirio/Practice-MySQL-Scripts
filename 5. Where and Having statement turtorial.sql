# HAVING VS. WHERE
# HAVING = it can be use after the GROUP BY statement where it means that after 
#			it is summarized you can have a condition of the result that "HAVE" that.

SELECT gender, AVG(age)
FROM parks_and_recreation.employee_demographics
GROUP BY gender
HAVING AVG(age) > 40;

# LETS TRY TO USE BOTH
SELECT occupation, AVG(salary)
FROM parks_and_recreation.employee_salary
GROUP BY occupation;
SELECT occupation, AVG(salary)
FROM parks_and_recreation.employee_salary
WHERE occupation LIKE '%manager%'
GROUP BY occupation
HAVING AVG(salary) > 75000;

