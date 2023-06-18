-- How many customers are not 55
SELECT count(age) from customers
where not age = '55';
