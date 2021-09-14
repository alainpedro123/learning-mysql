-- Writing queries that summarize data using built-in functions
-- e.g. Writting queries that report sales by clients or state. So we can see how much we have sold in each different state.
-- The below queries are extremily useful if you work in a large organization with lots of data

-- Using Aggregate function in SQL
-- Aggregate function are function that takes a series of values and aggregate them to produce a single value
-- MAX(), MIN(), AVG(), SUM(), COUNT()
-- these function only operate with NOT NULL values

-- 1. Selecting the maximum, minimum, average, sum and count of the invoice_total column from the invoices tables
USE sql_invoicing;
SELECT 
	MAX(invoice_total) AS highest,
    MIN(invoice_total) AS lowest,
    AVG(invoice_total) AS average,
    SUM(invoice_total) AS total,
    COUNT(invoice_total) AS number_of_invoices,
    COUNT(payment_date) AS number_payments_done,
    COUNT(*) AS total_records -- Total Records on a Table 
FROM invoices;


-- 2. Selecting the maximum, minimum, average, sum and count of the invoice_total column from the invoices tables for the second half of the year
USE sql_invoicing;
SELECT 
	MAX(invoice_total) AS highest,
    MIN(invoice_total) AS lowest,
    AVG(invoice_total) AS average,
    SUM(invoice_total * 1.1) AS total,
    COUNT(*) AS total_records -- Total Records on a Table 
FROM invoices
WHERE invoice_date > '2019-07-01'


-- 3. Selecting the maximum, minimum, average, sum and count of the invoice_total column from the invoices tables for the second half of the year. For duplicate values.
USE sql_invoicing;
SELECT 
	MAX(invoice_total) AS highest,
    MIN(invoice_total) AS lowest,
    AVG(invoice_total) AS average,
    SUM(invoice_total * 1.1) AS total,
    COUNT(DISTINCT client_id) AS total_records -- counting only the unique values
FROM invoices
WHERE invoice_date > '2019-07-01'


-- 4. Write a query to generate the report below:
SELECT 
	'First half of 2019' AS data_range,
	SUM(invoice_total) AS total_sales,
	SUM(payment_total) AS total_payments,
    SUM(invoice_total - payment_total) AS what_we_expect
FROM invoices
WHERE invoice_date BETWEEN '2019-01-01' AND '2019-06-30'
UNION
SELECT 
	'Second half of 2019' AS data_range,
	SUM(invoice_total) AS total_sales,
	SUM(payment_total) AS total_payments,
    SUM(invoice_total - payment_total) AS what_we_expect
FROM invoices
WHERE invoice_date BETWEEN '2019-07-01' AND '2019-12-31'
UNION
SELECT 
	'Total' AS data_range,
	SUM(invoice_total) AS total_sales,
	SUM(payment_total) AS total_payments,
    SUM(invoice_total - payment_total) AS what_we_expect
FROM invoices



SELECT * FROM invoices;
SELECT * FROM payments;