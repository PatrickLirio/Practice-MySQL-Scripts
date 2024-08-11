
-- Temporary Tables = are visible to the session they're created in.

CREATE TEMPORARY TABLE Temp_table
(
	first_name varchar(50),
    last_name varchar(50),
    favourite_movie varchar(100)
);

SELECT *
FROM Temp_table;

INSERT INTO Temp_table
VALUES('Patrick', 'Lirio', "Iron Man");

-- example of using a temp table from the real table
SELECT *
FROM parks_and_recreation.employee_salary;

CREATE TEMPORARY TABLE salary_over_50k
SELECT * 
FROM parks_and_recreation.employee_salary
WHERE salary >= 50000;

SELECT *
FROM salary_over_50k;