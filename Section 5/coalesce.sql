/*
* DB: https://www.db-fiddle.com/f/PnGNcaPYfGoEDvfexzEUA/0
* Question: 
* Assuming a students minimum age for the class is 15, what is the average 
age of a student?
*/
SELECT sum(COALESCE(age, 15) from Student;

/*
* DB: https://www.db-fiddle.com/f/PnGNcaPYfGoEDvfexzEUA/0
* Question: 
* Replace all empty first or last names with a default?
*/
select id, COALESCE(name, 'firstName'), COALESCE(lastname, 'lastName'), 
age FROM "Student";
