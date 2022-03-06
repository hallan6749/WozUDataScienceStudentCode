Select * from sakila.actor 
Where first_name = "Cuba"

Select title, film_id from sakila.film
Where film_id > 5 AND film_id <20

Select first_name, last_name, email from sakila.customer
Where last_name = "Rodriguez" OR last_name like "Mc%"

Select * from sakila.film
Where title like 'a%'

SELECT title from sakila.film 
WHERE language_id 
NOT IN(SELECT language_id from sakila.language WHERE name = "English" OR name = "Japanese")

#Part 2
SELECT rental_id, payment_date FROM payment WHERE amount > .99
SELECT staff_id, customer_id FROM payment WHERE amount > .99
