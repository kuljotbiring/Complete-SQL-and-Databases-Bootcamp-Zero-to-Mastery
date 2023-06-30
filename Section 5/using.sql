-- use USING keyword to simplfy a inner join
select e.emp_no, e.first_name, de.dept_no 
from employees as e 
inner join dept_emp as de using(emp_no);

-- similar query using regular inner join format
select e.emp_no, e.first_name, de.dept_no 
from employees as e 
inner join dept_emp as de on de.emp_no = e.emp_no;

-- the USING keyword can be used to easily match primary and foreign key 
relationships
select e.emp_no, e.first_name, d.dept_name 
from employees as e 
inner join dept_emp as de using(emp_no)
inner join departments as d using(dept_no);
