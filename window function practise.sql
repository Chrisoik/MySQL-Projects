select gender, avg(salary)
from employee_demographics dem
join employee_salary sal
	on dem.employee_id = sal.employee_id 
group by gender;
#gia na doume tin diafora me to group by

select gender, avg(salary) over(partition by gender)
from employee_demographics dem
join employee_salary sal
	on dem.employee_id = sal.employee_id;
    
select dem.first_name, dem.last_name, gender, salary, sum(salary) over(partition by gender order by dem.employee_id) as rolling_total
from employee_demographics dem
join employee_salary sal
	on dem.employee_id = sal.employee_id;
#ousiastika prosthetoi ta posa gia na parei to sum 

select dem.employee_id, dem.first_name, dem.last_name, gender, salary,
row_number() over()
from employee_demographics dem
join employee_salary sal
	on dem.employee_id = sal.employee_id;
    
select dem.employee_id, dem.first_name, dem.last_name, gender, salary,
row_number() over(partition by gender order by salary )
from employee_demographics dem
join employee_salary sal
	on dem.employee_id = sal.employee_id;