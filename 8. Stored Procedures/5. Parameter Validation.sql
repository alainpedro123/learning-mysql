-- PARAMETER VALIDATION
-- Procedure to INSERT, UPDATE and DELETE data

-- 1. Create a procedure to update an invoice using the parameters below
DROP PROCEDURE IF EXISTS make_payment
DELIMITER $$
CREATE PROCEDURE make_payment
(	
	invoice_id INT,
    payment_amount DECIMAL(9,2),
    payment_date DATE
)
BEGIN
	UPDATE invoices AS i
    SET 
		i.payment_total = payment_amount,
		i.payment_date = payment_date
     WHERE i.invoice_id = invoice_id;  
END $$
DELIMITER ;

-- Calling the procedure
CALL make_payment(2, 100, '2019-01-01')



-- 2. Validate the arguments that we're to this make_payment procedure
DROP PROCEDURE IF EXISTS make_payment
DELIMITER $$
CREATE PROCEDURE make_payment
(	
	invoice_id INT,
    payment_amount DECIMAL(9,2),
    payment_date DATE
)
BEGIN
	IF payment_amount <= 0 THEN
		SIGNAL SQLSTATE '22003'    -- raise an error!!
			SET MESSAGE_TEXT = 'Invalid payment amount';
	END IF;
	UPDATE invoices AS i
    SET 
		i.payment_total = payment_amount,
		i.payment_date = payment_date
     WHERE i.invoice_id = invoice_id;  
END $$
DELIMITER ;

-- Calling the procedure
CALL make_payment(2, -100, '2019-01-01')