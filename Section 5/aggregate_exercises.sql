-- BEFORE YOU START
/*
 * What database should I use for these exercises?
 * Name: Employees
 */
-- 


-- Question 1: What is the average salary for the company?
-- Table: Salaries
SELECT avg(salary) from salaries;

-- Question 2: What year was the youngest person born in the company?
-- Table: employees
SELECT min( birth_date ) from employees;

-- BEFORE YOU START
/*
 * What database should I use for these exercises?
 * Name: France
 */
-- 

-- Question 1: How many towns are there in france?
-- Table: Towns
SELECT count(id) from towns;

-- BEFORE YOU START
/*
 * What database should I use for these exercises?
 * Name: World
 */
-- 

-- Question 1: How many official languages are there?
-- Table: countrylanguage
SELECT count( countrycode ) from countrylanguage
WHERE isofficial = true;

-- Question 2: What is the average life expectancy in the world?
-- Table: country
SELECT avg( lifeexpectancy ) from country;

-- Question 3: What is the average population for cities in the 
netherlands?
-- Table: city
SELECT avg( population ) from city
where countrycode = 'NLD';

