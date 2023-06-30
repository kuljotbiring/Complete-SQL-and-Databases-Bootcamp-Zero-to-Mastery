/*
* DB: Store
* Table: orders
* Question: Get all orders from customers who live in Ohio (OH), New York 
(NY) or Oregon (OR) state
* ordered by orderid
*/
select orders.orderid, customers.customerid, customers.firstname, 
customers.lastname, customers.state 
FROM orders 
inner join customers on orders.customerid = customers.customerid
where (customers.state = 'OH' or customers.state = 'NY' or customers.state 
= 'OR');


/*
* DB: Store
* Table: products
* Question: Show me the inventory for each product
*/
select products.prod_id, inventory.quan_in_stock
from products"public"."departments"
inner join inventory on products.prod_id = inventory.prod_id;

/*
* DB: Employees
* Table: employees
* Question: Show me for each employee which department they work in
*/
select employees.emp_no, employees.first_name, employees.last_name, 
departments.dept_name
from employees
inner join dept_emp on employees.emp_no = dept_emp.emp_no
inner Join departments on departments.dept_no = dept_emp.dept_no;
