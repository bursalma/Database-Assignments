-- use it330mc_SP19_mab687;
-- select database();
-- show databases;
-- show tables;
-- select 
-- 	distinct upper(fID) as ID 
-- from 
-- 	firstTest as test;
USE it330mc_Spring_2019;

SELECT 
	actor_id,
	first_name,
    last_name
FROM
	actor
WHERE
	last_name LIKE '%davis%';
    
SELECT 
	*
FROM 
	information_schema.tables 
WHERE 
	table_name='actor';

SELECT 
	f.film_id, 
	f.title, 
    f.description, 
    fa.film_id, 
    fa.actor_id, 
    MYLEFTFOOT.first_name, 
    MYLEFTFOOT.last_name
FROM 
	film AS f 
INNER JOIN 
	film_actor AS fa ON f.film_id = fa.film_id
INNER JOIN 
	actor AS MYLEFTFOOT ON MYLEFTFOOT.actor_id = fa.actor_id
WHERE 
	title='African Egg'
;