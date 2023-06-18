-- How many female customers do we have from the state of Oregon(OR) and 
New York (NY)
SELECT count(username) from customers
where (state = 'OR' or state = 'NY')
and gender = 'F';
