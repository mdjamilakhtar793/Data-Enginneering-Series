use dataengineer;
create table HavingClouse(
id int primary key,
name varchar(50),
age int not null
);

-- select gender, avg(age)
-- from emp_details
-- group by gender
-- having avg(age)>40

# Having with where clouse
select accupation , avg(salary)
from exp_Sal
where accupation like '%manager'
group by accupation
having avg(salary)>75000


