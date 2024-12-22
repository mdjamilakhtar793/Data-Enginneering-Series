use parks_and_recreation;
-- CTE  
with cteFunction (Gender, AVG_Sal) as (
select gender, avg(salary) avg_sal 
from  employee_demographics dem
join employee_salary sal 
on dem.employee_id=sal.employee_id
group by gender
)
select *
 from cteFunction;
 
 # Multiple CTE
 
with cteFunction as (
select employee_id, birth_date
from employee_demographics
where birth_date > "1885-01-01"
),
cteFunction2 as (
select * 
from employee_salary
where salary >50000
)
select *
 from cteFunction 
 join cteFunction2 
 on cteFunction.employee_id=cteFunction2.employee_id;
