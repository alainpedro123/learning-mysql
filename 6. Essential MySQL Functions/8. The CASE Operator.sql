/*Return the categories below based on the order place year:
  - current year -> 'Active'
  - last year -> 'Last year'
  - earlier -> 'Archived'
*/
USE sql_store;

SELECT 
	order_id, 
    order_date,
	CASE
		WHEN YEAR(order_date) = YEAR(NOW()) THEN 'Active'
        WHEN YEAR(order_date) = YEAR(NOW()) - 1 THEN 'Last Year'
		WHEN YEAR(order_date) < YEAR(NOW()) - 1 THEN 'Archived'
        ELSE 'Future'
	END AS category
FROM orders;


/* EXERCISE: Classify customers based on their points: 
Gold -> for customers with points > 3000
Silver -> for customers with points between 2000 and 3000
Bronze -> for customers with points < 2000
*/
USE sql_store;
SELECT 
	CONCAT(first_name, ' ', last_name) AS customer,
    points,
    CASE 
		WHEN points > 3000 THEN 'Gold'
        WHEN points BETWEEN 2000 AND 3000 THEN 'Silver'
        ELSE 'Bronze'
	END AS category
FROM Customers;

