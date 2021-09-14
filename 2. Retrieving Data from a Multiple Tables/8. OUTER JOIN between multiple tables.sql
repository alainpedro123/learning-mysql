-- Avoiding use RIGHT JOIN and use LEFT JOIN instead

-- 1) Join 3 tables: Orders, Customers, Shipper using LEFT JOIN
USE sql_store;
SELECT c.customer_id, c.first_name, o.order_id, s.name AS shipper
FROM customers AS c
LEFT JOIN orders AS o ON o.customer_id = c.customer_id
LEFT JOIN shippers AS s ON o.shipper_id = s.shipper_id
ORDER BY customer_id;

-- EXERCISE: Join 4 tables: customers, orders shipper, order_statuses and return the columns below:
SELECT o.order_date, o.order_id, c.first_name, s.name AS shipper,  os.name AS status
FROM orders AS o
JOIN customers AS c ON o.customer_id = c.customer_id
LEFT JOIN shippers AS s ON o.shipper_id = s.shipper_id
LEFT JOIN order_statuses AS os ON o.status = os.order_status_id