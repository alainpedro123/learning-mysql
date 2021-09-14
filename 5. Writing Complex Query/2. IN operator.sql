-- 1. Find the products that have never been ordered.
USE sql_store;
SELECT *
FROM products 
WHERE product_id NOT IN ( 
	SELECT DISTINCT product_id  -- these are the products that have been ordered
	FROM order_items
)

-- Find clients wtihout invoices. First look for client with invoices
USE sql_invoicing;
SELECT * 
FROM clients
WHERE client_id NOT IN(
	SELECT DISTINCT client_id
	FROM invoices
)