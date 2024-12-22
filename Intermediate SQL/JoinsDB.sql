use `parks_and_recreation`;

select * from employee_demographics;
select * from employee_salary;


# Inner Joins it comes all Outer Joins

select * from employee_demographics as ed
inner join employee_salary as es
on ed.employee_id=es.employee_id;

# Left Joins
select * from employee_demographics as ed
left join employee_salary as es
on ed.employee_id=es.employee_id;

# Right Joins
select * from employee_demographics as ed
right join employee_salary as es
on ed.employee_id=es.employee_id;

# self Joins
select * from employee_salary emp1
join employee_salary emp2
on emp1.employee_id=emp2.employee_id;

# Multiple Joins Tab;;es togethers
select * from employee_demographics as ed
inner join employee_salary as es
on ed.employee_id=es.employee_id
inner join parks_departments as pd
on es.dept_id=pd.department_id;
