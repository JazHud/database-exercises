USE employees;

-- Find all the employees with the same hire date as employee 101010 using a subquery. 69 Rows
SELECT * FROM employees
WHERE hire_date = (
    SELECT hire_date
    FROM employees
    WHERE emp_no = 101010)
;

-- Find all the titles held by all employees with the first name Aamod.314 total titles, 6 unique titles
SELECT title FROM titles
JOIN employees e ON titles.emp_no = e.emp_no
WHERE first_name IN (
    SELECT first_name
    FROM employees
    WHERE first_name = 'Aamod'
    );

SELECT DISTINCT title FROM titles
JOIN employees e ON titles.emp_no = e.emp_no
WHERE first_name IN (
    SELECT first_name
    FROM employees
    WHERE first_name = 'Aamod'
);

-- Find all the current department managers that are female.
    -- **HINT** use the keyword IN when getting this error Subquery returns more than 1 row
SELECT first_name, last_name FROM employees
WHERE gender = 'F' AND emp_no IN (
SELECT emp_no FROM dept_manager
    WHERE to_date LIKE '9%'
    );


-- Find all the department names that currently have female managers.
SELECT dept_name FROM departments dept
    WHERE dept_no IN (
        SELECT dept_no FROM dept_manager dm
JOIN employees e on e.emp_no = dm.emp_no
    WHERE gender = 'f' AND to_date LIKE '9%'
);

-- Find the first and last name of the employee with the highest salary.
SELECT first_name, last_name FROM employees
    WHERE emp_no = (
        SELECT emp_no FROM salaries
        ORDER BY salary DESC
        LIMIT 1
        );



