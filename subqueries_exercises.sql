use employees;

SELECT *
FROM employees.employees no
WHERE no.hire_date IN (
    SELECT e.hire_date
    FROM  employees.employees e
    where e.emp_no = 101010
);

select distinct t.title
from titles t
where t.emp_no in (
    select emp.emp_no from employees.employees emp
    where emp.first_name = 'Aamod'
    );

select emp.first_name, emp.last_name
from employees.employees emp
where emp.gender = 'F' and (
    emp.emp_no in (
        select dm.emp_no
        from dept_manager dm
        where current_date between dm.from_date and dm.to_date
        )
    );
