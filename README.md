# SQL ASSIGNMENT

## Question 1

I have used the ```CASE``` function to assign 1 to the particular gender in consideration and 0 to everything else. Later, I have used the ```SUM``` function over the output of case to find the count.

**Create Table**
```
CREATE TABLE employees(
empid INT NOT NULL PRIMARY KEY,
name VARCHAR(20),
gender VARCHAR(10),
department VARCHAR(20)
);
```

<p align=center>
<img src="https://github.com/aayusss2101/SQL-ASSIGNMENT/blob/main/Screenshots/q1%20table.png" height="250px" width="400px">
</p>

**Insert Values**
```
INSERT INTO employees VALUES 
(1,"X","Female","Finance"), 
(2,"Y","Male","IT"), 
(3,"Z","Male","HR"), 
(4,"W","Female","IT");

SELECT * FROM employees;
```
<p align=center>
<img src="https://github.com/aayusss2101/SQL-ASSIGNMENT/blob/main/Screenshots/q1%20value.png" height="400px" width="400px">
</p>

**Solution**
```
SELECT DISTINCT department, (
SELECT SUM(
CASE 
WHEN gender="Male" THEN 1 
ELSE 0 
END
)
) as "Num of Male", (
SELECT SUM(
CASE
WHEN gender="Female" THEN 1 
ELSE 0 
END
)
) as "Num of Female"
FROM employees
GROUP BY department 
ORDER BY department;
```

<p align=center>
<img src="https://github.com/aayusss2101/SQL-ASSIGNMENT/blob/main/Screenshots/q1%20output.png" height="400px" width="400px">
</p>

## Question 2

I have used the ```CASE``` function to find the largest element in the row, and similarly I have used the ```CASE``` function to find the label of the maximum value.

**Create Table**

```
CREATE TABLE salary (
name VARCHAR(20),
jan INT,
feb INT,
march INT
);
```

<p align=center>
<img src="https://github.com/aayusss2101/SQL-ASSIGNMENT/blob/main/Screenshots/q2%20table.png" height="250px" width="400px">
</p>

**Insert Values**

```
INSERT INTO salary VALUES 
("X",5200,9093,3832), 
("Y",9023,8942,4000), 
("Z", 9834,8197,9903), 
("W", 3244,4321,0293);

SELECT * FROM salary;
```

<p align=center>
<img src="https://github.com/aayusss2101/SQL-ASSIGNMENT/blob/main/Screenshots/q2%20value.png" height="400px" width="400px">
</p>

**Solution**

```
SELECT name, 
CASE
WHEN jan>feb AND jan>march THEN jan 
WHEN feb>march THEN feb 
ELSE march 
END AS "Value", 
CASE
WHEN jan>feb AND jan>march THEN "Jan" 
WHEN feb>march THEN "Feb" 
ELSE "Mar" 
END AS "Month" 
FROM salary;
```

<p align=center>
<img src="https://github.com/aayusss2101/SQL-ASSIGNMENT/blob/main/Screenshots/q2%20output.png" height="400px" width="400px">
</p>

## Question 3

I have made use of the ```GROUP_CONCAT``` function to find coalesce the rows resulting from the ```GROUP BY``` clause. To find the rank, I have made use of the ```RANK()``` function.

**Create Table**

```
CREATE TABLE test (
candidate_id INT,
marks INT,
PRIMARY KEY(candidate_id)
);
```

<p align=center>
<img src="https://github.com/aayusss2101/SQL-ASSIGNMENT/blob/main/Screenshots/q3%20table.png" height="250px" width="400px">
</p>

**Insert Values**

```
INSERT INTO test VALUES
(1,98),
(2,78),
(3,87),
(4,98),
(5,78);

SELECT * FROM test;
```

<p align=center>
<img src="https://github.com/aayusss2101/SQL-ASSIGNMENT/blob/main/Screenshots/q3%20values.png" height="400px" width="400px">
</p>

**Solution**

```
SELECT DISTINCT marks "Marks", 
RANK() OVER (ORDER BY marks DESC) AS "Rank", 
GROUP_CONCAT(candidate_id) AS "Candidate_ID" 
FROM test 
GROUP BY marks 
ORDER BY marks DESC;
```

<p align=center>
<img src="https://github.com/aayusss2101/SQL-ASSIGNMENT/blob/main/Screenshots/q3%20output.png" height="400px" width="400px">
</p>

## Question 4

I have first used a subquery to find the least **candidate_id** for each unique email by the help of ```MIN``` function and ```GROUP BY``` clause. Later, using the result from the subquery, I display only the rows for which the candidate_id is present in the result. I have used the ```IN``` operator to check this. To delete the duplicate the elements, I have used a subquery inside a subquery to find the duplicate rows in the ```DELETE``` statement. I have used the same logic as in the select query just using ```NOT IN``` instead of ```IN```.

**Create Table**

```
CREATE TABLE detail(
candidate_id INT NOT NULL PRIMARY KEY,
email VARCHAR(100)
);
```

<p align=center>
<img src="https://github.com/aayusss2101/SQL-ASSIGNMENT/blob/main/Screenshots/q4%20table.png" height="250px" width="400px">
</p>

**Insert Values**

```
INSERT INTO detail VALUES
(45, "abc@gmail.com"),
(23, "def@yahoo.com"),
(34, "abc@gmail.com"),
(21, "bcf@gmail.com"),
(94, "def@yahoo.com");

SELECT * FROM detail;
```

<p align=center>
<img src="https://github.com/aayusss2101/SQL-ASSIGNMENT/blob/main/Screenshots/q4%20values.png" height="400px" width="400px">
</p>

**Solution**

```
SELECT * FROM detail 
WHERE candidate_id IN ( 
SELECT MIN(candidate_id) FROM detail GROUP BY email 
) 
ORDER BY candidate_id DESC;
```

<p align=center>
<img src="https://github.com/aayusss2101/SQL-ASSIGNMENT/blob/main/Screenshots/q4%20output.png" height="400px" width="500px">
</p>

```
DELETE FROM detail 
WHERE candidate_id NOT IN ( 
SELECT c FROM  ( 
SELECT MIN(candidate_id) c FROM detail GROUP BY email 
) a 
);

SELECT * FROM detail;
```
