-- Select the employee with the name Mayumi Schueller
/*
filter on first name and last name to limit the amount of data
combine first and last name to produce result
*/
SELECT concat( first_name, ' ', last_name ) as "full name"
from employees
WHERE first_name = 'Mayumi' and last_name = 'Schueller';
