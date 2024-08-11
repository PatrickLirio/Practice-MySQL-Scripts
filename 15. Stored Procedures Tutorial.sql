-- Stored Procedures = are wayt to store your sql code
-- 					= also I call it function. 

SELECT *
FROM parks_and_recreation.employee_salary
WHERE salary >= 50000;

-- to store the procedure
CREATE PROCEDURE large_salaries ()
SELECT *
FROM parks_and_recreation.employee_salary
WHERE salary >= 50000;

-- another sample to store procedure by multiple queries
CREATE PROCEDURE large_salaries2 ()
SELECT *
FROM parks_and_recreation.employee_salary
WHERE salary >= 50000;
SELECT *
FROM parks_and_recreation.employee_salary
WHERE salary >= 10000;

-- this will be the right way of creating multiple procedure by using delimIter
DELIMITER $$
CREATE PROCEDURE large_salaries3 ()
BEGIN
	SELECT *
	FROM parks_and_recreation.employee_salary
	WHERE salary >= 50000;
	SELECT *
	FROM parks_and_recreation.employee_salary
	WHERE salary >= 10000;
END $$
DELIMITER ; 

-- putting parameter and calling it
DELIMITER $$
CREATE PROCEDURE large_salaries4 (eid_param INT)
BEGIN
	SELECT salary
	FROM parks_and_recreation.employee_salary
	WHERE employee_id = eid_param;
END $$
DELIMITER ;

-- to call the procedure
CALL large_salaries ();
CALL large_salaries2 ();
CALL large_salaries3 ();
CALL new_procedure (); -- this was created by doing right click to the "stored procedures" in the schemas and choose "create stored procedures".
CALL large_salaries4 (1); -- this is the proper way of calling the output on a specific position inputted as parameter.

-- to delete store procedure 
DROP PROCEDURE large_salaries;
