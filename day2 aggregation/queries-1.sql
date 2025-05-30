-- Aggregations

-- Count how many students are there in the table
-- The data will be array of Object in Node so just calculate the len
select * from Students;
select COUNT(ID) from Students; -- COUNT

-- Average score of this table
select AVG(Score) as Average_Score from Students; -- AVG

-- SUM(874.5), MIN(78.9), MAX(95.2)
select MAX(Score) from Students;

-- Unique places in the Table
select Place from Students GROUP BY Place;

-- Count the Number of students in Each Place
-- 1. Find the Unique Places 2. Count the Number of students in each place
select Place, COUNT(*) as No_OF_Students from Students GROUP BY Place;

-- Find the Average score of Each Place
select Place, AVG(Score) as Average from Students GROUP BY Place;



-- 1. Select
-- 2. Where
-- 3. Group by
-- 4. Having
-- 5. ORDER BY

-- Find the Unique places for Females
-- 1. Filter the Data by Gender(WHERE)
-- 2. Find the Unique Places(GROUP BY)

-- Find the Places where the average is > 86
-- 1. Unique Places 2. Average Calc 3. Filter by the AVG(HAVING)
select Place, AVG(Score) as Average 
from Students GROUP BY Place
Having AVG(Score) > 86;
