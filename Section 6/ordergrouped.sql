--get employees by department that have more than 25k employees
select d.dept_name, COUNT(e.emp_no) as "# of employees"
from employees as e 
inner join dept_emp as de on de.emp_no = e.emp_no
inner join departments as d on de.dept_no = d.dept_no
group by d.dept_name
order by count(e.emp_no) DESC;
