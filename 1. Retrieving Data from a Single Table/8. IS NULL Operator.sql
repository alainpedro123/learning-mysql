-- NULL: absence of value

-- a) Customer who doesn't have a phone number
USE sql_store;
SELECT *
FROM Customers
WHERE phone IS NULL;

-- a) Customer who have a phone number
USE sql_store;
SELECT *
FROM Customers
WHERE phone IS NOT NULL;

-- EXERCISE: Return the order that haven't been shipped yet.
USE sql_store;
SELECT *
FROM Orders
WHERE shipped_date IS NULL;