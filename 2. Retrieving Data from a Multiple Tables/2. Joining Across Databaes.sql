-- COMBINING COLUMNS FROM TABLES ACROSS MULTIPLE DATABASES
-- We only prefix the tables that are not part of the current Data Base (after the USE st) "sql_store".
-- 1. JOIN 2 tables (order_item and products) from 2 different DataBases: "sql_store" and "sql_inventory"
USE sql_store;
SELECT * 
FROM order_items AS o
JOIN sql_inventory.products AS p 
	ON o.product_id = p.product_id;

-- 2. JOIN 2 tables (order_item and products) from 2 different DataBases: "sql_store" and "sql_inventory"
USE sql_inventory;
SELECT * 
FROM sql_store.order_items AS o
JOIN products AS p 
	ON o.product_id = p.product_id;
    