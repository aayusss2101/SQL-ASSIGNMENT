## Peer Review

<br/>

### Jasveen Kohli

<br/>

**Question 1**
- He has created the table ***employees***, given it the characteristics ***emp_name***, ***gender*** and ***department***, and then added entries to it using ***emp_id*** as the primary key.
- He has selected ```DISTINCT``` ***department*** column as the first column.
- To determine the number of male employees, he has used the aggregate function ```SUM``` and ```CASE``` statement in the second column. When **Male** is found in the ***gender*** column, he returned 1 in the ```CASE``` statement.
- For the third column, he has used a similar approach as in the second column, returning 1 in the ```CASE``` statement whenever **Female** is encountered.
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
- He has created the table record with candidate_id as primary key and email as another attribute and inserted values into it.
- He has used the MIN() function to calculate the minimum candidate_id from detail. He has given this column an alias name of Candidate_ID.
- For the second column, he has selected the email column.
- He has used GROUP BY clause to group the output by the email column.
- He has used ORDER BY clause to display table in descending order according to Candidate_ID.

<br/>

### Shishir Singh

<br/>

**Question 1**

<br/>

**Question 2**

<br/>

**Question 3**

<br/>

**Question 4**

<br/>
