# 	JOINS

SELECT * 
FROM parks_and_recreation.employee_demographics;

SELECT * 
FROM parks_and_recreation.employee_salary;

# INNER JOIN = joining the 2 or more table by comparing and using "ON".
#			= we are pulling in all of the columns but we're not pulling in all of the rows
#			= it will only going to bring over rows that have the same values in both columns we are tying on. 

SELECT * 
FROM parks_and_recreation.employee_demographics AS dem
INNER JOIN parks_and_recreation.employee_salary AS sal
	ON dem.employee_id = sal.employee_id;

SELECT dem.employee_id, age, occupation 
FROM parks_and_recreation.employee_demographics AS dem
INNER JOIN parks_and_recreation.employee_salary AS sal
	ON dem.employee_id = sal.employee_id;

    
# OUTER JOIN

# LEFT OUTER JOIN = is going to take everything from the left table even there is no match in the join and then it will only return the matches from the right table
# 					= in this example the left table is "dem" and the right table is "sal". it took all of the result in the left and populate all of the matched values in the right
SELECT *
FROM parks_and_recreation.employee_demographics AS dem
LEFT JOIN parks_and_recreation.employee_salary AS sal
	ON dem.employee_id = sal.employee_id;


# RIGHT OUTER JOIN = is going to take everything from the right table even there is no match in the join and then it will only return the matches from the left table
#					- in this example the row from the left will populate null if there is no match in the RIGHT.
SELECT *
FROM parks_and_recreation.employee_demographics AS dem
RIGHT JOIN parks_and_recreation.employee_salary AS sal
	ON dem.employee_id = sal.employee_id;
    
# SELF JOIN

SELECT emp1.employee_id AS emp_santa, 
emp1.first_name AS first_name_santa,
emp1.last_name AS last_name_santa,
emp2.employee_id AS emp_name, 
emp2.first_name AS first_name_emp,
emp2.last_name AS last_name_emp
FROM parks_and_recreation.employee_salary AS emp1
JOIN parks_and_recreation.employee_salary AS emp2
	ON emp1.employee_id + 1 = emp2.employee_id;
    

	#JOINING MULTIPLE TABLES TOGETHER

SELECT *
FROM parks_and_recreation.parks_departments;

SELECT * 
FROM parks_and_recreation.employee_demographics AS dem
INNER JOIN parks_and_recreation.employee_salary AS sal
	ON dem.employee_id = sal.employee_id
INNER JOIN parks_and_recreation.parks_departments AS pd
	ON sal.dept_id = pd.department_id;
    
