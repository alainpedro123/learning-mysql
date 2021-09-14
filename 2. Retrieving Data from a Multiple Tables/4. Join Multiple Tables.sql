-- 1. Joining 3 tables: customers with orders, orders with order_status.
USE sql_store;
SELECT * 
FROM orders AS o
JOIN customers AS c ON o.customer_id = c.customer_id
JOIN order_statuses AS os ON o.status = os.order_status_id;

-- 2. Joining 3 tables: customers with orders, orders with order_status. Select the columns below:
USE sql_store;
SELECT o.order_id, o.order_date, c.first_name, c.last_name, os.name AS status
FROM orders AS o
JOIN customers AS c ON o.customer_id = c.customer_id
JOIN order_statuses AS os ON o.status = os.order_status_id;

-- EXERCICES: Join 3 tables: "payments" with "payment_methods" and "clients". Select the name of the client and payment methods
-- my solution

USE sql_invoicing;
SELECT c.name, p.payment_id, p.invoice_id, p.date, p.amount, pm.name AS payment_method
FROM clients AS c
JOIN payments AS p ON c.client_id = p.payment_id
JOIN payment_methods AS pm ON p.payment_id = pm.payment_method_id

-- course solution
USE sql_invoicing;
SELECT p.date, p.invoice_id, p.amount, c.name, pm.name AS payment_method 
FROM payments AS p
JOIN clients AS c ON p.client_id = c.client_id
JOIN payment_methods AS pm ON p.payment_method = pm.payment_method_id