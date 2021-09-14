 -- 1. Delete all the invoices with id = 1
USE sql_invoicing;
DELETE FROM invoices 
WHERE invoice_id = 1 

 -- 2. Delete all the invoices for the client "Myworks"
USE sql_invoicing;
DELETE FROM invoices 
WHERE client_id IN (
		SELECT * 
		FROM clients
		WHERE name = 'Myworks'
) 