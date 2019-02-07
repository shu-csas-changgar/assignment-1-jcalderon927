/*1.what actors have a first name PENELOPE*/ 
select first_name, last_name 
from actor
where first_name = 'PENELOPE';

/*2.what actors were in the movie Zoolander Fiction*/
select 
	a.first_name, a.last_name
from actor a
join film_actor fa
	on fa.actor_id = a.actor_id 
join film f 
	on f.film_id = fa.film_id
where f.title = "ZOOLANDER FICTION";

/*3.what movies were jennifer davis in*/
select 
	f.title, a.first_name, a.last_name
from film f
join film_actor fa
	on fa.film_id = f.film_id 
join actor a 
	on fa.actor_id = a.actor_id 
where a.first_name = 'JENNIFER' and a.last_name = 'DAVIS';

/*4.What movies has lisa anderson still not returned*/
select
	f.title, c.first_name, c.last_name
from film f 
join inventory i 
	on i.film_id = f.film_id
join rental r  
	on r.inventory_id = i.inventory_id
join customer c
	on r.customer_id = c.customer_id
where c.customer_id = 11 and r.return_date is null;

/*5. what movies are categorized as animations*/ 
select 
	f.title, c.name
from film f
join film_category fc
	on fc.film_id = f.film_id
join category c 
	on c.category_id = fc.category_id
where c.name = 'ANIMATION';

/*6. what did PAULA BRYANT pay to rent the movie CLOSER BANG*/
select 
	c.first_name,c.last_name, f.title,f.rental_rate
from film f 
join inventory i 
	on i.film_id = f.film_id
join rental r 
	on r.inventory_id = i.inventory_id 
join customer c 
	on c.customer_id = r.customer_id
where f.title = 'CLOSER BANG'  and c.customer_id = 95;

/*7 what is the first and last name of the staff who rented the movie CHAINSAWUPTOWN to MARIE TURNER'*/

select 
	s.first_name, s.last_name,f.title, c.first_name, c.last_name, r.rental_date, r.return_date
from staff s 
join rental r 
	on s.staff_id = r.staff_id
join inventory i 
	on i.inventory_id = r.inventory_id
join film f 
	on f.film_id = i.film_id
join payment p 
	on p.rental_id = r.rental_id
join customer c 
	on p.customer_id = c.customer_id 
where c.first_name = 'MARIE' and c.last_name = 'TURNER' and f.title = "CHAINSAW UPTOWN";

