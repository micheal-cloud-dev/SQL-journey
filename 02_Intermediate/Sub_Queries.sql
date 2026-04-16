create database company;
use company;
create table employees
(
  id int primary key auto_increment,
  e_name varchar(20),
  age int,
  salary int
);
insert into employees(e_name, age , salary)
values( "abishek", 22 , 20000 ),
      ( "gokul" , 24 , 25000),
      ( "watson" ,26 , 30000),
      ( " judson", 28, 35000);
      
-- sub queries

select e_name,salary from employees
where salary > (select avg(salary)from employees);

select * from employees;

select * from employees
where age < (select avg(age) from employees);

select id, e_name from employees 
where id = 
(select id from employees
where e_name = "gokul");

