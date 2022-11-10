USE employees;

-- ASSOCIATIVE TABLE
SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
FROM employees as e
         JOIN dept_emp as de
              ON de.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no;

SELECT CONCAT(employees.first_name, ' ', employees.last_name) AS full_name, dept_manager.emp_no AS DEP_Managers
FROM employees
JOIN dept_manager ON employees.emp_no = dept_manager.emp_no;

SELECT * FROM employees;
SELECT * FROM departments;
SELECT * FROM dept_manager WHERE to_date = CURDATE();

-- a query that shows each department along with the name of the current manager for that department.
SELECT dept_name, CONCAT(employees.first_name, ' ', employees.last_name) AS Department_Manager
FROM employees
JOIN dept_manager ON employees.emp_no = dept_manager.emp_no
JOIN departments name on dept_manager.dept_no = name.dept_no
WHERE dept_manager.to_date LIKE '9999%'
ORDER BY dept_name;

-- all departments currently managed by women.
SELECT CONCAT(employees.first_name, ' ', employees.last_name) AS Department_Manager, dept_name
FROM employees
JOIN dept_manager ON employees.emp_no = dept_manager.emp_no
JOIN departments name on dept_manager.dept_no = name.dept_no
WHERE dept_manager.to_date LIKE '9999%' AND employees.gender = 'F'
ORDER BY dept_name;


SELECT * FROM titles;
-- the current titles of employees currently working in the Customer Service department.
SELECT titles.title AS TITLE, COUNT(title) AS TOTAL
FROM titles
JOIN dept_emp ON titles.emp_no = dept_emp.emp_no
JOIN departments name on dept_emp.dept_no = name.dept_no
WHERE titles.to_date LIKE '9999%' AND name.dept_name = 'Customer Service'
GROUP BY titles.title, title;


-- Find the current salary of all current managers.
SELECT dept_name AS Department_name, CONCAT(employees.first_name, ' ', employees.last_name) AS Department_Manager, salary
FROM employees
JOIN salaries sal_column on employees.emp_no = sal_column.emp_no
JOIN dept_manager dm_column on employees.emp_no = dm_column.emp_no
JOIN departments name on dm_column.dept_no = name.dept_no
WHERE dm_column.to_date LIKE '9999%' AND sal_column.to_date LIKE '9999%'
GROUP BY dept_name, CONCAT(employees.first_name, ' ', employees.last_name), salary
ORDER BY dept_name;


-- names of all current employees, their department name, and their current manager's name. NOT SOLVED :(
SELECT CONCAT(emp_all.first_name, ' ', emp_all.last_name) AS EMPLOYEE, CONCAT(employees.first_name, ' ', employees.last_name) AS MANAGER, dp_name.dept_name AS DEPARTMENT
FROM employees
JOIN dept_emp currentE on employees.emp_no = currentE.emp_no
JOIN dept_manager dm on currentE.emp_no = dm.emp_no
JOIN departments dp_name on dm.dept_no = dp_name.dept_no
    JOIN employees AS emp_all on dm.emp_no = employees.emp_no
WHERE dm.to_date LIKE '9999%' AND currentE.to_date LIKE '9999%'
ORDER BY dept_name;





