use parks_and_recreation; 
delimiter $$
create procedure large_salaries2()
begin
	select * 
    from employee_salary
	where salary>=50000;
    select * 
    from employee_salary
	where salary>=10000;
end $$
delimiter ;
call large_salaries2();

delimiter $$
create procedure large_salaries4(employee_id int)
begin
	select salary
    from employee_salary
    where employee_id=employee_id;
end $$
delimiter ;

call large_salaries4(1);