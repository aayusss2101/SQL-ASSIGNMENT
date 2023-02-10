create table salary (
name varchar(20),
jan int,
feb int,
march int
);

insert into salary values 
("X",5200,9093,3832), 
("Y",9023,8942,4000), 
("Z", 9834,8197,9903), 
("W", 3244,4321,0293);

select * from salary;

select name, 
case 
when jan>feb and jan>march then jan 
when feb>march then feb 
else march 
end as "Value", 
case 
when jan>feb and jan>march then "Jan" 
when feb>march then "Feb" 
else "Mar" 
end as "Month" 
from salary;

