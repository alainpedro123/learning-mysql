-- "ANY" is equivalent to "IN =" 

-- 2.Select the clients with at least two invoices
-- a) -- getting the clients id and their numbers of invoices
USE sql_invoicing;
SELECT client_id, COUNT(*)
FROM invoices
GROUP BY client_id

-- b) getting the clients with at least two invoices
USE sql_invoicing;
SELECT client_id, COUNT(*)
FROM invoices
GROUP BY client_id
HAVING COUNT(*) >= 2

-- c)
SELECT *
FROM clients
WHERE client_id IN (
	SELECT client_id
    FROM invoices
	GROUP BY client_id
	HAVING COUNT(*) >= 2
)

-- d) using ANY
SELECT *
FROM clients
WHERE client_id = ANY (
	SELECT client_id
    FROM invoices
	GROUP BY client_id
	HAVING COUNT(*) >= 2
)