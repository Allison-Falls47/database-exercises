use employees;

SELECT CONCAT(first_name, last_name)
FROM employees
WHERE first_name like 'E%';

SELECT *
FROM employees
WHERE year(birth_date) BETWEEN 1950 AND 2020
  AND month(birth_date) = 12
  AND day(birth_date) = 25;

SELECT DATEDIFF(now(), hire_date)
FROM employees
WHERE year(hire_date) BETWEEN 1990 AND 1999
AND month(birth_date) = 12
  AND day(birth_date) = 25
ORDER BY hire_date desc;

