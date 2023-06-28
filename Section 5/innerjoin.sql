-- inner join  links the column from table A to table B
-- only returns matched records (ie the intersection of the two tables)
-- inner joins other table with the one that is in the FROM clause
-- results come back unsorted - so make sure to sort
select a.emp_no,
    concat( a.first_name, a.last_name ) as "name",
    b.salary
from employees as a
inner join salaries as b on b.emp_no = a.emp_no
order by a.emp_no ASC;

-- salary of employee but only ones who received new title
-- get the raises from a promotion
-- title change always follows two days after the rais
SELECT  a.emp_no,
    concat( a.first_name, a.last_name ) as "name",
    b.salary,
    c.title,
    c.from_date as "promoted on"
 FROM employees as a 
 inner join salaries as b on a.emp_no = b.emp_no
 INNER join titles as c on c.emp_no = a.emp_no
 and c.from_date = (b.from_date + INTERVAL '2 days')
 ORDER by a.emp_no;
 
 -- more complex inner join
 SELECT  a.emp_no,
    concat( a.first_name, a.last_name ) as "name",
    b.salary,
    COALESCE(c.from_date::text, '-') as "title taken on"
 FROM employees as a 
 inner join salaries as b on a.emp_no = b.emp_no
 INNER join titles as c 
 on c.emp_no = a.emp_no and (
 c.from_date = (b.from_date + INTERVAL '2 days') OR
 c.from_date = b.from_date
 )
 ORDER by a.emp_no;

