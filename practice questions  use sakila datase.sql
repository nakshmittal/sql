use sakila ;

select* from actor ;
select * from film_actor;
select * from film;
-- Q1
select a. actor_id ,CONCAT (a.first_name ,' ', a.last_name ) as  full_name,  fa.film_id from actor as a join film_actor as fa where a.actor_id = fa.actor_id;
-- Q2
select fa.film_id, f.title, fa.actor_id from film_actor as fa join film as f on  fa.film_id = f.film_id   ;
-- Q3
select a.actor_id, CONCAT(a.first_name, ' ', a.last_name) AS actor_name, f.title
from actor as a join film_actor as fa on  a.actor_id = fa.actor_id join film as f  ON fa.film_id = f.film_id;
-- Q4
SELECT a.actor_id, CONCAT(a.first_name, ' ', a.last_name) AS actor_name,f.length
FROM actor a JOIN film_actor fa  ON a.actor_id = fa.actor_id
JOIN film f ON fa.film_id = f.film_id WHERE f.length > 120;
-- Q5

SELECT a.actor_id, CONCAT(a.first_name, ' ', a.last_name) AS actor_name, COUNT(fa.film_id) AS total_movies
FROM actor a JOIN film_actor fa ON a.actor_id = fa.actor_id GROUP BY a.actor_id, actor_name;

-- Q6


SELECT f.title, COUNT(fa.actor_id) AS total_actors FROM film f JOIN film_actor fa
ON f.film_id = fa.film_id GROUP BY f.film_id, f.title;

