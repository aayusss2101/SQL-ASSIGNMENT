# SQL ASSIGNMENT

## Question 1

**Create Table**
```
create table employees(
empid int not null primary key,
name varchar(20),
gender varchar(10),
department varchar(20)
);
```

<p align=center>
<img src="https://github.com/aayusss2101/SQL-ASSIGNMENT/blob/main/Screenshots/q1%20table.png" height="250px" width="400px">
</p>

**Insert Values**
```
insert into employees values 
(1,"X","Female","Finance"), 
(2,"Y","Male","IT"), 
(3,"Z","Male","HR"), 
(4,"W","Female","IT");

select * from employees;
```
<p align=center>
<img src="https://github.com/aayusss2101/SQL-ASSIGNMENT/blob/main/Screenshots/q1%20value.png" height="400px" width="400px">
</p>

**Solution**
```
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
```

<p align=center>
<img src="https://github.com/aayusss2101/SQL-ASSIGNMENT/blob/main/Screenshots/q1%20output.png" height="400px" width="400px">
</p>

## Question 2

**Create Table**

```
create table salary (
name varchar(20),
jan int,
feb int,
march int
);
```

<p align=center>
<img src="https://github.com/aayusss2101/SQL-ASSIGNMENT/blob/main/Screenshots/q2%20table.png" height="250px" width="400px">
</p>

**Insert Values**

```
insert into salary values 
("X",5200,9093,3832), 
("Y",9023,8942,4000), 
("Z", 9834,8197,9903), 
("W", 3244,4321,0293);

select * from salary;
```

<p align=center>
<img src="https://github.com/aayusss2101/SQL-ASSIGNMENT/blob/main/Screenshots/q2%20value.png" height="400px" width="400px">
</p>

**Solution**

```
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
```

<p align=center>
<img src="https://github.com/aayusss2101/SQL-ASSIGNMENT/blob/main/Screenshots/q2%20output.png" height="400px" width="400px">
</p>

## Question 3

**Create Table**

```
create table test (
candidate_id int,
marks int,
primary key(candidate_id)
);
```

<p align=center>
<img src="https://github.com/aayusss2101/SQL-ASSIGNMENT/blob/main/Screenshots/q3%20table.png" height="250px" width="400px">
</p>

**Insert Values**

```
insert into test values
(1,98),
(2,78),
(3,87),
(4,98),
(5,78);

select * from test;
```

<p align=center>
<img src="https://github.com/aayusss2101/SQL-ASSIGNMENT/blob/main/Screenshots/q3%20values.png" height="400px" width="400px">
</p>

**Solution**

```
select distinct marks "Marks", 
rank() over (order by marks desc) as "Rank", 
group_concat(candidate_id) as "Candidate_ID" 
from test 
group by marks 
order by marks desc;
```

<p align=center>
<img src="https://github.com/aayusss2101/SQL-ASSIGNMENT/blob/main/Screenshots/q3%20output.png" height="400px" width="400px">
</p>

## Question 4

**Create Table**

```
create table detail(
candidate_id int not null primary key,
email varchar(100)
);
```

<p align=center>
<img src="https://github.com/aayusss2101/SQL-ASSIGNMENT/blob/main/Screenshots/q4%20table.png" height="250px" width="400px">
</p>

**Insert Values**

```
insert into detail values
(45, "abc@gmail.com"),
(23, "def@yahoo.com"),
(34, "abc@gmail.com"),
(21, "bcf@gmail.com"),
(94, "def@yahoo.com");

select * from detail;
```

<p align=center>
<img src="https://github.com/aayusss2101/SQL-ASSIGNMENT/blob/main/Screenshots/q4%20values.png" height="400px" width="400px">
</p>

**Solution**

```
select * from detail 
where candidate_id in ( 
select min(candidate_id) from detail group by email 
) 
order by candidate_id desc;
```

<p align=center>
<img src="https://github.com/aayusss2101/SQL-ASSIGNMENT/blob/main/Screenshots/q4%20output.png" height="400px" width="500px">
</p>
