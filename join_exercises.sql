use employees;

select d.dept_name as 'Department Name'
, concat(e.first_name, ' ', e.last_name) as 'Department Manager'
from departments d
         inner join dept_manager dm on d.dept_no = dm.dept_no
         inner join employees e on dm.emp_no = e.emp_no
where dm.to_date = '9999-01-01';

select d.dept_name as 'Department Name'
     , concat(e.first_name, ' ', e.last_name) as 'Department Manager'
from departments d
         inner join dept_manager dm on d.dept_no = dm.dept_no
         inner join employees e on dm.emp_no = e.emp_no
where dm.to_date = '9999-01-01' and e.gender = 'F';

select t.title, count(t.emp_no)
from departments d
    inner join dept_emp de on d.dept_no = de.dept_no
    inner join titles t on de.emp_no = t.emp_no
where d.dept_name = 'Customer Service' and de.to_date = '9999-01-01'
and t.to_date ='9999-01-01'
group by t.title;

select d.dept_name as 'Department Name'
     , concat(e.first_name, ' ', e.last_name) as 'Department Manager'
     , s.salary as 'Salary'
from departments d
         inner join dept_manager dm on d.dept_no = dm.dept_no
         inner join employees e on dm.emp_no = e.emp_no
         inner join salaries s on e.emp_no = s.emp_no
where dm.to_date = '9999-01-01' and s.to_date = '9999-01-01';

select concat(e.first_name, ' ',e.last_name) as Employee
, d.dept_name as Department
, concat(edm.first_name, ' ',edm.last_name) as Manager
from departments as d
        inner join dept_emp de on d.dept_no = de.dept_no
        inner join employees e on de.emp_no = e.emp_no
        inner join dept_manager dm on d.dept_no = dm.dept_no
        inner join employees as edm on dm.emp_no = edm.emp_no
where de.to_date - '9999-01-01' and dm.to_date = '9999-01-01'