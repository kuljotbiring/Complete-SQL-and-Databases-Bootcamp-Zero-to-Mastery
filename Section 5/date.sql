-- Two ways to get the current date
select CURRENT_DATE;
select now()::date;

-- Format the date
select to_char( CURRENT_DATE,  'mm/dd/yyyy');

-- Calulate the differece between dates
-- lets you know the days hours:minutes:sececonds since
SELECT now() - '2023/06/18';

-- Cast a string to a date using date
select date '2023/06/18';

-- Calculate age
select age(date '1984/05/12', date '2023/06/24');

-- Extract the day
select EXTRACT (day from date '2000/01/01') as day;

-- Round the date
SELECT date_trunc('year', date '1992/11/13');

-- get a time interval - 30 days before given date
SELECT *
from orders
where purchaseDate <= now() - INTERVAL '30 days';

-- Extract date part
SELECT 
    EXTRACT (
        YEAR
        FROM
            interval '5 years 20 months'
    );

