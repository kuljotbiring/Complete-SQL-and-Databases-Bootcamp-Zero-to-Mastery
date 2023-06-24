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
