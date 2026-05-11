create database  shadidb;
use shadidb;
create table biodata (id int, name varchar(20), age int);

insert into biodata values (1,'rahul',28), (2,'anjali',28), (3,'aishwarya',40),(4,'naina',23);

select * from biodata ;
 select age from biodata where name ='rahul';
 select * from biodata where age=29;
 
 
 select *  from biodata where age=(select age from biodata where name ='rahul');
 
 
 select max(age) from biodata;
 
 
 select * from biodata where age = ( select max(age) from biodata);
 
 
 select min(age) from biodata;
 
 
select * from biodata where age = ( select min(age) from biodata);
 
 
 
 
select char_length(name)  from biodata where name ='rahul';
select name, char_length(name) from biodata where char_length(name)=5;
select name, char_length(name) from biodata where char_length(name)=( select char_length(name)  from biodata where name ='rahul');


use sakila;

select * from film;

select rental_rate  from film where  title = 'AFRICAN EGG';

select  title , rental_rate from film  where rental_rate=(select rental_rate  from film where  title = 'AFRICAN EGG');

select film_id, title, rental_rate from film where rental_rate = 
(select min(rental_rate) from film);

select film_id, title, rental_duration from film where rental_duration >
(select avg(rental_duration) from film);

SELECT film_id,title FROM film WHERE release_year = ( SELECT release_year FROM film WHERE title = 'Alone Trip')
AND rating = ( SELECT rating FROM film WHERE title = 'Apollo Teen');

use shadidb;
select * from biodata;
select age from biodata where name = 'anjali' or name = 'aishwarya';
select * from biodata where name ='rahul'  and age in (select age from biodata where name = 'anjali' or name = 'aishwarya' );

