use it330mc_Spring_2019;

select 
	*
from 
	actor
where 
	last_name like '%os%'
;

select
	customer_id,
    staff_id,
    count(amount)
from
	payment
group by
	customer_id,
    staff_id
having count(amount) > 15
;

select 
	distinct customer_id
from
	payment
order by
	customer_id
;

select
	*
from
	customer
where
	customer_id in (
		select 
			distinct customer_id
		from
			payment
	)
;
	
select 
	customer_id
    amount
from
	payment
where
	amount > 9
order by
	customer_id
;

select
	*
from
	actor
order by
	first_name limit 5, 10
;