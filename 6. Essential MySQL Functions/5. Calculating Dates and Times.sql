-- 1. Returning the next day, month and year
SELECT DATE_ADD(NOW() , INTERVAL 1 DAY)
SELECT DATE_ADD(NOW() , INTERVAL 1 MONTH)
SELECT DATE_ADD(NOW() , INTERVAL 1 YEAR)

-- 2. Returning the last day, month and year
SELECT DATE_ADD(NOW() , INTERVAL -1 DAY)
SELECT DATE_SUB(NOW() , INTERVAL 1 DAY)

SELECT DATE_ADD(NOW() , INTERVAL -1 MONTH)
SELECT DATE_SUB(NOW() , INTERVAL 1 MONTH)

SELECT DATE_ADD(NOW() , INTERVAL -1 YEAR)
SELECT DATE_SUB(NOW() , INTERVAL 1 YEAR)

-- Returning the difference of the days between two times
SELECT DATEDIFF('2019-01-05 09:00', '2019-01-01 17:00')
SELECT DATEDIFF('2019-01-01 17:00', '2019-01-05 09:00')

-- Returning the difference of the days from two date
SELECT TIME_TO_SEC('09:02') - TIME_TO_SEC('2019-01-01 09:00')