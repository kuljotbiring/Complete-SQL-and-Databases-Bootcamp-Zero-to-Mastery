-- cross join combination of every row in one table with every row in 
another table
CREATE  table "cartesianA" (id int);
CREATE  table "cartesianB" (id int);

insert into "cartesianA" values (1);
insert into "cartesianA" values (2);
insert into "cartesianA" values (3);

insert into "cartesianB" values (1);
insert into "cartesianB" values (2);

select * from "cartesianA"
cross join "cartesianB";

