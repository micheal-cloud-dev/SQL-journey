create database bills;
use bills;
create table patients
(
  id int primary key auto_increment,
  e_name varchar(20),
  amount int,
  p_date date
);
insert into patients(e_name, amount , p_date)
values( "abishek" , 20000 , "2025-10-21" ),
      ( "gokul" , 25000 ,"2015-10-21"),
      ( "abishek" , 30000, "2025-10-21"),
      ( " judson", 35000, "2009-10-07");

-- group by  --> it filter the column;
select sum(amount),p_date from patients
group by p_date
having sum(amount) > 3000;

/*in GROUP BY we not use where condition,
 instead of that we use HAVING*/
  
-- not use * 

select count(amount),e_name from patients
group by e_name
having count(amount) = 2;
