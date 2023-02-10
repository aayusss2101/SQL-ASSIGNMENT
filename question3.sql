create table test (
candidate_id int,
marks int,
primary key(candidate_id)
);

insert into test values
(1,98),
(2,78),
(3,87),
(4,98),
(5,78);

select * from test;

select distinct marks "Marks", 
rank() over (order by marks desc) as "Rank", 
group_concat(candidate_id) as "Candidate_ID" 
from test 
group by marks 
order by marks desc;

