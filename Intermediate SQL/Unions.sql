use parks_and_recreation;

select  first_name,last_name
from employee_demographics
union -- all distinct
select  first_name,last_name
from employee_salary;

 select first_name,last_name, "Old" as Label
 from employee_demographics
 where age>50  and gender="Male"
 union
 select first_name,last_name, "Highest" as Label
 from employee_salary
 where salary>70000
 order by first_name,last_name
 ;
