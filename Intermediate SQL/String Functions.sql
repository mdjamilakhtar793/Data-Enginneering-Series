use parks_and_recreation;
# String Functions


select first_name ,length(first_name)
from employee_demographics order by 2;
 
 select trim("       Jamil         ");
 
 # Substring 
select first_name ,left(first_name,4), right(first_name,4),
substring(first_name,3,2),birth_date, substring(birth_date,6,2)
from employee_demographics;

select first_name,replace(first_name,'a',"z")
from employee_demographics;
 

 