-- 1. Create the Views table if it doesn't exist
CREATE TABLE IF NOT EXISTS Views (
    article_id INT,
    author_id INT,
    viewer_id INT,
    view_date DATE
);

-- 2. Truncate the table to remove old data
TRUNCATE TABLE Views;

-- 3. Insert sample data
INSERT INTO Views (article_id, author_id, viewer_id, view_date) VALUES
(101, 1, 1, '2024-07-01'),  -- author viewed own article
(102, 2, 3, '2024-07-01'),
(103, 5, 5, '2024-07-02'),  -- author viewed own article
(104, 4, 2, '2024-07-03'),
(105, 5, 5, '2024-07-04'),  -- author viewed own article
(106, 1, 4, '2024-07-05');

-- 4. Your original SELECT query
SELECT DISTINCT author_id AS id
FROM Views
WHERE author_id = viewer_id
ORDER BY id;
