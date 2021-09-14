-- Variables are quite often used when calling stored procedures that have output parameters

-- Defining variables: 
-- Type of variables

-- a) User or session variables: these variables will be free only after we closed MySQL Workbench
set @invoices_count = 0;

-- b) Local Variable: are defined inside of stored procedures or functions
-- As soon as the stored procedure finished execution, this variables are free

USE sql_invoicing;
-- 1. Creating a Procedure with Local Variables that will calculate the risk factor
DELIMITER $$
CREATE PROCEDURE get_risk_factor()
BEGIN
	-- Declaring the local variables
	DECLARE risk_factor DECIMAL(9, 2) DEFAULT 0;
    DECLARE invoices_total DECIMAL( 9, 2);
    DECLARE invoices_count INT;
    
    SELECT COUNT(*), SUM(invoice_total)   -- reading these 2 values and put them into 
    INTO invoices_count, invoices_total   -- put them into these 2 variables
    FROM invoices;
    
    -- calculate the risk_factor
    SET risk_factor = invoices_total / invoices_count * 5;
    
    -- select (or display) the risk factor
	SELECT risk_factor;
END $$
DELIMITER ;

-- Calling the procedure
CALL get_risk_factor()