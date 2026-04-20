create database school_DB;
use school_DB;

set autocommit = 0;

-- TABLE STUDENTS
create table students
(
  student_id int primary key auto_increment,
  name varchar (50),
  dob date,
  class_id int,
  contact varchar(10)
);

-- TABLE TEACHERS
create table teachers
(
  teacher_id int primary key auto_increment,
  name varchar(50),
  subject varchar(25)
);

-- TABLE CLASSES
create table classes
(
 class_id int primary key auto_increment,
 class_name varchar(15),
 teacher_id int,
 foreign key (teacher_id) references teachers(teacher_id)
);

-- TABLE MARKS
create table marks
(
  mark_id int primary key auto_increment,
  student_id int,
  subject varchar(25),
  mark int,
  foreign key (student_id) references students(student_id)
);

-- TABLE ATTENDANCE
create table attendance
(
  attendance_id int primary key auto_increment,
  student_id int,
  date DATE,
  status varchar(10),
  foreign key (student_id) references students(student_id)
);

-- DATA ADDED TO STUDENTS TABLE
insert into students(name,dob,class_id,contact)
values( "Arun","2007-09-15", 1 , "1234567890" ),
      ( "subash","2007-02-25", 2 , "1234876890" ),
      ( "kurnal","2008-09-15", 3, "3334567890" ),
      ( "rahul","2007-11-10", 1 , "1231237890" ),
      ( "david","2008-05-15", 1 , "9084567890" );
      
  -- DATA ADDED TO TEACHERS TABLE    
insert into teachers(name,subject)
values("micheal","science"),
      ("watson","maths"),
      ("dhoni" , "social");
 
 -- DATA ADDED TO CLASSES TABLE
insert into classes(class_name,teacher_id)
values("10th" , 1 ),
	  ("11th" , 2 ),
      ("12th" , 3 );
  
 -- DATA ADDED TO MARKS TABLE 
insert into marks(student_id,subject,mark)
values( 1 , "maths" , 99 ),
      ( 2 , "science", 78),
	  ( 1 , "social" , 88),
      ( 2 , "maths" , 72 );
  
-- DATA ADDED TO ATTENDANCE TABLE  
insert into attendance(student_id,date,status)
values( 1 , "2026-04-01" , "present" ),
      ( 3, "2026-04-01" , "absent" ),
      ( 2 , "2026-04-01" , "present" ),
      ( 1 , "2026-04-02" , "absent" );
      
 -- QUERIES
 
select * from students;
select * from teachers;
select * from classes;
select * from attendance;

select * from students
where class_id = 1;

select * from students 
order by name;

select * from students
limit 3;

-- JOINS

select s.name , c.class_name from students s
join classes c on 
s.class_id = c.class_id;

select c.class_name,t.name as teacher_name from classes c
join teachers t on
c.teacher_id = t.teacher_id;

-- GROUP BY

select class_id , count(*) as total_students
from students
group by class_id;

select subject , avg(mark) as avg_mark
from marks
group by subject;

select student_id,mark from marks
where mark > (select avg(mark) from marks);

-- WINDOWS FUNCTION

select student_id,mark,
rank() over( order by mark desc) as "rank"
from marks;

select student_id,mark,
dense_rank() over( order by mark desc) as "dense_rank"
from marks;

select student_id,mark,
row_number() over( order by mark desc) as "row_no"
from marks;

-- CREATE VIEW

create view student_report as 
select s.name,m.subject,m.mark from students s
join marks m 
on s.student_id = m.student_id;

select * from student_report;

select * from student_report
where mark > 80;

-- STORED PROCEDURE

delimiter //
create procedure getStudentMark(in id int)
begin
     select * from marks
     where student_id = id;
end //
delimiter ;

call getStudentMark(2);


-- TRIGGERS

delimiter //
create trigger before_insert_marks
before insert on marks
for each row
begin 
	 if new.mark < 0 then
        set new.mark = 0;
	 end if ;
end // 
delimiter ;

COMMIT;
