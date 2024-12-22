create database dataengineer;

use dataengineer;

create table SelectQuery(
id int primary key,
name varchar(50),
age int not null
);
select * from SelectQuery;

# PEMDAS : Order operation for arithmatics or Math in SQL.
# Peranthasis, Exponent, Multiplication, Divission, Additions, Substraction
# Distinct : It Gives only Uique Value from Database