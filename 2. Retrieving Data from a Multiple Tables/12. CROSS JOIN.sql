-- CROSS JOIN is used to combine or join every record from the first table with every record in the second table
-- 1. Explicit sintax of a CROSS JOIN. RECOMMENDED!
USE sql_store;
SELECT c.first_name AS customer, p.name AS product
FROM customers AS c
CROSS JOIN products AS p
ORDER BY first_name;

-- 2. Implicit sintax of a CROSS JOIN. NOT RECOMMENDED
USE sql_store;
SELECT c.first_name AS customer, p.name AS product
FROM customers AS c, products AS p
ORDER BY first_name;

-- A real example for using cross joins is where you have a table of sizes like "small, medium, large" and a table of colors like "red, blue, green"
-- And you want to combine all the sizes with all the colors.

-- EXERCISE: Do a Cross Join between 2 tables: shippers and products. Return the column name from the both tables
-- a) Explicit Sintax
USE sql_store;
SELECT s.name AS shipper, p.name AS product 
FROM shippers AS s
CROSS JOIN products AS p
ORDER BY s.name;

-- b) Implicit Sintax
USE sql_store;
SELECT s.name AS shipper, p.name AS product
FROM shippers AS s, products AS p
ORDER BY s.name;