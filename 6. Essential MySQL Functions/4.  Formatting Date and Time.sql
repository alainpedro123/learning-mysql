-- 1. Date
SELECT DATE_FORMAT(NOW(), '%m %d %y') AS 'Date'
SELECT DATE_FORMAT(NOW(), '%M %D %Y') AS 'Date' -- This format is better.

-- 2. Time
SELECT DATE_FORMAT(NOW(), '%H:%i %p') AS 'Time' -- PM
SELECT DATE_FORMAT(NOW(), '%H:%i') AS 'Time'