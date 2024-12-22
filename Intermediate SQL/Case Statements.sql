use parks_and_recreation;

select first_name,last_name,age,
case 
when age<=30 then "Young"
when age between 31 and 50 then "Old"
when age>= 50 then "On Death's Door"
end as Age_Bracket
from employee_demographics;

-- <50000=5%
-- >50000=7%
-- Finance = 10% Bonus
select first_name,last_name, salary,
case
	when salary < 50000 then salary *1.05
    when salary < 50000 then salary *1.07
end as New_Salary,
case
	when dept_id = 6 then salary * 0.10
end as Bonus
from employee_salary;

select * from employee_salary;
select * from parks_departments;


# For Finance



