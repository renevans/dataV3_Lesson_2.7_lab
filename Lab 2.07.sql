USE sakila;

-- 1.  How many films are there for each of the categories in the category table. Use appropriate join to write this query.
SELECT c.category_id, c.name, count(film_id)
FROM film_category fc
JOIN category c
ON c.category_id = fc.category_id
GROUP BY category_id;

-- check on category_id
SELECT COUNT(distinct category_id)
FROM film_category;

SELECT COUNT(category_id)
FROM category; 

-- 2.  Display the total amount rung up by each staff member in August of 2005.
SELECT s.staff_id, sum(amount)
FROM payment p
JOIN staff s
ON p.staff_id = s.staff_id
GROUP BY s.staff_id;

-- 3.  Which actor has appeared in the most films?
SELECT fa.actor_id, a.first_name, a.last_name, count(fa.film_id)
FROM film_actor fa
JOIN actor a
ON fa.actor_id = a.actor_id
GROUP BY a.actor_id
ORDER BY count(fa.film_id) desc;

-- 4.  Most active customer (the customer that has rented the most number of films)
SELECT r.customer_id, c.first_name, c.last_name, count(r.inventory_id)
FROM rental r
JOIN customer c
ON r.customer_id = c.customer_id
GROUP BY c.customer_id
ORDER BY count(r.inventory_id) desc;

-- 5.  Display the first and last names, as well as the address, of each staff member.
SELECT s.staff_id, s.first_name, s.last_name, a.address
FROM staff s
JOIN address a
ON s.address_id = a.address_id
GROUP BY s.staff_id;

-- 6.  List each film and the number of actors who are listed for that film.
SELECT fa.film_id, f.title, count(fa.actor_id)
FROM film_actor fa
JOIN film f
ON fa.film_id = f.film_id
GROUP BY film_id;

-- 7.  Using the tables payment and customer and the JOIN command, list the total paid by each customer. List the customers alphabetically by last name.
SELECT c.customer_id,c.last_name,c.first_name,sum(p.amount)
FROM customer c
JOIN payment p
ON c.customer_id = p.customer_id
GROUP BY customer_id
ORDER BY c.last_name asc;


-- 8.  List number of films per category.
SELECT c.category_id, c.name, count(film_id)
FROM film_category fc
JOIN category c
ON c.category_id = fc.category_id
GROUP BY category_id;

