#triggers
delimiter $$
create trigger employee_insert
	after insert on employee_salary
    for each row 
begin
	insert into employee_demographics (employee_id, first_name, last_name)
    values (new.employee_id, new.first_name, new.last_name);
end $$
delimiter ;
#anti insert mporoume na kanoume delete kai anti new grafoume old

insert into employee_salary (employee_id, first_name, last_name, occupation, salary, dept_id)
values ( 13, 'jean', 'hold', 'ceo', 250000, null);

select * from employee_demographics;

#events
select * from employee_demographics;

delimiter $$
create event delete_retitrees
on schedule every 30 second
do 
begin
	delete
    from employee_demographics
    where age >= 60;
end $$
delimiter ;

show variables like 'event%';
