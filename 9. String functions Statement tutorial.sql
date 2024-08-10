
#	String Functions

# LENGTH FUNCTION: LENGTH() = providing the total numbers of each letter in a string
SELECT LENGTH('Patrick');

SELECT first_name, last_name, LENGTH(first_name), LENGTH(last_name)
FROM parks_and_recreation.employee_demographics;

SELECT first_name, LENGTH(first_name)
FROM parks_and_recreation.employee_demographics
ORDER BY 2; # it means it is ordered by the LENGTH(first_name) column ascending 

# UPPER FUNCTION: UPPER() = it will make the letters uppercase
SELECT UPPER('patrick');

SELECT first_name, last_name, UPPER(first_name), UPPER(last_name)
FROM parks_and_recreation.employee_demographics;

# LOWER FUNCTION: LOWER() = it will make the letters lowercase
SELECT LOWER('PATRICK');

SELECT first_name, last_name, LOWER(first_name), LOWER(last_name)
FROM parks_and_recreation.employee_demographics;

# TRIM FUNCTION: TRIM() = basically take the white space before and after.
-- LTRIM() = only going to trim the left white spaces.
-- RTRIM() = only going to trim the right white spaces.
SELECT RTRIM('            PATRICK       ');

# LEFT() = it will trim all the characters from the left
SELECT first_name, LEFT(first_name, 4)
FROM parks_and_recreation.employee_demographics;

# RIGHT() = it will trim all the characters from the RIGHT
SELECT first_name, RIGHT(first_name, 4)
FROM parks_and_recreation.employee_demographics;

# SUBSTRING() = it will take the position of the letter and the total number of the letter you want to take.alter
SELECT first_name, 
SUBSTRING(first_name, 3,2),-- SO IT WILL START ON THE 3RD LETTER AND WILL POP 2 LETTERS
birth_date,
SUBSTRING(birth_date, 6,2) AS birth_month-- SO IT WILL START ON THE 6TH NUMBER AND WILL POP 2 NUMBERS
FROM parks_and_recreation.employee_demographics;

# REPLACE() = will replace a specific character with a different character that you want.
SELECT first_name, 	REPLACE(first_name, 'A' , 'Z')
FROM parks_and_recreation.employee_demographics;

# LOCATE() = it will find a certain letter in a string
SELECT LOCATE('x', 'Alexander'); -- it will provide the position of 'x' in the string 'Alexander'.

SELECT first_name, 	LOCATE('a',first_name) AS Position_of_a
FROM parks_and_recreation.employee_demographics;

# CONCAT() = it will join the 2 variables or columns
SELECT first_name, last_name, CONCAT(first_name,' ', last_name) AS Full_Name
FROM parks_and_recreation.employee_demographics;

