select database();
use world;
show tables;
desc city; -- to see structure of table
select * from city; -- to print data of table
select name, population from city; -- to acess specific column of table
select population,name,district from city ;  -- column can be print any order
 select name, population,population+10 from city;
 
 -- query can be written ib multiple lines 
 -- sql is case sensitive
 select * from city;
 -- alias (nickname)
 
 select*,population+2+3-3+4 as "new_population" from city;
