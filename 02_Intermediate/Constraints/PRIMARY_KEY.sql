create database management;
use management;

create table transactions(
  t_id int primary key auto_increment,
  amount decimal(6,2)
);
select * from transactions;

insert into transactions(amount)
values( 1, 40.5 ),
	  ( 1, 60.50);

insert into transactions(amount)
values( 100.20 ),
      ( 200.20 );

drop table transactions;

alter table transactions
add constraint primary key(t_id);

alter table transactions
modify t_id int auto_increment;


