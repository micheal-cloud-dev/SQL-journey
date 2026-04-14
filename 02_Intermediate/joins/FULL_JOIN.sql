create database company;
use company;
create table employees
(
   e_id int primary key auto_increment,
   e_name varchar(20),
   e_salary int,
   e_referal int
);
create table transactions
(
  t_id int primary key auto_increment,
  t_name varchar(20),
  t_amount int,
  e_id int,
  foreign key(e_id) references employees(e_id)
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
select * from transactions;
drop table transactions;

insert into transactions(t_name,t_amount,e_id)
values( "vinish",2500,1),
      ( "viju" , 3000,2),
      ( "sam" , 2000,null);

select * from employees left join transactions
on employees.e_id = transactions.e_id
union
select * from employees right join transactions
on employees.e_id = transactions.e_id;
