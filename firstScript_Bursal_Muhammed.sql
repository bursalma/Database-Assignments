use it330mc_Spring_2019;

select inventory_id,film_id,store_id,last_update from inventory;

-- correct formating
select 
	inventory_id,
    film_id,
    store_id,
    last_update 
from 
	inventory;
    
select * from film;
select * from store;

select * from staff;
select * from address;
select * from city where city_id=300;

select 
	* 
from 
	country 
where 
	country_id=20;
