USE it330mc_Spring_2019;

-- Write the query to get all the columns from the actor table. 
SELECT 
	* 
FROM 
	actor;

-- How many rows are in this table?
SELECT 
	COUNT(*)
FROM 
	actor;

-- 3. Write the query to get the first name and last name columns from the actor table.
SELECT 
	first_name, 
    last_name
FROM 
	actor;
    
-- Write the query to get all the columns from the category table.
SELECT 
	* 
FROM 
	category;

-- Write the query to sort the category table by the category_id column so that it lists the largest number first.
SELECT 
	* 
FROM 
	category
ORDER BY 
	category_id DESC;

-- Write the query to find the number of countries that start with the letter A.
SELECT 
	country
FROM 
	country
WHERE 
	country 
LIKE 
	'a%';

-- Write the query to get first name, last name, and email from customer table.
SELECT 
	first_name, 
    last_name,
    email
FROM 
	customer;

-- Write the query to get the first name, last name and email from customer table for active customers.
SELECT 
	first_name, 
    last_name,
    email
FROM 
	customer
WHERE 
	active=1;