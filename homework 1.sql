/* what actors have a first name PENELOPE*/ 
select first_name, last_name 
from actor
where first_name = 'PENELOPE';

/*what actors were in the movie Zoolander Fiction*/
select 
	a.first_name, a.last_name
from actor a
join film_actor fa
	on fa.actor_id = a.actor_id 
join film f 
	on f.film_id = fa.film_id
where f.title = "ZOOLANDER FICTION";

/*what movies were jennifer davis in*/
select 
	f.title, a.first_name, a.last_name
from film f
join film_actor fa
	on fa.film_id = f.film_id 
join actor a 
	on fa.actor_id = a.actor_id 
where a.first_name = 'JENNIFER' and a.last_name = 'DAVIS';

/*What movies has lisa anderon still not returned*/

