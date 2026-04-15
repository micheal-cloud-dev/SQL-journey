create database school;
use school;
create table class
(
   roll_int int primary key auto_increment,
   s_name varchar(20),
   class varchar(5),
   fees int
);

alter table class
auto_increment=101;

insert into class(s_name,class,fees)
values( "gokul" , "10th" , 2500),
	  ( " gilson" , "11th", 1500),
      ( "mugesh" , "12th",1000);

-- to view the index
show indexes from class;

select * from class
where roll_int = 103;

-- create own index
create index name_idx
on class(s_name);

select * from class
where s_name = "gilson";

-- multiple index
create index name_idex
on class( s_name , class);

select * from class
where s_name = "gokul" and class = "10th";

-- drop index
alter table class
drop index name_idx;
