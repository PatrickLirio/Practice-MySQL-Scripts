# WINDOW FUNCTIONS

SELECT gender, AVG(salary) AS AVG_Salary
FROM parks_and_recreation.employee_demographics dem
JOIN parks_and_recreation.employee_salary sal
	ON dem.employee_id = sal.employee_id
GROUP BY gender;

-- SAMPLE OF WINDOW FUNCTION
SELECT dem.first_name, dem.last_name,gender,salary,
SUM(salary) OVER(PARTITION BY gender ORDER BY dem.employee_id) AS Rolling_Total # basically the salary is added to the rolling total before and it was partitioned by gender.
FROM parks_and_recreation.employee_demographics dem
JOIN parks_and_recreation.employee_salary sal
	ON dem.employee_id = sal.employee_id;

-- SAMPLE OF WINDOW FUNCTION #2
SELECT dem.employee_id, dem.first_name, dem.last_name,gender,salary,
ROW_NUMBER() OVER(PARTITION BY gender ORDER BY salary DESC) AS row_num, -- row position unique position
RANK() OVER(PARTITION BY gender ORDER BY salary DESC) AS rank_num, -- row based on rank but it will follow the position but it will skip the position once the rank is doubled
DENSE_RANK() OVER(PARTITION BY gender ORDER BY salary DESC) AS dense_rank_num -- row based on rank but it will follow the position and it will skip the position once the rank is doubled
FROM parks_and_recreation.employee_demographics dem
JOIN parks_and_recreation.employee_salary sal
	ON dem.employee_id = sal.employee_id;
