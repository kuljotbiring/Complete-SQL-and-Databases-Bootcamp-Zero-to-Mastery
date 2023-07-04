-- HAVING keyword applies filters to group as a whole
-- WHERE is for each individual record

-- how many female employees work in each department only departments
-- that have over 25k employees
select d.dept_name, count( e.emp_no) as "# of employees"
from employees as e 
INNER join dept_emp as de on de.emp_no = e.emp_no
INNER join departments as d on de.dept_no = d.dept_no
where e.gender = 'F'
GROUP BY d.dept_name
having count(e.emp_no) > 25000;
