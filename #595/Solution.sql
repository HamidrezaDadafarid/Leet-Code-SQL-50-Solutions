-- 1. Create table if not exists
CREATE TABLE IF NOT EXISTS World (
    name VARCHAR PRIMARY KEY,
    continent VARCHAR,
    area INT,
    population INT,
    gdp BIGINT
);

-- 2. Truncate the table to clear existing data
TRUNCATE TABLE World;

-- 3. Insert sample data
INSERT INTO World (name, continent, area, population, gdp) VALUES
('China', 'Asia', 9597000, 1400000000, 16862000000000),
('India', 'Asia', 3287000, 1380000000, 3176000000000),
('USA', 'North America', 9834000, 331000000, 22675000000000),
('Brazil', 'South America', 8516000, 213000000, 1847000000000),
('Russia', 'Europe', 17098242, 144000000, 1774000000000),
('Australia', 'Oceania', 7692000, 25600000, 1546000000000),
('Nigeria', 'Africa', 923768, 206000000, 432300000000),
('Canada', 'North America', 9985000, 38000000, 2000000000000),
('France', 'Europe', 551695, 67000000, 2936000000000),
('Argentina', 'South America', 2780000, 46000000, 640000000000);

-- 4. Your original SELECT query
SELECT name, population, area
FROM World
WHERE area >= 3000000 OR population >= 25000000;