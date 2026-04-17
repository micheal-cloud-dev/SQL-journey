create database hospital;
use hospital;
create table patients
(
  id int primary key auto_increment,
  p_name varchar(20),
  amount int,
  a_date date
);
insert into patients (p_name,amount,a_date)
values ( "louis" , 2500 , "2026-04-16"),
       ( "gokul" , 1000 , "2025-01-10"),
       ( "watson" ,2000 , "2025-01-10"),
       ( "gilson" ,950 , "2024-01-13");

-- ROW_NUMBER()  --> instead we can use *
select p_name,amount,a_date,
row_number() over(order by a_date) as rowNumber 
from patients; 
-- output ---> 1 2 3 4 


-- RANK()
select p_name,amount,a_date,
rank() over(order by a_date) as rankOFF
from patients;
-- output ---> 1 2 2 4

-- DENSE_RANK
select * ,
dense_rank() over(order by a_date)
from patients;
-- output ---> 1 2 2 3

