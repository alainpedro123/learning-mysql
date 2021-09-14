-- 1. Round
SELECT ROUND(5.73)
SELECT ROUND(5.73, 1)
SELECT ROUND(5.7345, 2)

-- 2. Truncate 
SELECT ROUND(5.7345, 2)

-- 3. Ceiling - returns the smallest integer that is greater than or equal to the given number
SELECT CEILING(5.2)

-- 4. Floor - returns the largest integer that is less than or equal to the given number
SELECT FLOOR(5.2)

-- 5. ABS - returns the absolute value of the number. It always returns a positive value
SELECT ABS(5.2)
SELECT ABS(-5.2)

-- 6. RAND - returns a random value between 0 and 1
SELECT RAND();