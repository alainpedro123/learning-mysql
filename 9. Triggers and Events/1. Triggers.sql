-- TRIGGER is a block of SQL code that automatically gets executed before or after an INSERT, UPDATE or DELETE statement.
-- Quite often we use TRIGGERS to enforce Data consistency

USE sql_invoicing; 

DELIMITER $$
CREATE TRIGGER payments_after_insert
	AFTER INSERT ON payments  -- we can modify data in eachtable except the payments  table
    FOR EACH ROW
BEGIN
-- here we modify our data. 
	UPDATE invoices
    SET paymen_total = 
END $$
DELIMITER ;

SELECT * FROM invoices;
SELECT * FROM payments;
