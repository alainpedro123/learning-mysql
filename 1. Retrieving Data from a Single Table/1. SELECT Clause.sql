-- a)
USE sql_store;
SELECT * FROM customers
-- WHERE customer_id = 1;
ORDER BY first_name;

-- b) Arithmetic expression
USE sql_store;
SELECT last_name, first_name, points, points + 10
FROM Customers;

-- c)  Arithmetic expression 2
USE sql_store;
SELECT last_name, first_name, points, points * 10 + 100
FROM Customers;

-- d) Arithmetic expression 3
USE sql_store;
SELECT last_name, first_name, points, (points + 10) * 100
FROM Customers;

-- e) ALIAS
USE sql_store;
SELECT last_name, first_name, points, (points + 10) * 100 AS discount_factor
FROM Customers;

-- f) ALIAS 2
USE sql_store;
SELECT last_name, first_name, points, (points + 10) * 100 AS 'discount factor'
FROM Customers;

-- g) DISTINT: removing the duplicates STATES
use sql_store;
SELECT DISTINCT state
FROM customers;


-- EXERCISE 1: return 3 columns from the "products" table: name, unit_price, new_price (unit_price * 1.1) 
USE sql_store;
SELECT name, unit_price, unit_price * 1.1 AS new_price  
FROM products;