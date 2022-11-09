USE employees;

#Aggregate Functions

SELECT COUNT(first_name) FROM employees GROUP BY gender;

SELECT AVG(DATEDIFF(hire_date, birth_date))/365 FROM employees;

SELECT MIN(DATEDIFF(hire_date, birth_date))/365 FROM employees;

SELECT MAX(DATEDIFF(hire_date, birth_date))/365 FROM employees;

SELECT DISTINCT first_name FROM employees GROUP BY first_name;
SELECT first_name FROM employees GROUP BY first_name; -- these two functions are the same

SELECT COUNT(first_name), first_name FROM employees GROUP BY first_name ORDER BY  COUNT(first_name) DESC;