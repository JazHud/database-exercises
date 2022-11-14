USE employees;

-- SUBQUERIES aka a nested queries
    -- to find if a values is within a subset of acceptable values

-- to find all the dep managers names and birthdays
SELECT first_name, last_name, birth_date FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
)
LIMIT 10;


SELECT * FROM salaries              -- outer query/ main query
# JOIN employees ON employees.emp_no = salaries.emp_no -- if joining it has to be before subquery
WHERE salary > (SELECT AVG(salary) -- subquery/inner query can run by itself
FROM salaries);

-- Subqueries can be also useful while you are building INSERT / UPDATE statements where you don't know exactly what ID needs to be inserted as a foreign key

