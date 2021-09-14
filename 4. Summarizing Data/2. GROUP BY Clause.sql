-- 1. Calculating the total sales by client using the GROUP BY Clause
USE sql_invoicing;
SELECT
	client_id,
	SUM(invoice_total) AS total_sales
FROM invoices
GROUP BY client_id
ORDER BY total_sales DESC

-- 2. Calculating the total sales by client using the GROUP BY Clause for the second half of the year
USE sql_invoicing;
SELECT
	client_id,
	SUM(invoice_total) AS total_sales
FROM invoices
WHERE invoice_date >= '2019-07-01'
GROUP BY client_id
ORDER BY total_sales DESC

-- SELECT > FROM > WHERE > GROUP BY > ORDER BY

-- 3. Grouping by multiple columns. Joining invoices table with clients table. Show the total sales per states and city
USE sql_invoicing;
SELECT
	state,
    city,
	SUM(invoice_total) AS total_sales
FROM invoices AS i
JOIN clients USING (client_id)
GROUP BY state, city

-- EXERCISE: Write a query that generates the report below.
SELECT 
	p.date,
	pm.name AS payment_method,
    SUM(p.amount) AS total_payments
FROM payments AS p
JOIN payment_methods AS pm ON p.payment_method = pm.payment_method_id
GROUP BY p.date, pm.name
ORDER BY date;
