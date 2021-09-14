-- 1. IFNULL function
USE sql_store;

SELECT 
	order_id, 
	IFNULL(shipper_id, 'Not assigned') AS Shipper
FROM orders;

-- 2. COALESCE function - If shipper_id is NULL we wanna return the value in the "comments" column, else if "comments" is null too, so we wanna return "Not assigned"
USE sql_store;

SELECT 
	order_id, 
    comments,
	COALESCE(shipper_id, comments, 'Not assigned') AS Shipper
FROM orders;


-- !! With IFNULL we can substitute a Null value with something else. With COALESCE Function we supply a list of values and this function will return the first non null value in the list.


-- EXERCISE: Write a query to display the list below:

USE sql_store;

SELECT 
	CONCAT(first_name, ' ', last_name) AS customer,
    IFNULL(phone, 'UNKNOWN') AS phone_number
FROM Customers;