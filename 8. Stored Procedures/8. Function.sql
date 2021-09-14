-- FUNCTION are very similar to STORED PROCEDURES, but the mainly difference is that a function can only return a single value. So FUNCTION is useful whenever you want to return one only value.
/*
It's necessary to return the attributes os a function. Every MySQL function should have at least 1 attribute. These attributes are:
1. DETERMINIST - it always returns the same ouput for the same inputs, it means if we give this function the same set of values, it always returns the same value. 
It's useful when we're not going to return a value based on the data in our database, because a data can change.

2. READS SQL DATA - it means we're going to have a select statement in your function to read some data.

3. MODIFIES SQL DATA - it means we're going to have an INSERT, UPDATE or DELETE statement in a function
*/


USE sql_invoicing;

DROP FUNCTION IF EXISTS get_risk_factor_for_client
-- 1. Creating a function that returns a risk factor for a client 
DELIMITER $$
CREATE FUNCTION get_risk_factor_for_client
(
	client_id INT   -- Parameter
)
RETURNS INTEGER
READS SQL DATA
BEGIN
	-- Declaring the local variables
	DECLARE risk_factor DECIMAL(9, 2) DEFAULT 0; 
    DECLARE invoices_total DECIMAL( 9, 2);
    DECLARE invoices_count INT;
    
    SELECT COUNT(*), SUM(invoice_total)   -- reading these 2 values and put them into 
    INTO invoices_count, invoices_total   -- put them into these 2 variables
    FROM invoices AS i
    WHERE i.client_id = client_id;
    
    -- calculate the risk_factor
    SET risk_factor = invoices_total / invoices_count * 5;
    
--  RETURN risk_factor;
    RETURN IFNULL(risk_factor, 0);
END $$

DELIMITER ;

-- Calling / using the function in the Select statment just like the built-in function in MySQL
SELECT client_id, name, get_risk_factor_for_client(client_id) AS risk_factor
FROM clients


