-- 1) 
USE sql_store;
SELECT * 
FROM orders AS o
JOIN customers AS c ON o.customer_id = c.customer_id

-- 2) Writting the above query using "Implicit Join Syntax"
-- Implicit Join Syntax: !! NOT RECOMMENDED 
USE sql_store;
SELECT * 
FROM orders AS o, customers AS c
WHERE o.customer_id = c.customer_id 
