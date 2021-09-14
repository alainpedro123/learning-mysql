-- Composite Primary Key: is a Primary Key tha consists of multiple columns
-- "order_items" table has composite primary key: order_id and product_id

-- 1. JOIN 2 Tables: order_items and order_item_notes
-- Compound Join Condition : Multiple condition to join tables

-- a) One condition
USE sql_store;
SELECT * 
FROM order_items AS oi
JOIN order_item_notes AS oin 	
	ON oi.order_id = oin.order_id
    
-- b) Multiple conditions
USE sql_store;
SELECT * 
FROM order_items AS oi
JOIN order_item_notes AS oin 	
	ON oi.order_id = oin.order_id        -- this is a Compound Join Condition
    AND oi.product_id = oin.product_id

