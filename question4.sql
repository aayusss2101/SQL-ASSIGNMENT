create table detail(
candidate_id int not null primary key,
email varchar(100)
);

insert into detail values
(45, "abc@gmail.com"),
(23, "def@yahoo.com"),
(34, "abc@gmail.com"),
(21, "bcf@gmail.com"),
(94, "def@yahoo.com");

select * from detail;

select * from detail 
where candidate_id in ( 
select min(candidate_id) from detail group by email 
) 
order by candidate_id desc;

