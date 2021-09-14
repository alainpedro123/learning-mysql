-- 1. Updating all the invoices for the client whose name is "Myworks' but not knowing his client_id
USE sql_invoicing;
UPDATE invoices 
SET 
	payment_total = invoice_total * 0.5,
    payment_date = due_date
WHERE client_id = (
				SELECT client_id
                FROM clients
                WHERE name = 'Myworks'
                )
                

-- 2. Updating all the invoices for all clients located in NY or CA
USE sql_invoicing;
UPDATE invoices 
SET 
	payment_total = invoice_total * 0.5,
    payment_date = due_date
WHERE client_id IN (  -- to return multiples record we use "IN" instead of "=" after the client_id 
				SELECT client_id
                FROM clients
                WHERE state IN ('CA','NY')
                )
 
-- EXERCISE: Update the orders tables, on the comment columns for customers that have more than 3000 points, regard them as "Gold Customers"
USE sql_store;
UPDATE orders
SET comments = 'Gold Customer'
WHERE customer_id IN (
				SELECT customer_id 
				FROM customers
				WHERE points > 3000
				)