USE employees;

SELECT * FROM employees WHERE hire_date = '1985-01-01';

SELECT first_name FROM employees WHERE first_name Like '%sus%';

SELECT emp_no, first_name, last_name FROM employees WHERE emp_no BETWEEN 10026 AND 10082;

SELECT emp_no, first_name, last_name FROM employees WHERE last_name In ('Herber', 'Dredge', 'Lipner', 'Baek');

SELECT emp_no, first_name, last_name FROM employees WHERE emp_no < 10026;

SELECT emp_no, first_name, last_name FROM employees
    WHERE emp_no < 20000 AND last_name IN ('Herber', 'Baek')
    OR first_name = 'Shridhar';
-- emp_no < 20000 AND last_name IN ('Herber', 'Baek') got calculated first
-- OR first_name = 'Shridhar' then this was computed but with out it reading part of the first calculation of < 2000
-- therefore the above command should be read as two separate CLAUSES
-- this is called chaining WHERE CLAUSES


SELECT first_name, last_name, gender FROM employees
WHERE (last_name = 'Bolotov' OR last_name = 'Baek') AND gender = 'M';
-- () are needed to clump the OR together
-- OR will separate it into two separate CLAUSES;

SELECT * FROM salaries WHERE salary NOT BETWEEN 50000 AND 100000;

SELECT birth_date FROM employees WHERE birth_date NOT LIKE '195%';
-- to get birth date of bd NOT in 1950's

SELECT birth_date, hire_date FROM employees
    WHERE birth_date NOT LIKE '195%'
    AND hire_date NOT LIKE '199%';
-- to get birth date of bd NOT in 1950's AND hire date NOT in 1990's

SELECT * FROM employees WHERE birth_date LIKE '%-01';
-- everyone born on the 1st of th month

SELECT * FROM employees WHERE birth_date LIKE '%-01-%';
-- everyone born in January

-- ORDER BY
SELECT * FROM employees WHERE birth_date LIKE '1954-01-%' ORDER BY birth_date;

SELECT * FROM employees WHERE birth_date LIKE '1954-01-%' ORDER BY birth_date, last_name;

