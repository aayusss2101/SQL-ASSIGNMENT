## Peer Review

<br/>

### Jasveen Kohli

<br/>

**Question 1**
- He has created the table ***employees***, given it the characteristics ***emp_name***, ***gender*** and ***department***, and then added entries to it using ***emp_id*** as the primary key.
- He has selected ```DISTINCT``` ***department*** column as the first column.
- To determine the number of male employees, he has used the aggregate function ```SUM``` and ```CASE``` statement in the second column. When **Male** is found in the ***gender*** column, he returned 1 in the ```CASE``` statement. For this column, he has used an alias ***Num of Male***.
- For the third column, he has used a similar approach as in the second column, returning 1 in the ```CASE``` statement whenever **Female** is encountered. For this column, he has used an alias ***Num of Female***.
- He has used ```GROUP BY``` clause for grouping the table according to the ***department***.
- Finally, he has used ```ORDER BY``` clause to display table in ascending order according to ***department***.

<br/>

**Question 2**
- He has created the table ***salary*** with ***name***, ***jan***, ***feb*** and ***mar*** as attributes and inserted values into it.
- In the main query, for first column he has selected ***name*** column.
- For the second column, he has used ```CASE``` statement for finding the maximum salary between jan, feb and mar. He has given this column an alias name of ***Value***.
- For the third column, he has used ```CASE``` statement for finding the month of maximum salary between Jan, Feb and Mar. He has given this column an alias name ***Month***.

<br/>

**Question 3**
- He has created the table ***test*** with ***candidate_id*** as primary key and ***marks*** as another attribute and inserted values into it.
- In the main query, for the first column, he has selected ```DISTINCT``` ***marks*** column, with an alias name as ***Marks***.
- For the second column, he has used ```RANK()``` function over individual rows, ```ORDER BY``` ***marks*** in descending order.
- For the third column, he has used ```GROUP_CONCAT()``` function. He has used the function ```GROUP_CONCAT()``` by ***candidate_id*** for displaying multiple id of students with same marks.
- He has used ```GROUP BY``` clause for grouping the table according to ***marks***.
- He has used ```ORDER BY``` clause to display table in descending order according to ***marks***.

<br/>

**Question 4**
- He has created the table ***record*** with ***candidate_id*** as primary key and ***email*** as another attribute and inserted values into it.
- To delete the values he has made use of nested subqueries.
- Inside the inner subquery, he has used the ```MIN()``` function alongside ```GROUP BY``` clause to calculate the minimum ***candidate_id*** from ***detail*** for each ***email***.
- In the outer subquery, he has just selected the ***candidate_id(s)*** returned from the subquery.
- Finally, he has made use of the ```NOT IN``` clause to delete all the records which are not present in the result of the subquery.

<br/>

### Shishir Singh

<br/>

**Question 1**
- He has created the table ***employees***, given it the characteristics ***name***, ***gender*** and ***department***, and then added entries to it using ***empid*** as the primary key.
- He has selected ```DISTINCT``` ***department*** column as the first column.
- To determine the number of male employees, he has used the aggregate function ```SUM``` and ```CASE``` statement in the second column. When **Male** is found in the ***gender*** column, he returned 1 in the ```CASE``` statement. He has given this column an alias name of ***Num of male***.
- For the third column, he has used a similar approach as in the second column, returning 1 in the ```CASE``` statement whenever **Female** is encountered. He has given this column an alias name of ***Num of female***.
- He has used ```GROUP BY``` clause for grouping the table according to the ***department***.
- Finally, he has used ```ORDER BY``` clause to display table in ascending order according to ***department***.

<br/>

**Question 2**
- He has created the table ***salaries*** with ***name***, ***jan***, ***feb*** and ***mar*** as attributes and inserted values into it.
- In the main query, for first column he has selected ***name*** column.
- For the second column, he has used ```CASE``` statement for finding the maximum salary between jan, feb and mar. He has given this column an alias name of ***Value***.
- For the third column, he has used ```CASE``` statement for finding the month of maximum salary between Jan, Feb and Mar. He has given this column an alias name ***Month***.

<br/>

**Question 3**
- He has created the table ***test*** with ***candidate_id*** as primary key and ***marks*** as another attribute and inserted values into it.
- In the main query, for the first column, he has selected ```DISTINCT``` ***marks*** column, with an alias name as ***Marks***.
- For the second column, he has used ```RANK()``` function over individual rows, ```ORDER BY``` ***marks*** in descending order. He has given this column an alias name of ***Rank***.
- For the third column, he has used ```GROUP_CONCAT()``` function. He has used the function ```GROUP_CONCAT()``` by ***candidate_id*** for displaying multiple id of students with same marks. He has given this column an alias name of ***Candidate_ID***.
- He has used ```GROUP BY``` clause for grouping the table according to ***marks***.
- He has used ```ORDER BY``` clause to display table in descending order according to ***marks***.

<br/>

**Question 4**
- He has created the table ***candidate_Info*** with ***candidate_id*** as primary key and ***email*** as another attribute and inserted values into it.
- To delete the values he has made use of nested subqueries.
- Inside the inner subquery, he has used the ```MIN()``` function alongside ```GROUP BY``` clause to calculate the minimum ***candidate_id*** from ***detail*** for each ***email***.
- In the outer subquery, he has just selected the ***candidate_id(s)*** returned from the subquery.
- Finally, he has made use of the ```NOT IN``` clause to delete all the records which are not present in the result of the subquery.

<br/>
