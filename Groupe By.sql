use dataengineer;
create table SelectQuery(
id int primary key,
name varchar(50),
age int not null
);

-- select occupation,salary
-- from emp_Salary
-- group by occupation,salary;
# Order by
select * from emp_Details
order by gender,age 