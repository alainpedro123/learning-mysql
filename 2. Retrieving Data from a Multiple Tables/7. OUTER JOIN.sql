-- Whenever we type "INNER JOIN" we're using "JOIN".
-- OUTER JOIN: LEFT and RIGHT JOIN

-- 1) Join two tables: customers and orders.
-- The below query returns only these records that match this condition: "ON o.customer_id = c.customer_id"
USE sql_store;
SELECT c.customer_id, c.first_name, o.order_id 
FROM customers AS c
JOIN orders AS o ON o.customer_id = c.customer_id
ORDER BY c.customer_id;

-- 2) USING OUTER JOIN - LEFT JOIN 
-- LEFT JOIN returns all the elements from the left table "customers" whether the condition is true or not. 
-- LEFT JOIN returns all the record on the mentioned columns below from the "column" table, even though the condition doesn't match or the order order_id is NULL 
SELECT c.customer_id, c.first_name, o.order_id 
FROM customers AS c
LEFT JOIN orders AS o ON o.customer_id = c.customer_id
ORDER BY c.customer_id;

-- 3) USING OUTER JOIN - RIGHT JOIN 
-- RIGHT JOIN returns all the elements from the right table "customers" whether the condition is true or not. 
-- RIGHT JOIN returns all the record on the mentioned columns below, even though the condition doesn't match or the order order_id is NULL 
SELECT c.customer_id, c.first_name, o.order_id 
FROM orders AS o
RIGHT JOIN customers AS c ON o.customer_id = c.customer_id
ORDER BY c.customer_id;

-- EXERCISE: Join 2 tables: "products" and "order_item" using OUTER JOIN
-- aLEFT
SELECT p.product_id, p.name, o.quantity
FROM products AS p
LEFT JOIN order_items AS o ON o.product_id = p.product_id;