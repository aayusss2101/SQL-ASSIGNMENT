create table employees(
empid int not null primary key,
name varchar(20),
gender varchar(10),
department varchar(20)
);

insert into employees values 
(1,"X","Female","Finance"), 
(2,"Y","Male","IT"), 
(3,"Z","Male","HR"), 
(4,"W","Female","IT");

select * from employees;

select distinct department, (
select sum(
case 
when gender="Male" then 1 
else 0 
end
)
) as "Num of Male", (
select sum(
case 
when gender="Female" then 1 
else 0 end
)
) as "Num of Female"
from employees
group by department 
order by department;

