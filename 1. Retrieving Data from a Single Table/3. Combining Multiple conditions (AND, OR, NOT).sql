-- AND, OR, NOT
-- PRIORITIES AND > OR
-- a) Selecting Customers born after January 1st, 1990 and with point greater than 1000
USE sql_store;
SELECT *
FROM Customers
WHERE birth_date > '1990-01-01' AND points > 1000;

-- b) Selecting Customers born after January 1st, 1990 or with point greater than 1000
USE sql_store;
SELECT *
FROM Customers
WHERE birth_date > '1990-01-01' OR points > 1000;

-- c) Selecting Customers born after January 1st, 1990 or with point greater than 1000 and live in VA state
USE sql_store;
SELECT *
FROM Customers
WHERE birth_date > '1990-01-01' OR points > 1000 AND state = 'VA';

-- d) Selecting Customers born after January 1st, 1990 or with point greater than 1000 and live in VA state
USE sql_store;
SELECT *
FROM Customers
WHERE birth_date > '1990-01-01' OR 
	  (points > 1000 AND state = 'VA');
      
-- e) Selecting Customers not born after January 1st, 1990 and with point greater than 1000.
USE sql_store;
SELECT *
FROM Customers
WHERE NOT (birth_date > '1990-01-01' OR points > 1000);
-- the NOT operator gives the following output: WHERE (birth_date <= '1990-01-01' AND points <= 1000);

-- EXERCISE 3:  From the "order_items" table, get the the items with id = 6 and where the total_price > 30 
USE sql_store;
SELECT *
FROM order_items
WHERE order_id = 6 AND unit_price * quantity > 30

-- quantity * unit_price = total_price;
