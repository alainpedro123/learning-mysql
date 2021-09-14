-- Parameter is used to pass a value to a stored procedure as well to send values to the calling program

-- 1. Writting a procedure that receive the name of the state and return the clients in that state
DROP PROCEDURE IF EXISTS get_clients_by_state;

DELIMITER $$
CREATE PROCEDURE get_clients_by_state
(	-- parameter
	state CHAR(2) -- state: NA
)
BEGIN
	SELECT * 
    FROM clients AS c
    WHERE c.state = state; -- comparing the value in the state column, with the state parameter defined above 
        -- column = parameter
END $$
DELIMITER ;

-- 2. Calling the procedure
CALL get_clients_by_state('CA')
SELECT * FROM clients;

-- EXERCISE: Write a stored procedure "get_invoices_by_client" to return invoices for a given client using the id.

USE sql_invoicing;
DELIMITER $$
CREATE PROCEDURE get_invoices_by_client
(
	client_id INT
)
BEGIN
	SELECT * 
    FROM invoices AS i
    WHERE i.client_id = client_id;
END $$
DELIMITER ;

-- call the procedure
CALL get_invoices_by_client(1)
