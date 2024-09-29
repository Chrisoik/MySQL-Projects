select first_name, last_name,
case
	when age <= 30 then 'young'
    when age between 31 and 50 then 'old'
    when age >= 50 then 'very old'
end as age
from employee_demographics;

# an sal < 50000 increase 5%
# an sal > 50000 increase 7%
# an finance dept bonus 10%

select first_name, last_name, salary,
case
	when salary < 50000 then salary * 1.05 
    when salary > 50000 then salary * 1.07
end as new_salary,
case
when dept_id = 6 then salary * .10
end as bonus
from employee_salary;
