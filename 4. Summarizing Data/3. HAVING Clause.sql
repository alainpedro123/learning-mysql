-- 3.
SELECT 
	client_id,
    SUM(invoice_total) AS total_sales
FROM invoices
GROUP BY client_id

-- 2. from the query above, include only the clients that have a total_sale of more than 500 $
 -- HAVING is used to filter data AFTER we group our rows. WHERE  is used to filter data BEFORE we group our rows.
 
 SELECT 
	client_id,
    SUM(invoice_total) AS total_sales
FROM invoices
GROUP BY client_id
HAVING total_sales > 500


-- 3. from the query above, include only the clients that have a total_sale of more than $500 
-- Calculating the sum of invoices and the number of invoices
 
 SELECT 
	client_id,
    SUM(invoice_total) AS total_sales,
    COUNT(*) AS number_of_invoices
FROM invoices
GROUP BY client_id
HAVING total_sales > 500 AND number_of_invoices > 5
-- using HAVING  we can select only the columns that have been mention on the SELECT Statement and WHERE we can pick the columns that haven't been mentioned


-- EXERCISE: Write a query to the customers located in VA(Virginia) and have spent more than $100.

USE sql_store;
SELECT c.customer_id, c.first_name, c.last_name, SUM(oi.quantity * oi.unit_price) AS total_sales_per_customer 
FROM customers AS c
JOIN orders AS o USING (customer_id)
JOIN order_items AS oi USING (order_id)
WHERE state = 'VA'
GROUP BY
	c.customer_id, 
    c.first_name, 
    c.last_name
HAVING total_sales_per_customer > 100