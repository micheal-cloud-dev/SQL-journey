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
      ("Edison", 20);
      
-- create another table to run the foreign key

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
      
/* c_id is a primary key in customers table,
   but heare we repeating same c_id and null value,
   primary key rules are not required in foreign key*/
   
insert into transactions( amount , c_id )
values( 95 , 102 );
insert into transactions( amount , c_id )
values( 95 , null);

select * from transactions;

drop table transactions;

-- drop foreign key

alter table transactions
drop foreign key transactions_ibfk_1;   
     
-- add foreign key on excisting table

alter table transactions
add constraint fk_c_id 
foreign key(c_id) references customers(c_id);

