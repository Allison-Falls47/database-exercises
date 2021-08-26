use employees;

SELECT DISTINCT title
FROM employees.titles;

SELECT distinct first_name, last_name
FROM employees
WHERE last_name LIKE 'E%E'
GROUP BY first_name, last_name
order by last_name;


select  gender, COUNT(gender)
from employees
where first_name in ('Irena', 'Vidya','Maya')
group by gender;

