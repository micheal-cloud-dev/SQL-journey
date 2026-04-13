create database company;
use company;
create table employees
(
    e_id int primary key auto_increment,
    e_name varchar(20)not null,
    e_age int not null,
    e_salary int
);
insert into employees(e_name,e_age,e_salary)
values( "Micheal", 18 , 30000),
	  ( "Edison" , 20 , 50000),
      ( "joson" , 22 , 80000);
      
select * from employees;
describe employees;

-- count function
select count(e_name) as name from employees;

-- max function
select max(e_salary) as salary from employees
where e_salary > 40000;

-- min function
select min(e_age) as Age from employees;

-- sum function
select sum(e_salary) as total from employees
where e_salary >= 30000;

-- avg function
select avg(e_salary) as average_Age from employees
where e_salary >= 30000;


