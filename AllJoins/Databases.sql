create database AllJoins;
use AllJoins;

create table Customer(
customer_id int,
first_Name varbinary(50),
last_Name varchar(50),
address_Id int 
);

create table Payment(
payment_id int ,
amout int not null,
mode varchar(50),
payment_Mode int
);

create table Address(
address_Id int primary key,
address varbinary(50),
postal_code int not null,
phone int
);

create table Country(
c_Id int primary key,
city varbinary(50),
country varchar(50)
);



