-- SORTING DATA
-- A Table is default sorted by ID number
-- a) sort by first_name  - the ASC ORDER
USE sql_store;
SELECT *
FROM customers
ORDER BY first_name 

-- b) sort by first_name - the DESC ORDER
USE sql_store;
SELECT *
FROM customers
ORDER BY first_name DESC;

-- c) sort by the state. when the state are the same it then sorts by the first_name
USE sql_store;
SELECT *
FROM customers
ORDER BY state, first_name;

-- d) sort by birth_date
USE sql_store;
SELECT first_name, last_name
FROM customers 
ORDER BY state, first_name;

-- e) sort by points + ALIAS
USE sql_store;
SELECT first_name, last_name, 10 AS points
FROM customers 
ORDER BY points, first_name;

-- EXERCISE: Return all the items from the order_items with id = 2 and sort by the total price by DESC order. 
-- Solution 1
USE sql_store;
SELECT *, quantity * unit_price AS total_price 
FROM order_items 
WHERE order_id = 2
ORDER BY quantity * unit_price DESC;

-- Solution 2
USE sql_store;
SELECT *, quantity * unit_price AS total_price
FROM order_items 
WHERE order_id = 2
ORDER BY total_price DESC;