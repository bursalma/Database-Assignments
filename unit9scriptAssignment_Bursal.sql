USE it330mc_Spring_2019;

-- 1. Write a statement that orders a table by a column

SELECT 
	* 
FROM
	actor
ORDER BY
	last_name;

-- 2. Write a statement that orders a table by a column in descending order

SELECT 
	* 
FROM
	actor
ORDER BY
	last_name DESC;

-- 3. Write a statement that only brings back 20 rows. Be sure to pick a table with more than 20 rows.

SELECT
	* 
FROM
	actor
LIMIT
	20;

-- 4. What is the aggregation you can use to find a table that has over 20 rows from #3? Write the statement and list the total number of rows in that table.

SELECT
	COUNT(*)
FROM
	actor;

-- 5. Write a statement that only brings back 10 rows from the actors table, but skips the first 15.

SELECT
	*
FROM
	actor
LIMIT 15, 10;