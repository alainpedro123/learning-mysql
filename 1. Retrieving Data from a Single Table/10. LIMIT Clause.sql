-- LIMITING THE NUMBER OF RECORD RETURNED FROM YOUR QUERIES
-- a) Returning only the 3 first customers
USE sql_store;
SELECT *
FROM customers
LIMIT 3

-- b) if the limit number we set is greater than the Record numbers, so the limit statement is ignored.
USE sql_store;
SELECT *
FROM customers
LIMIT 300

-- c) 
USE sql_store;
SELECT *
FROM customers
LIMIT 6, 3; -- skip the 6 first customers and display the next 3.

-- LIMIT is good to dispalying customers on a web page, for example:
-- on page 1: 1 - 3
-- on page 2: 4 - 6
-- on page 3: 7 - 9

-- EXERCISE: Return the top 3 loyal customers (the customers that have more points than anyone else)
USE sql_store;
SELECT *
FROM customers
ORDER BY points DESC
LIMIT 3;