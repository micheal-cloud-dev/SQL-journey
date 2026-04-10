
create database stores;
use stores;

create table product(
  p_id int,
  p_name varchar(20),
  prize decimal(4,2),
  constraint check_prize check(prize < 100)
);
select * from product;

insert into product
values (1 , "rice", 45.50);

insert into product
values( 2,"wheat", 250.00);

alter table product
drop constraint check_prize;

drop table product;

alter table product
add constraint check_prize check(prize < 100);
