-- Column Concatenantion (combine columns)
-- CONCAT(TEXT, TEXT)
-- CONCAT(COLUMN1, COLUMN2)
SELECT concat(emp_no, ' is a ', title) as "Employee Title" from titles;

-- Concatenate the first and last name of the employee into one column
-- Rename the concatenated column
SELECT concat(first_name, ' ', last_name) as "Full Name" from employees;


