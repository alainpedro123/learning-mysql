-- Get all the employees and their managers, whether they have a manager or not
USE sql_hr;
SELECT e.employee_id, e.first_name, m.first_name AS manager
FROM employees AS e
LEFT JOIN employees AS m ON e.reports_to = m.employee_id;