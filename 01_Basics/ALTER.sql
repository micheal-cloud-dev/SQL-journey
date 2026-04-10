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

