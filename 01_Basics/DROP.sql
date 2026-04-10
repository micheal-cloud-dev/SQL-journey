create database college;
use college;

create table students(
   reg_no int,
   s_name varchar(20),
   department varchar(20)
);
select * from students;

alter table students
add contact varchar(10);

alter table students
add sem_result varchar(5);

insert into students
values( 1 , "Micheal" , "CSE(AIML)" ),
	  ( 2 , "Edison" , "EEE" );
update students
set contact = "9082697041"
where reg_no = 1;

set sql_safe_updates=0;

update students
set contact = "9035173086"
where reg_no = 2;

alter table students
drop column sem_result;     // ---> DROP




