use employees;

SELECT DISTINCT title FROM titles;

SELECT distinct last_name
FROM employees
order by last_name Desc
LIMIT 10;

Select distinct salary, emp_no
FROM salaries
order by salary desc
LIMIT 5 offset 45;

