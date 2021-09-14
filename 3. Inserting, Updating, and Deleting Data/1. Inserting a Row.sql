-- NULL and DEFAULT have the same result
-- 1.
USE sql_store;
INSERT INTO customers
VALUES (DEFAULT, 'John', 'Smith', '1990-01-01', NULL, 'address', 'city', 'CA', DEFAULT)

-- 2. Not need to used DEFAULT or NULL
USE sql_store;
INSERT INTO customers (first_name, last_name, birth_date, address, city, state)
VALUES ('John', 'Smith', '1990-01-01', 'address', 'city', 'CA')