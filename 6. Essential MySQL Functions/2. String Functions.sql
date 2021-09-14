-- Functions to work with STRING
-- 1) Length
SELECT LENGTH('sky')

-- 2) Upper
SELECT UPPER('sky')

-- 3) Lower
SELECT LOWER('SKY')

-- 4. Remove unecessary spaces
-- a) LTRIM
SELECT LTRIM('    Sky')

-- b) RTRIM
SELECT RTRIM('SKY     ')

-- c) TRIM
SELECT TRIM('    SKY     ')

-- 5. LEFT - returning characters from the left side of the string
SELECT LEFT('Kindergarten', 4)

-- 6. RIGHT - returning characters from the right side of the string
SELECT RIGHT('Kindergarten', 5)

-- 7. SUBSTRING 
SELECT SUBSTRING('Kindergarten', 3) 
SELECT SUBSTRING('Kindergarten', 3, 5)  -- 3 is star position, 5 is the length 

-- 8. LOCATE - locate the position of the certain character which belongs to a string
SELECT LOCATE('n','Kindergarten')
SELECT LOCATE('q','Kindergarten')
 SELECT LOCATE('garten','Kindergarten') -- returning the position where the 'garten' starts
 
 -- 9. REPLACE 
SELECT REPLACE('Kindergarten', 'garten', 'alain')

-- 10. CONCAT
SELECT CONCAT('Alain_', 'Pedro')

-- 
USE sql_store;
SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM customers;