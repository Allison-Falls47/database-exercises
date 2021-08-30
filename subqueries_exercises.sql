use employees;

SELECT first_name, last_name, hire_date
FROM employees
WHERE emp_no IN (
    SELECT emp_no = '101010'
    FROM dept_manager
);
