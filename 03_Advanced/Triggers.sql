create database company;
use company;

create table employees
(
  id int primary key auto_increment,
  e_name varchar(25),
  salary int,
  age int
);

insert into employees(e_name,salary,age)
values( "Pandi", 20000 , 18 ),
	  ( "santhose",18000,20),
      ( "godwin", 30000, 17 );
      
select * from employees;


-- BEFORE INSERT DATA TO TRIGGER
delimiter //

create trigger before_insert_employee
before insert on employees
for each row
begin
     set new.salary = IFNULL(new.salary,10000);
end //

delimiter ;


insert into employees(e_name,age)
values( "viju" , 19 );

-- BEFORE UPDATE DATA TO TRIGGER

delimiter //

create trigger before_update_employee
before update on employees
for each row
begin
     set new.salary = old.salary * 1.10;
end //

delimiter ;

update employees
set salary = 20000
where id = 1;
