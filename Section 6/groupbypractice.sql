-- GROUP BY is a way to summarize or aggregate data by groups
-- use group by with aggregate functions like count, sum etc
-- function is applied per group not entire data set

-- example: How many employees work in each department
SELECT dept_no, count(emp_no)
from dept_emp
group by dept_no;
