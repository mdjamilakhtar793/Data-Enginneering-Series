-- Temporary Tables 
use parks_and_recreation; 

create temporary table	temp_Table(
first_name varchar(50),
last_name varchar(50),
fav_movie varchar(50)
);

select * from temp_Table;

insert into temp_Table values(
"Md Jamil","Akhtar","Bajrangi"
);

select * from employee_salary;

create temporary table salary_over_50k
select *  from employee_salary
where salary>=50000;

select * from salary_over_50k;


