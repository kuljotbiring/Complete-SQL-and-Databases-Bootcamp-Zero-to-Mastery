/*
*  Show me all the employees, hired after 1991, that have had more than 2 titles
*  Database: Employees
*/
select e.emp_no, count(t.title) as "amount of titles"
from employees as e 
inner join titles as t on e.emp_no = t.emp_no
where EXTRACT(YEAR  from e.hire_date) >'1991'
group by e.emp_no
having count(t.title) > 2
ORDER by e.emp_no;

/*
*  Show me all the employees that have had more than 15 salary changes that work in 
the department development
*  Database: Employees
*/
select e.emp_no, count(s.titles) as "amount of raises"
from employees as e 
join salaraies as s using(emp_no)
join departments as de using(emp_no)
where de.dept_no = 'd005'
group by e.emp_no
where count(s.from_date) > 15
order by e.emp_no;


/*
*  Show me all the employees that have worked for multiple departments
*  Database: Employees
*/
select e.emp_no, count(de.dept_no) as "worked for # departments"
from employees as e 
join dept_emp as de using(emp_no)
group by e.emp_no
having count(de.dept) > 1
order by e.emp_no;


