USE employees;


-- Return 10 employees in a result set named 'full_name' in the format of 'last name, first name' for each employee.
SELECT CONCAT(last_name, ', ', first_name) AS full_name FROM employees
LIMIT 10;

-- Add the date of birth for each employee as 'DOB' to the query.
SELECT CONCAT(emp_no,  ' - ', last_name, ', ', first_name) AS full_name, birth_date AS DOB FROM employees
LIMIT 10;

SHOW INDEXES FROM employees;

SHOW INDEXES FROM salaries;

SELECT salary FROM salaries WHERE salary BETWEEN 50000 AND 60000;

-- to add an index
ALTER TABLE salaries ADD INDEX salary_index_name (salary);

ALTER TABLE salaries DROP INDEX salary_index_name;
