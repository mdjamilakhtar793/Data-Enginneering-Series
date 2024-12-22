use Parks_and_Recreation;

# Inner Joins
select * from employee_demographics;
select * from employee_salary;
 
select * from employee_demographics as ed
inner join employee_salary as es
on ed.employee_id=es.employee_id;

select ed.employee_id,age,occupation from employee_demographics as ed
inner join employee_salary as es
on ed.employee_id=es.employee_id;

