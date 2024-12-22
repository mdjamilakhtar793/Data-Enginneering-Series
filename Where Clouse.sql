use dataengineer;

create table WhereClouse(
id int primary key,
name varchar(50),
age int not null
);
# It alsofollows PEMDAS
select * from employess
where salary>50000 
and name="first_value"
or not gender = "male";

# Like statements use for spacific elements
select * from Emp
where firstName like "%Jam%" or 
# birth_date like '1989__%'

