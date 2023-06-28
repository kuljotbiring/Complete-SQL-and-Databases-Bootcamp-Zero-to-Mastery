-- Self Join: Join a table to itself
-- when a table has a foreign key referencing its primary key
select a.id, a.name as "employee", b.name as "supervisor name"
from employee as a, employee as b
where a.supervisorId = b.id;

-- how to accomplish this with a self-join
select a.id, a.name as "employee", b.name as "supervisor name"
from employee as a 
inner join employee as b
on a.supervisorId = b.id;

