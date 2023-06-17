-- Aggregate Functions - Produce one value

-- Get the number of people who work 
SELECT count(emp_no) from employees;

-- Get the highest salary available
Select max(salary) from salaries

-- Get the total amount of salaries paid
SELECT sum(salary) from salaries
