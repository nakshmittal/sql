use sakila;
CREATE TABLE Employes(
EMP_ID INT PRIMARY KEY,
NAME VARCHAR(50),
DEPARTMENT VARCHAR(50),
SALARY INT,
MANAGER_ID INT);

INSERT INTO Employes (EMP_ID, NAME, DEPARTMENT, SALARY, MANAGER_ID) VALUES
(101, 'Alice', 'HR', 50000, NULL),
(102, 'Bob', 'IT', 80000, 101),
(103, 'Charlie', 'IT', 75000, 101),
(104, 'Diana', 'Finance', 90000, NULL),
(105, 'Eve', 'HR', 48000, 101),
(106, 'Frank', 'Finance', 95000, 104),
(107, 'Grace', 'IT', 82000, 101);



select * from employes;
select avg(salary) from employes;

select * from employes where salary > (select avg(salary) from employes);


select max(salary) from employes;

select * from employes where salary = (select max(salary) from employes);

select salary from employes where emp_id=101;

select * from employes where salary >(select salary from employes where emp_id=101);
select min(salary) from employes;
select department from employes where salary = (select min(salary) from employes);



select  department from employes where name = 'Alice' or name = 'Bob';
select * from employes where department in (select  department from employes where name = 'Alice' or name = 'Bob');


select salary from employes where emp_id=103 or emp_id = 107;

select * from employes where salary not in  (select salary from employes where emp_id=103 or emp_id = 107);


select salary from employes where emp_id=103 or emp_id = 107;


select * from employes where salary  > any  (select salary from employes where emp_id=103 or emp_id = 107);
select salary from employes where department= 'IT';

select * from employes where salary  > any  (select salary from employes where emp_id=103 or emp_id = 107);

select * from employes where salary > all (select salary  from employes where department= 'IT');


-- q1 

select salary from employes where emp_id = 101;
select * from employes where department = 'IT' and salary >(select salary from employes where emp_id = 101);

-- q2
select salary from employes where department  in ('HR','IT');
select name from employes where salary > all (select salary from employes where department  in ('HR','IT'));

-- q3
select salary from employes where manager_id = 101;
select emp_id,  name from employes where salary > any (select salary from employes where manager_id = 101);

-- q4
select max(salary)from employes; 
select max( salary) from employes where salary <  (select max(salary)from employes); 