-- 1. Update the table invoices for client_id 1
USE sql_invoicing;
UPDATE invoices
SET payment_total = 10, payment_date = '2019-03-01'
WHERE invoice_id = 1

-- 2. Revert the above update
USE sql_invoicing;
UPDATE invoices
SET payment_total = 0, payment_date = NULL  -- OR payment_total = NULL
WHERE invoice_id = 1

-- 3. Update the invoice_total for 50% of the total amount for client_id = 1
USE sql_invoicing;
UPDATE invoices
SET payment_total = invoice_total * 0.5, 
payment_date = due_date 
WHERE invoice_id = 3