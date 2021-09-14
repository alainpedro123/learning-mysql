-- NATURAL JOIN ARE NOT RECOMMENDED!!
-- Using Natural Joins we don't specify the column names
-- Using Natural the DB engine will look at these 2 tables and will join them based on the common columns (the columns that have the same names), we don't write conditions
USE sql_store;
SELECT o.order_id, c.first_name
FROM orders AS o
NATURAL JOIN customers AS c