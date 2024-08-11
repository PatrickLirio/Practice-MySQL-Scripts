-- Triggers and Events = it is a block that executes automatically when an event takes place on a specific table.

SELECT *
FROM parks_and_recreation.employee_demographics; 

SELECT *
FROM parks_and_recreation.employee_salary; 

-- Let's create a TRIGGERS example function
DELIMITER $$

CREATE TRIGGER employee_insert 
	AFTER INSERT ON parks_and_recreation.employee_salary
    FOR EACH ROW 
BEGIN
	INSERT INTO parks_and_recreation.employee_demographics (employee_id, first_name, last_name)
    VALUES (NEW.employee_id, NEW.first_name, NEW.last_name);
END $$

DELIMITER ;
-- basically what this triggers do, is that after the user inserted a value to the "employee.salary" table it will also insert the values to the corresponding 
-- columns in the "employee_demographics" table to  minimize the work of manually inserting the values on every table.
-- it will act after an event happened

-- lets trigger it or insert a value to the 'employee_salary' table
INSERT INTO parks_and_recreation.employee_salary (employee_id, first_name, last_name, occupation, salary, dept_id)
 VALUES (13,'Patrick Benedict', 'Lirio', 'Data Analyst', 1500000, NULL);
 
 --  Let's create a EVENTS example function
SELECT COUNT(*)
FROM parks_and_recreation.employee_demographics; 

DELIMITER $$
CREATE EVENT delete_retirees
ON SCHEDULE EVERY 30 SECOND
DO
BEGIN
	DELETE 
	FROM parks_and_recreation.employee_demographics
    WHERE age >= 60;
END $$
DELIMITER ;

-- so what happened here is that you can schedule the event that will happen, it is like also what happened in the trigger 
-- but in this you need to use "EVENT" to use a schedule functionality

SHOW VARIABLES LIKE 'event%';
 





