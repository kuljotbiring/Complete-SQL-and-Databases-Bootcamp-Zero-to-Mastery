-- full join creturns every thing from both tables
CREATE  table "cartesianA" (id int);
CREATE  table "cartesianB" (id int);

insert into "cartesianA" values (1);
insert into "cartesianA" values (2);
insert into "cartesianA" values (3);

insert into "cartesianB" values (1);
insert into "cartesianB" values (2);
insert into "cartesianB" values (4);
insert into "cartesianB" values (5);
insert into "cartesianB" values (20);
insert into "cartesianB" values (30);

select * from "cartesianA" as a
full join "cartesianB" as b on a.id = b.id;


