-- 1. Create table if not exists
CREATE TABLE IF NOT EXISTS Customer (
    id INT PRIMARY KEY,
    name VARCHAR,
    referee_id INT
);

-- 2. Truncate the table to clear existing data
TRUNCATE TABLE Customer;

-- 3. Insert sample data
INSERT INTO Customer (id, name, referee_id) VALUES
(1, 'Alice', NULL),
(2, 'Bob', NULL),
(3, 'Charlie', 2),
(4, 'David', 1),
(5, 'Eva', 3),
(6, 'Frank', 2),
(7, 'Grace', NULL),
(8, 'Helen', 4);

-- 4. Your original SELECT query
SELECT name
FROM Customer
WHERE referee_id != 2 OR referee_id IS NULL;