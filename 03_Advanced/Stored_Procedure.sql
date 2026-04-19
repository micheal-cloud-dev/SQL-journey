use hospital;

select * from patients;

-- STORED PROCEDURE
delimiter //
create procedure disply_table()
begin
     select * from patients;
end //
delimiter ;

call disply_table();


-- STORED PROCEDURE OF SINGLE INPUT
delimiter //
create procedure pass_one_input(in i_id int)
begin
     select * from patients
     where id = i_id;
end //
delimiter ;

call pass_one_input(6);

drop  procedure pass_input;


-- STORED PROCEDURE FOR TWO INPUT
delimiter //
create procedure pass_two_input(in e_id int, in rate int)
begin
     select * from patients
     where id = e_id and amount = rate;
end //
delimiter ;

call pass_two_input( 6 , 1500 );


-- STORED PROCEDURE OUTPUT
delimiter //
create procedure count_name(out e_count int)
begin
     select count(p_name)
     into e_count
     from patients;
end //
delimiter ;

call count_name(@e_count);
select @e_count;
