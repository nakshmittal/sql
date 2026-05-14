use sakila ;
select * from employes;

create table departments (dept_id int, dept_name varchar(20), location varchar(20));

insert into departments values (10,'HR','mumbai'), (20,'IT', 'banglore'), (30 , 'finance','delhi');

select * from departments;

select  dept_name  from departments  where location  in ('banglore' , 'delhi');

select * from employes where department in (select  dept_name  from departments  where location  in ('banglore' , 'delhi'));

SELECT salary,  DEPARTMENT
FROM EMPLOYES
WHERE DEPARTMENT IN (SELECT DEPARTMENT FROM EMPLOYES
GROUP BY DEPARTMENT
HAVING AVG(SALARY) >70000);


select avg(salary) from employes where department = 'HR';
select avg(salary) from employes where department = 'IT';
-- Q 
SELECT * from employes as e where  salary > (
select avg(salary) from employes where department = e.department);

-- Q 
select max(salary) from employes ;
SELECT * from employes as e where  salary =  (select max(salary) from employes where department = e.department);

-- Q

SELECT * from employes as e where  salary > 70000  and department = e.department;

select distinct department from employes as e where 70000<= all ( select salary from employes where department = e.department);