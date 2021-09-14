-- REGEXP: Regular Expression

-- a) this statement " LIKE '%field%' " is equivalent to this one " REGEXP 'field' "
	  -- Customers whose last names contains 'field' in any position.
USE sql_store;
SELECT *
FROM Customers
WHERE last_name REGEXP 'field'

-- b) Customers whose last names starts with 'field'.
USE sql_store;
SELECT *
FROM Customers
WHERE last_name REGEXP '^field'

-- c) Customers whose last names ends with 'field'.
USE sql_store;
SELECT *
FROM Customers
WHERE last_name REGEXP 'field$'

-- d) Customers who have 'field' or 'mac' in any position of their last names.
USE sql_store;
SELECT *
FROM Customers
WHERE last_name REGEXP 'field|mac'

-- e) Customers who have 'field', 'mac' or 'rose' in any position of their last names.
USE sql_store;
SELECT *
FROM Customers
WHERE last_name REGEXP 'field|mac|rose'

-- f) Customers whose their last names starts with 'field' or have 'mac' or 'rose' in any position of their last names.
USE sql_store;
SELECT *
FROM Customers
WHERE last_name REGEXP '^field|mac|rose'

-- g) Customers whose their last names ends with 'field' or have 'mac' or 'rose' in any position of their last names.
USE sql_store;
SELECT *
FROM Customers
WHERE last_name REGEXP 'field$|mac|rose'

-- g) Customers whose last names contains the letter "e".
USE sql_store;
SELECT *
FROM Customers
WHERE last_name REGEXP 'e'

-- g) Customers whose last names contains the letter "e", but before the "e" they have "g", "m" or "i". -> ge, ie or me
USE sql_store;
SELECT *
FROM Customers
WHERE last_name REGEXP '[gim]e'

-- h) Customers whose last names contains the letter "e" followed by "f", "m" or "q". -> ef, em or eq
USE sql_store;
SELECT *
FROM Customers
WHERE last_name REGEXP 'e[fmq]'

-- i) Customers whose last names contains the letter any letter from a - h followed by "e".
USE sql_store;
SELECT *
FROM Customers
WHERE last_name REGEXP '[a-h]e'

-- ^ represents the beginning of the string
-- $ represents the end of the string
-- | represents a logical OR
-- [abcd] to the match any single character listed in the brackets.
-- [a-f] represents a range

-- EXERCISE: Get the customers whose
-- 1) First names are ELKA or AMBUR
USE sql_store;
SELECT *
FROM Customers
WHERE first_name REGEXP 'ELKA|AMBUR'

-- 2) Last names end with EY or ON
USE sql_store;
SELECT *
FROM Customers
WHERE last_name REGEXP 'ey$|on$'
 
-- 3) Last names start with MY or contains SE
USE sql_store;
SELECT *
FROM Customers
WHERE last_name REGEXP '^my|se'

-- 4) Last names contain B followed by R or U
USE sql_store;
SELECT *
FROM Customers
WHERE last_name REGEXP 'b[ru]'