-- copying data from one table to another
-- "Primary Key" and "Auto-Incrementing" will be disabled when creating a table based on the other one 

-- 1. Creating a new table "order_archieved", copying and paste all the data from "Order" table
USE sql_store;
CREATE TABLE orders_archived AS
SELECT * FROM orders_archived;

-- 2. Deleting all the data from orders_archived by means of "TRUNCATE"
SELECT * FROM orders_archived;

-- 3. Copying the data from "Orders" table and Insert into "orders_archived"
INSERT INTO orders_archived
SELECT * 
FROM orders
WHERE order_date < '2019-01-01'

-- EXERCISE: Create a copy of the records in the table "invoices" and put into a new table "invoices_archived". Instead of the "client id" we want to have the client name column. Join the new table with the client table and then
-- use that query as a subquery in a create table statement. Copy the invoice only that have payment_date
USE sql_invoicing;
CREATE TABLE invoices_archived AS
SELECT i.invoice_id, i.number, c.name AS client, invoice_total, i.payment_total, i.invoice_date, i.payment_date, i.due_date
FROM invoices AS i
JOIN clients AS c USING (client_id)
WHERE payment_date IS NOT NULL 

SELECT * FROM invoices_archived;
