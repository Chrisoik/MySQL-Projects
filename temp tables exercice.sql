create temporary table temp_table
(first_name varchar(50),
last_name varchar(50),
favorite_movie varchar(100)
);

insert into temp_table
values ('chris', 'oikonomou', 'harry potter');

select * from temp_table;

create temporary table salary_over_50k
select * from employee_salary
where salary >= 50000;
#kapos etsi kanoume temp tables pairnontas stoixia apo idi iparxonta pinaka
select * from salary_over_50k;

