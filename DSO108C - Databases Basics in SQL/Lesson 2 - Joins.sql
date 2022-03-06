# Write a query to find the first and last name, customer ID and rental ID for customers who have rented a film.
select first_name, last_name, customer_id, rental_id from sakila.customer
join sakila.rental using(customer_id);

# Write a query that finds all films with actors that have an actor_id 5.
select * from sakila.film
join sakila.film_actor using(film_id)
where actor_id = 5;

#Write a query that lists out all information of every film along with the name of the language for each film, even if a language doesn't exist for that film.
select * from sakila.film
left outer join sakila.language using(language_id); 

# Write a query that lists out the title of films and the name of the actors who starred in those films. Additionally, only list films that starred artists whose first names start with a vowel.
select first_name, last_name, title from sakila.film 
join sakila.film_actor using(film_id) 
join sakila.actor using(actor_id)
where first_name like 'a%' or first_name like 'e%' or first_name like 'i%'or first_name like 'o%' or first_name like 'u%';

#part 2
SELECT * from sakila.inventory 
join sakila.rental using (inventory_id)
join sakila.payment using (rental_id)
where amount > 4.99;
