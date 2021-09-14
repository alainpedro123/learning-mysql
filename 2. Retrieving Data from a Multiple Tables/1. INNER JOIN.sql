-- INNER JOIN = JOIN
-- 1. Join two tables "Orders" and "Customers" where the id is equal.
USE sql_store;
SELECT * 
FROM orders
JOIN customers 
	ON orders.customer_id = customers.customer_id;

-- 2. Select order_id column from "Orders table" and first_name, and last_name from "Customers table" and join them together 
USE sql_store;
SELECT order_id, first_name, last_name
FROM orders
JOIN customers 
	ON orders.customer_id = customers.customer_id;
    
-- 3. Select order_id and customers_id column from "Orders table" and first_name, and last_name from "Customers table" and join them together 
USE sql_store;
SELECT order_id, orders.customer_id, first_name, last_name
FROM orders
JOIN customers 
	ON orders.customer_id = customers.customer_id;
    

-- 4. Select order_id and customers_id column from "Orders table" and first_name, and last_name from "Customers table" and join them together 
-- Using ALIAS = AS
USE sql_store;
SELECT order_id, o.customer_id, first_name, last_name
FROM orders AS o
JOIN customers c
	ON o.customer_id = c.customer_id;
    

-- 5. Select order_id and customers_id column from "Orders table" and first_name, and last_name from "Customers table" and join them together 
-- without writing "AS" works as well.
USE sql_store;
SELECT order_id, o.customer_id, first_name, last_name
FROM orders o
JOIN customers c
	ON o.customer_id = c.customer_id;


-- EXERCISE: JOIN 2 tables "Order_items" and "products". Display the following columns:  order_id, product_id, followed by the quantity and unit_price of the order_items tables.

USE sql_store;
SELECT order_id, o.product_id, quantity, o.unit_price
FROM order_items AS o
JOIN products AS p
	ON o.product_id = p.product_id;

