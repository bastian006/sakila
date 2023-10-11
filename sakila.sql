SELECT first_name, last_name, email, address
FROM customer
WHERE address_id IN (SELECT address_id FROM address WHERE city_id = 312);


SELECT title, description, release_year, rating, special_features, name AS category
FROM film
JOIN film_category ON film.film_id = film_category.film_id
JOIN category ON film_category.category_id = category.category_id
WHERE category.name = 'Comedy';

SELECT fa.actor_id, a.first_name, a.last_name, f.title, f.description, f.release_year
FROM film_actor fa
JOIN actor a ON fa.actor_id = a.actor_id
JOIN film f ON fa.film_id = f.film_id
WHERE fa.actor_id = 5;

SELECT first_name, last_name, email, address
FROM customer
WHERE store_id = 1 AND address_id IN (SELECT address_id FROM address WHERE city_id IN (1, 42, 312, 459));

SELECT f.title, f.description, f.release_year, f.rating, f.special_features
FROM film f
JOIN film_actor fa ON f.film_id = fa.film_id
WHERE f.rating = 'G' AND f.special_features LIKE '%Behind the Scenes%' AND fa.actor_id = 15;

SELECT fa.film_id, f.title, fa.actor_id, CONCAT(a.first_name, ' ', a.last_name) AS actor_name
FROM film_actor fa
JOIN film f ON fa.film_id = f.film_id
JOIN actor a ON fa.actor_id = a.actor_id
WHERE fa.film_id = 369;

SELECT f.title, f.description, f.release_year, f.rating, f.special_features, c.name AS category
FROM film f
JOIN film_category fc ON f.film_id = fc.film_id
JOIN category c ON fc.category_id = c.category_id
WHERE c.name = 'Drama' AND f.rental_rate = 2.99;

SELECT f.title, f.description, f.release_year, f.rating, f.special_features, c.name AS category, CONCAT(a.first_name, ' ', a.last_name) AS actor_name
FROM film_actor fa
JOIN actor a ON fa.actor_id = a.actor_id
JOIN film f ON fa.film_id = f.film_id
JOIN film_category fc ON f.film_id = fc.film_id
JOIN category c ON fc.category_id = c.category_id
WHERE c.name = 'Action' AND a.first_name = 'SANDRA' AND a.last_name = 'KILMER';

