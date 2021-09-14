-- Combining Rows from multiple tables 
-- When using UNION the number of columns you're returning from the both table must be equal
-- 1. Creating a report out of the orders table, get all the orders and next to each orde add a label. If the order was placed in the current year the label will be "Active", otherwise the label is "Archived"
-- a) Active
USE sql_store;
SELECT order_id, order_date, 'Active' AS status
FROM orders
WHERE order_date >= '2019-01-01';

-- b) Archived
USE sql_store;
SELECT order_id, order_date, 'Archived' AS status
FROM orders
WHERE order_date < '2019-01-01'

-- c) using UNION and combine rows from these two table
USE sql_store;
SELECT order_id, order_date, 'Active' AS status
FROM orders
WHERE order_date >= '2019-01-01'
UNION
SELECT order_id, order_date, 'Archived' AS status
FROM orders
WHERE order_date < '2019-01-01';

-- d) Getting rows from Different Tables
USE sql_store;
SELECT first_name 
FROM customers
UNION 
SELECT name
FROM shippers

-- EXERCISE: Return a report. Using customers table. Colors: Bronze for < 2000, Silver from 2000 - 3000, Gold for > 3000

USE sql_store;
SELECT customer_id, first_name, points, 'Bronze' AS type -- BRONZE
FROM customers
WHERE points < 2000
UNION
SELECT customer_id, first_name, points, 'Silver' AS type -- SILVER
FROM customers
WHERE points BETWEEN 2000 AND 3000
UNION
SELECT customer_id, first_name, points, 'Gold' AS type -- Gold
FROM customers
WHERE points > 3000
ORDER BY first_name;