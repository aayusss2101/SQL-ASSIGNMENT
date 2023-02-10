CREATE TABLE employees(
empid INT NOT NULL PRIMARY KEY,
name VARCHAR(20),
gender VARCHAR(10),
department VARCHAR(20)
);

INSERT INTO employees VALUES 
(1,"X","Female","Finance"), 
(2,"Y","Male","IT"), 
(3,"Z","Male","HR"), 
(4,"W","Female","IT");

SELECT * FROM employees;

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

