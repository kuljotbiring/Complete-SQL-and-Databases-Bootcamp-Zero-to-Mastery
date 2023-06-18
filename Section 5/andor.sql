-- Get all the female employees who work for the company
SELECT first_name, last_name from employees
where gender = 'F';

-- The OR key word in effect creates a separate search filter section
select first_name, last_name, hire_date from employees
where (first_name = 'Georgi' and last_name = 'Facello' and hire_date = 
'1986-06-26')
or (first_name = 'Bezalel' and last_name = 'Simmel');
