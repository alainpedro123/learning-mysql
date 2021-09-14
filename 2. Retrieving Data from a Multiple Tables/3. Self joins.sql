-- 1. Joining the Employees table with itself. So we can select the name of each employee and their managers
USE sql_hr;
SELECT * 
FROM employees AS e -- employees
JOIN employees AS m -- managers
	ON e.reports_to = m.employee_id
    
-- 2. Joining the Employees table with itself. Select only the name of the employee and their manager
USE sql_hr;
SELECT e.employee_id, e.first_name, m.first_name AS manager
FROM employees AS e -- employees
JOIN employees AS m -- managers
	ON e.reports_to = m.employee_id