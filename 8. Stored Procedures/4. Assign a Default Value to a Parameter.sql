-- Assign a Default Value to a Parameter

DROP PROCEDURE IF EXISTS get_clients_by_state;

-- 1. Setting within the procedure that When calling the procedure if the state is not inserted, so return "CA" by default
DELIMITER $$
CREATE PROCEDURE get_clients_by_state
(	-- parameter
	state CHAR(2) -- state: NA
)
BEGIN
	IF state IS NULL THEN
		SET state = 'CA';
	END IF;
    
	SELECT * 
    FROM clients AS c
    WHERE c.state = state; -- comparing the value in the state column, with the state parameter defined above 
        -- column = parameter
END $$
DELIMITER ;

-- 2. Call the created procedure
CALL get_clients_by_state(NULL)


-- 3. Setting within the procedure that When calling the procedure if the state is not inserted, so return all clients
-- FIRST WAY
DELIMITER $$
CREATE PROCEDURE get_clients_by_state
(	-- parameter
	state CHAR(2) -- state: NA
)
BEGIN
	IF state IS NULL THEN
		SElECT * FROM clients;
	ELSE
		SELECT * 
		FROM clients AS c
		WHERE c.state = state; -- comparing the value in the state column, with the state parameter defined above 
			-- column = parameter
	END IF;
END $$
DELIMITER ;

-- 4. Call the created procedure
CALL get_clients_by_state(NULL);


-- 5. Setting within the procedure that When calling the procedure if the state is not inserted, so return all clients
-- SECOND WAY
DELIMITER $$
CREATE PROCEDURE get_clients_by_state
(	-- parameter
	state CHAR(2) -- state: NA
)
BEGIN
	SELECT *
	FROM clients AS c
	WHERE c.state = IFNULL(state, c.state); -- if state parameter is NUll, so return state from clients
END $$
DELIMITER ;

-- 4. Call the created procedure
CALL get_clients_by_state(NULL);

/*
EXERCISE Write a stored procedure "get_payments" with two parameters: client_id => INT and payment_method_id => TINYINT. 
a) If both input values are null so returns all the payments in the data base 
b) if it aplies to client_id, so return only the payments for this client
c) if it aplies both, returns all the payments for the given client using the given payment method
*/

DROP PROCEDURE IF EXISTS get_payments;
DELIMITER $$
CREATE PROCEDURE get_payments
(	
	client_id INT,
    payment_method_id TINYINT
)
BEGIN
	SELECT * 
    FROM payments AS p
    WHERE 
		p.client_id = IFNULL(client_id, p.client_id) AND
        p.payment_method = IFNULL(payment_method_id, p.payment_method);
END $$
DELIMITER ;

-- Calling the procedure
CALL get_payments (NULL, 2) 