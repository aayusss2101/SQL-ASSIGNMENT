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

DELETE FROM detail 
  WHERE candidate_id NOT IN ( 
    SELECT c FROM  ( 
      SELECT MIN(candidate_id) c FROM detail GROUP BY email 
    ) a 
  );

SELECT * FROM detail;
