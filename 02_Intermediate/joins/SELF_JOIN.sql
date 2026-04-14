create database company;
use company;
create table employees
(
   e_id int primary key auto_increment,
   e_name varchar(20),
   e_salary int,
   e_referal int
);
insert into employees(e_name,e_salary,e_referal)
values( "joson", 80000 , 2 ),
	  ( "Edison" , 400000 , 0),
      ( "judson" , 70000 , 2 );
insert into employees(e_name,e_salary,e_referal)
values( "watson", 60000 , 3),
	  ( "gilson" , 60000 , 2),
      ( "hardoson" , 50000 , 1 );

select * from employees;

-- self join
select * from employees a inner join employees b
on a.e_referal = b.e_id;
