-- Write a query to produce this result
SELECT *
FROM (SELECT 
	client_id,
    name,
    (SELECT SUM(invoice_total)
		FROM invoices
        WHERE client_id = c.client_id) AS total_sales,
	(SELECT AVG(invoice_total) FROM invoices) AS average,
    (SELECT total_sales - average) AS difference 
FROM clients As c
) AS sales_summary -- Giving an Alias is required for this cases

-- Return only the clients that we have an invoice for. removing the client_id equal 4
SELECT *
FROM (SELECT 
	client_id,
    name,
    (SELECT SUM(invoice_total)
		FROM invoices
        WHERE client_id = c.client_id) AS total_sales,
	(SELECT AVG(invoice_total) FROM invoices) AS average,
    (SELECT total_sales - average) AS difference 
FROM clients As c
) AS sales_summary -- Giving an Alias is required for this cases
WHERE total_sales IS NOT NULL;
