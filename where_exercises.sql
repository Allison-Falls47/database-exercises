use employees;


SELECT  first_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya','Maya');

SELECT first_name
FROM employees
WHERE first_name like 'E%';

SELECT last_name
FROM employees
WHERE last_name like 'q%';