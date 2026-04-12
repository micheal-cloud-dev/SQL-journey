create database store;
use store;
create table customers
(
   c_id int primary key auto_increment,
   c_name varchar(25),
   c_age int
);

alter table customers
auto_increment = 101;

select * from customers;

insert into customers(c_name,c_age)
values("micheal",18),
      ("Edison", 20),
      ( "sql" , 25),
      ( "java" , 30);

create table transactions
(
  t_id int primary key auto_increment,
  amount decimal(6,2),
  c_id int not null, 
  foreign key(c_id) references customers(c_id)
);

insert into transactions( amount , c_id )
values( 45.20 , 101 ),
	  ( 50.20 , 101 );
      
insert into transactions( amount , c_id )
values( 95 , 102 );
insert into transactions( amount , c_id )
values( 95 , null);

select * from transactions;

drop table transactions;

alter table transactions
drop foreign key transactions_ibfk_1;   

alter table transactions
add constraint fk_c_id 
foreign key(c_id) references customers(c_id);

-- INNER JOIN

select * from transactions inner join customers
on transactions.c_id = customers.c_id;
