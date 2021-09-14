-- COMPARISON OPERATORS: >, >=, <, <=, =, != OR <>

-- a) Selecting Customers with point > 3000
USE sql_store;
SELECT *
FROM Customers
WHERE points > 3000

-- b) Selecting Customers in VA state
USE sql_store;
SELECT *
FROM Customers
WHERE state = 'VA';

-- c) Selecting Customers that are not in VA state
USE sql_store;
SELECT *
FROM Customers
WHERE state != 'VA';

-- d) Selecting Customers born after January 1st, 1990
USE sql_store;
SELECT *
FROM Customers
WHERE birth_date > '1990-01-01'

-- EXERCISE 2: Return all the orders placed this year
USE sql_store;
SELECT * 
FROM orders
WHERE order_date >= '2019-01-01';