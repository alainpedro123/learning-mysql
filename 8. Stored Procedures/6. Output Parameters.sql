-- OUTPUT PARAMETER - Not Recommended
-- Using Parameters to return value to the calling program

-- 1. get_unpaid_invoices_for_client
DROP PROCEDURE IF EXISTS get_unpaid_invoices_for_client
DELIMITER $$
CREATE PROCEDURE get_unpaid_invoices_for_client
(	
	client_id INT, 						-- INPUT PARAMETER
    OUT invoices_count INT,				-- OUTUT PARAMETER
    OUT invoices_total DECIMAL(9,2)		-- OUTUT PARAMETER
)
BEGIN
	SELECT COUNT(*), SUM(invoice_total)   -- Reading this 2 values
	INTO invoices_count, invoices_total	  -- copying them into these two output values
    FROM invoices AS i						
    WHERE i.client_id = client_id
		AND payment_total = 0;
END $$
DELIMITER ;

-- CALL
CALL get_unpaid_invoices_for_client(3);