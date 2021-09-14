-- LIKE
-- "%" represents any number of characters
-- "_" reprensents single character

-- a) customers whose last names starts with 'b' 
USE sql_store;
SELECT *
FROM Customers
WHERE last_name LIKE 'b%'

-- b) customers whose last names starts with 'brush' 
USE sql_store;
SELECT *
FROM Customers
WHERE last_name LIKE 'brush%'

-- c) customers whose last names cointains the letter 'b', whether it's in the begginning, middle or end. 
USE sql_store;
SELECT *
FROM Customers
WHERE last_name LIKE '%b%'

-- d) customers whose last names ends with the letter 'y'. 
USE sql_store;
SELECT *
FROM Customers
WHERE last_name LIKE '%y'

-- e) customers whose last has the letter 'y' in the second position. 
USE sql_store;
SELECT *
FROM Customers
WHERE last_name LIKE '_y'

-- f) customers whose last has the letter 'y' in the sixth position. 
USE sql_store;
SELECT *
FROM Customers
WHERE last_name LIKE '_____y'

-- g) customers whose last starts with 'b', and after 4 characters followed by 'y'. 
USE sql_store;
SELECT *
FROM Customers
WHERE last_name LIKE 'b____y'

-- h) customers whose last contains the letter 'field'. 
USE sql_store;
SELECT *
FROM Customers
WHERE last_name LIKE '%field%'


-- EXERCISE: 
-- 1. Get the customers whose addresses contain TRAIL or AVENUE
USE sql_store;
SELECT *
FROM Customers
WHERE address LIKE '%trail%' OR address LIKE '%avenue%'

-- 2. Get the customers phone numbers end with 9
USE sql_store;
SELECT *
FROM Customers
WHERE phone LIKE '%9'
