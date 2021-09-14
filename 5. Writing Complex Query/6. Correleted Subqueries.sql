-- Select employees whose salary is above the average in their office (in the same office)
-- Collerelated subqueries get executed in each row in the main query

USE sql_hr;
SELECT * 
FROM employees AS e
WHERE salary > (
	SELECT AVG(salary)
    FROM employees
	WHERE office_id = e.office_id  -- Salary in the same office
)

-- EXERCISE: Get invoices that are larger that the client's average invoice amount
USE sql_invoicing;

SELECT * 
FROM invoices AS i
WHERE invoice_total > (
	SELECT AVG(invoice_total)
    FROM invoices
    WHERE client_id = i.client_id
)