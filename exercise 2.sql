USE sakila;

SELECT rental_duration, COUNT(film_id)
FROM film
GROUP BY rental_duration HAVING COUNT(film_id) > 200;

SELECT DATE(create_date) AS 'Account Creation Date'
FROM customer
WHERE first_name = 'JARED' AND last_name = 'ELY';

SELECT DAY(CURDATE()) AS 'Day', MONTH(CURDATE()) AS 'Month', YEAR(CURDATE()) AS 'Year';

SELECT DATEDIFF('2023-12-31', CURDATE()) AS 'Days until End of the Year';

SELECT a1.actor_id, a1.first_name, a1.last_name AS 'Last Name of First Actor',
       a2.actor_id, a2.last_name AS 'Last Name of Second Actor'
FROM actor a1
JOIN actor a2 ON a1.first_name = a2.first_name AND a1.actor_id != a2.actor_id;