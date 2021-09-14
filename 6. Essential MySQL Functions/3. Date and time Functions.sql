-- 1. Returning the current date and time
SELECT NOW();

-- 2. Returning the current date
SELECT CURDATE();

-- 3. Returning the current time
SELECT CURTIME();

-- 4. Returning the current year, month and day
SELECT YEAR(NOW());
SELECT MONTH(NOW());
SELECT DAY(NOW());

SELECT EXTRACT(YEAR FROM NOW());
SELECT EXTRACT(MONTH FROM NOW());
SELECT EXTRACT(DAY FROM NOW());

-- 5. Returning the current hour, minute and second
SELECT HOUR(NOW());
SELECT MINUTE(NOW());
SELECT SECOND(NOW());

-- 6. Returning the Day and Month as a STRING
SELECT MONTHNAME(NOW());
SELECT DAYNAME(NOW());

-- EXERCISE -> Given the query below, modify this query using the date and time format 
USE sql_store;
SELECT * 
FROM orders
WHERE order_date >= '2019-01-01'

-- solution
SELECT * 
FROM orders
WHERE YEAR(order_date) = YEAR(NOW());