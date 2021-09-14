-- SUBQUERIES VS JOIN
-- Find clients wtihout invoices. First look for client with invoices
USE sql_invoicing;
SELECT * 
FROM clients
WHERE client_id NOT IN(
	SELECT DISTINCT client_id
	FROM invoices
)

-- Rewritting the querie above using JOIN
-- Select all clients and then join those with invoice table

SELECT c.client_id, c.name, c.address, c.city, c.state, c.phone
FROM clients AS c
LEFT JOIN invoices USING (client_id)
WHERE invoice_id IS NULL

-- INNER JOIN: getting the only clients with invoice
-- OUTTER JOIN: getting all the clients regardless if they have or not invoices 


-- EXERCISE: Find clients who have ordered lettuce (id = 3). Select customer_id, first_name, last_name
-- a) Using a subquery
USE sql_store;
SELECT customer_id, first_name, last_name
FROM customers 
WHERE customer_id IN (
	SELECT o.customer_id
    FROM order_items AS oi
    JOIN orders AS o USING (order_id)
    WHERE product_id = 3
)

-- b) Using JOIN
SELECT customer_id, first_name, last_name
FROM customers AS c
JOIN orders AS o USING (customer_id)
JOIN order_items AS OI USING (order_id)
WHERE oi.product_id = 3 