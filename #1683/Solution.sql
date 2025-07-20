-- 1. Create the Tweets table if it doesn't exist
CREATE TABLE IF NOT EXISTS Tweets (
    tweet_id INT PRIMARY KEY,
    content VARCHAR
);

-- 2. Truncate the table to clear any existing tweets
TRUNCATE TABLE Tweets;

-- 3. Insert sample data
INSERT INTO Tweets (tweet_id, content) VALUES
(1, 'Hello world!'),
(2, 'This is a longer tweet!'),
(3, 'SQL is fun!'),
(4, 'What a beautiful day today!'),
(5, 'Short');

-- 4. Your original SELECT query
SELECT tweet_id
FROM Tweets
WHERE LENGTH(content) > 15;
