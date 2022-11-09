USE employees;

SELECT CONCAT(first_name, ' ', last_name) AS name FROM employees
WHERE first_name = 'Maya' ORDER BY last_name;
 -- AS names the column these new names

SELECT DAYOFMONTH(hire_date) FROM employees
WHERE first_name = 'Maya' ORDER BY DAYOFMONTH(hire_date);
-- shows every day of the month that a Maya was hired

SELECT NOW(); -- <gives a time stamp YEAR-MONTH-DAY HOUR-MINUTE-SECONDS

SELECT DATEDIFF(NOW(), hire_date) FROM employees
WHERE emp_no = 10006;

