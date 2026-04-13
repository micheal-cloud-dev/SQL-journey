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

-- get c_date
select current_date();

-- get c_time
select current_time();

-- get c_date and c_time
select now();

-- get c_year
select year(now());

-- get c_month
select month(now());

-- get c_day
select day(now())as today_day;

-- c_hour c_min c_sec
select hour(now()) , minute(now()) , second(now());

select date_format(now(),'%d-%m-%y');



