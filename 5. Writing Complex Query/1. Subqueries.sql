-- Subqueires - is a SELECT statement that is within another SQL statement.
-- Writing complex queries

-- 1. Find all the product that are more expensive than Lettuce (id =3)
USE sql_inventory;
SELECT * 
FROM products
WHERE unit_price > (
	SELECT unit_price
    FROM products
    WHERE product_id = 3
)

-- EXERCISE: In sql_hr database, find employeesa whose earn more than the average
USE sql_hr;
SELECT * 
FROM employees
WHERE salary > (
	SELECT AVG(salary)
    FROM employees
)