CREATE TABLE detail(
candidate_id INT NOT NULL PRIMARY KEY,
email VARCHAR(100)
);

INSERT INTO detail VALUES
(45, "abc@gmail.com"),
(23, "def@yahoo.com"),
(34, "abc@gmail.com"),
(21, "bcf@gmail.com"),
(94, "def@yahoo.com");

SELECT * FROM detail;

SELECT * FROM detail 
WHERE candidate_id IN ( 
SELECT MIN(candidate_id) FROM detail GROUP BY email 
) 
ORDER BY candidate_id DESC;

