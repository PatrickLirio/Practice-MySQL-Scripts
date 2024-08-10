# CASE STATEMENTS

SELECT first_name,
last_name,
age,
CASE
	WHEN age <= 30 THEN 'Young'
    WHEN age BETWEEN 31 AND 50 THEN 'Old'
    WHEN age >= 50 THEN "On Death's Door"
END AS Age_Bracket
FROM parks_and_recreation.employee_demographics;


-- problem:
-- Pay Increase Bonus
-- if employee make < 50000 you will add 5% increase
-- if employee make > 50000 you will add 7% increase
-- if the work in finance department you will add 10% increase

SELECT first_name, last_name, salary,
CASE
	WHEN salary < 50000 THEN salary + (salary * 0.05) # or salary + 1.05
    WHEN salary > 50000 THEN salary + (salary * 0.07) # or salary + 1.07
END AS New_Salary,
CASE
	WHEN dept_id = 6 THEN salary * 0.10 # dept_id is = finance department and you can see the value of 6 when you check the parks_department table;
END AS Finance_Dept_Employee
FROM parks_and_recreation.employee_salary; 

SELECT *
FROM parks_and_recreation.parks_departments ;
