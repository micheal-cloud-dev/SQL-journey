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

-- View --> duplicate table
-- -->it's automatically updated, when original table updated;

create view details as
select s_name, class from class;

select * from details;

create view fees_details as 
select roll_int , fees from class; 

select * from fees_details
order by fees;

select fees from fees_details
where fees > 1500;

-- Order By
select * from class
order by fees;

select * from class;
