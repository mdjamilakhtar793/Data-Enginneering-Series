use dataengineer;
create table limitalias(
id int primary key,
name varchar(50),
age int not null
);

select * from empDemo
order by age desc
limit 2,1;

-- aliasing 

select gender, avg(age) as avg_age
from empDe group by gender
having avg_age >40;