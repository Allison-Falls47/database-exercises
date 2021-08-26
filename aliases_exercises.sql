use employees;


SELECT CONCAT(emp_no, ' - ', last_name, ', ', first_name)  AS full_name, CONCAT(birth_date)  AS DOB
FROM employees
GROUP BY full_name, DOB
ORDER BY full_name asc
LIMIT 10;