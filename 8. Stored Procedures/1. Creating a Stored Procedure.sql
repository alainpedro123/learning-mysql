-- In other DBMS such SQL Server, we don't have to change the default delimiter
-- 1. Creating a get_clients Procedure
DELIMITER $$
CREATE PROCEDURE get_clients()
BEGIN
	SELECT * 
    FROM clients;
END $$

DELIMITER ;

-- 2. call a procedure
CALL get_clients();

-- Exercise: Create a stored procedure called get_invoices_with_balance to return all the invoices with a balance > 0
DELIMITER $$
CREATE PROCEDURE get_invoices_with_balance()
BEGIN
	SELECT * 
    FROM invoices
    WHERE invoice_total - payment_total > 0;
END $$ 

DELIMITER ;