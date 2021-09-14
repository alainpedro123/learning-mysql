-- a) customers with more 1000 and less the 3000 points 
USE sql_store;
SELECT *
FROM Customers
WHERE points >= 1000 AND points <= 3000;

-- b) A short way to write this "WHERE points >= 1000 AND points <= 3000" is the statement below:
USE sql_store;
SELECT *
FROM Customers
WHERE points BETWEEN 1000 AND 3000;

-- EXERCISE: Return the customers that were born between January 1st 1990 and January 1st 2000
USE sql_store;
SELECT *
FROM Customers
WHERE birth_date BETWEEN '1990-01-01' AND '2000-01-01'