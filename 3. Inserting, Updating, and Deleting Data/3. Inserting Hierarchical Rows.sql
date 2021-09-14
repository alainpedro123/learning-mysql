-- INSERTING MULTIPLE ROWS INTO MULTIPLE TABLE
-- Parent child relationship: "Orders" is the parent and "Order_items" is the child

-- 1.
USE sql_store;
INSERT INTO orders (customer_id, order_date, status)
VALUES (1, '2019-01-02', 1);
SELECT LAST_INSERT_ID(); -- Returning the ID that MySQL generates when insert a new row

-- 2.
USE sql_store;
INSERT INTO order_items
VALUES 
	(LAST_INSERT_ID(), 1, 1, 2.95),
    (LAST_INSERT_ID(), 2, 1, 3.95)
