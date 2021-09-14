-- 1.Select invoices larger than all the invoices of the client 3
USE sql_invoicing;
SELECT * 
FROM invoices
WHERE invoice_total > (
	SELECT MAX(invoice_total)  -- returning a single value
	FROM invoices
	WHERE client_id = 3
)

-- 2.Select invoices larger than all the invoices of the client 3
-- Using ALL
USE sql_invoicing;
SELECT * 
FROM invoices
WHERE invoice_total > ALL (
	SELECT invoice_total    -- returning a list of value
	FROM invoices
	WHERE client_id = 3
)