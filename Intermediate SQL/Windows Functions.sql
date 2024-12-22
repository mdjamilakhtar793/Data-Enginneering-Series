use parks_and_recreation;

select dem.first_name, dem.last_name , avg(salary) 
over(partition by gender)
from  employee_demographics dem
join employee_salary sal 
on dem.employee_id=sal.employee_id;

select dem.first_name, dem.last_name, gender,salary,
sum(salary) 
over(partition by gender  order by dem.employee_id) as Rolling_Total
from  employee_demographics dem
join employee_salary sal 
on dem.employee_id=sal.employee_id;


# this is Windows function syntax
-- function_name ([expression])
-- OVER (
--     [PARTITION BY column]
--     [ORDER BY column]
--     [ROWS or RANGE clause]
-- )

select dem.employee_id,dem.first_name, dem.last_name, gender,salary,
row_number() over(partition by  gender order by salary desc) as row_num,
rank() over(partition by  gender order by salary desc) as rank_num,
dense_rank() over(partition by  gender order by salary desc) as dens_num
from  employee_demographics dem
join employee_salary sal 
on dem.employee_id=sal.employee_id;

#Example 1: Ranking Employees by Salary
SELECT
    employee_id,
    department_id,
    salary,
    RANK() OVER (PARTITION BY department_id ORDER BY salary DESC) AS rank
FROM employees;

#Example 2: Running Total
SELECT
    sales_id,
    sales_date,
    amount,
    SUM(amount) OVER (ORDER BY sales_date) AS running_total
FROM sales;

#Example 3: Finding the Difference Between Current and Previous Row
SELECT
    sales_id,
    amount,
    LAG(amount) OVER (ORDER BY sales_date) AS previous_amount,
    amount - LAG(amount) OVER (ORDER BY sales_date) AS difference
FROM sales;





