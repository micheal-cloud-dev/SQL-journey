create database company;
use company;

create table employee(
id int,
emp_name varchar(15),
skills varchar(25),
experiance varchar(20)
);

alter table employee
add contact varchar(10);

insert into employee
values
	 ( 1 , "Micheal" , "fullstack"  , " 2_years" , "9082697041"),
     ( 2 , "Edison" , "cloud dev" , "1_year" , "9788913811"),
     ( 3 , "watson" , "frontend" , "3_year" , "8883080013" );

select * from employee
 where  emp_name = "watson";
 
 select * from employee
  where id = 1 AND skills = "fullstack";


