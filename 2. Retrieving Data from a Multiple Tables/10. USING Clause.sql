-- Given the following conditions: ON o.customer_id = c.customer_id. If the column name is the same in both table, we can simplify it by means of USING clause
USE sql_store;
SELECT o.order_id, c.first_name
FROM orders AS o
JOIN customers AS c ON o.customer_id = c.customer_id;

-- 1. USING clause
USE sql_store;
SELECT o.order_id, c.first_name
FROM orders AS o
JOIN customers AS c USING (customer_id)

-- 2. 
USE sql_store;
SELECT o.order_id, c.first_name, s.name AS shipper
FROM orders AS o
JOIN customers AS c USING (customer_id)
LEFT JOIN shippers as s USING (shipper_id)

-- 3. Joining 2 tables: order_item and order_items_notes.
-- order_items tables has a composite PK
USE sql_store;
SELECT * 
FROM order_items AS oi
LEFT JOIN order_item_notes AS oin 
	ON oi.order_id = oin.order_id 
    AND oi.product_id = oin.product_id
    
-- 4. Joining 2 tables: order_item and order_items_notes by means of "USING" clause
USE sql_store;
SELECT * 
FROM order_items AS oi
LEFT JOIN order_item_notes AS oin 
	USING( order_id, product_id)

-- EXERCISE: Join 3 tables: payments, payment_methods and clients
USE sql_invoicing;
SELECT p.date, c.name AS client, p.amount, pm.name AS payment_method
FROM payments AS p
JOIN clients AS c USING(client_id) 
JOIN payment_methods AS pm ON p.payment_method = pm.payment_method_id
