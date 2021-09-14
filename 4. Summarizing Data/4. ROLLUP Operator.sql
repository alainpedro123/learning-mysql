-- ROLLUP only apply to columns that aggregate values. It's only availabe in MySQL.
-- 1. No ROLLUP
USE sql_invoicing;
SELECT 	
	client_id,
    SUM(invoice_total) AS total_sales
FROM invoices
GROUP BY client_id

-- 2. WITH ROLLUP - it's the summ of the total_sales across of clients
USE sql_invoicing;
SELECT 	
	client_id,
    SUM(invoice_total) AS total_sales
FROM invoices
GROUP BY client_id WITH ROLLUP

-- 3. Grouping by multiple columns
USE sql_invoicing;
SELECT 	
	state, 
    city,
    SUM(invoice_total) AS total_sales
FROM invoices AS i
JOIN clients AS c USING (client_id)
GROUP BY state, city  WITH ROLLUP

-- EXERCISE: Write a query to produce the below report
SELECT 
	pm.name AS payment_method,
    SUM(p.amount) AS total
FROM payments AS p
JOIN payment_methods AS pm ON p.payment_method = pm.payment_method_id
GROUP BY pm.name WITH ROLLUP