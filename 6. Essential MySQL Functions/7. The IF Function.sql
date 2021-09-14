-- If the order belongs to this year returns 'Active' otherwise 'Archived'
USE sql_store;

SELECT 
	order_id, 
    order_date,
	IF(
		YEAR(order_date) = YEAR(NOW()),
        'Active', 
        'Archived'
	) AS category
FROM orders;

-- EXERCISE: Write a query to return the table below. If a product has been ordered only one time display "once" otherwise "frequency"
USE sql_store;

SELECT 
	product_id,
    name,
    COUNT(*) ordered, -- AS orders -- that's an aggregate function so we using the clause 'GROUP'
    IF(COUNT(*) > 1, 'Many times', 'Once') AS frequency
FROM products
JOIN order_items USING (product_id)
GROUP BY product_id, name