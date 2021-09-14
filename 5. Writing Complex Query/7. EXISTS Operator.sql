-- Select clients that have an invoice
-- 1) With IN Operator. 
SELECT * 
FROM clients
WHERE client_id IN (           -- mysql will execute this and return to the WHERE clause
	SELECT DISTINCT client_id
    FROM invoices
)

-- 2) With EXISTS
SELECT * 
FROM clients AS c
WHERE EXISTS (					-- it will return an indication whether any rows in the subquery match this search condition 
	SELECT client_id
    FROM invoices
    WHERE client_id = c.client_id
)

-- for the case 1, if the written subquery after and IN operator produces a large result set, it's more efficient to use the EXISTS operator

-- EXERCISE: Find the products that have never been ordered
-- 1) first solution with IN
USE sql_store;
SELECT * 
FROM products
WHERE product_id NOT IN(
	SELECT product_id
    FROM order_items
)

-- 2) second solution with EXISTS
USE sql_store;
SELECT * 
FROM products AS p
WHERE NOT EXISTS(
	SELECT product_id
    FROM order_items
    WHERE product_id = p.product_id
)
