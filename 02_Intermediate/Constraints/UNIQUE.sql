
create database stores;
use stores;

create table product(
  p_id int,
  p_name varchar(20)unique,
  prize decimal(4,2)
);
select * from product;

insert into product
values (1 , "rice" , 45.50);

insert into product
values( 2 , "rice" , 50.40);

drop table product;

alter table product
add constraint unique(p_name);
