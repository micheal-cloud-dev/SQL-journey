
create database stores;
use stores;

create table product(
  p_id int,
  p_name varchar(20 not null,
  prize decimal(4,2)
);
select * from product;

insert into product(p_id,prize)
values (1 , 45.50);

insert into product
values( 2," ", 50.40);

drop table product;

alter table product
modify p_name varchar(20) not null;
