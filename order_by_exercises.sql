use employees;


SELECT  first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya','Maya');

SELECT  first_name, last_name
FROM employees
WHERE first_name = 'Irena' or first_name = 'Vidya' or first_name = 'Maya'
ORDER BY first_name ASC, last_name ASC;

SELECT first_name
FROM employees
WHERE first_name like 'E%';

SELECT first_name
FROM employees
WHERE first_name like 'E%' or last_name like '%e';

SELECT last_name
FROM employees
WHERE last_name like '%q%';

SELECT last_name
FROM employees
WHERE last_name like '%q%' and last_name not like '%qu%';