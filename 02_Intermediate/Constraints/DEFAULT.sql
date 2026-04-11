create database stores;
use stores;

create table product(
 P_id int,
 p_name varchar(20),
 P_prize decimal(4,2) default 30
);
insert into product(p_id , p_name)
values( 1 , "coconut oil" );

select * from product;

drop table product;

alter table product
alter p_prize set default 30;

insert into product(p_id , p_name)
values( 1 , "coconut oil" );

