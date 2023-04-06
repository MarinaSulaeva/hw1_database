CREATE DATABASE newtableskypro;
CREATE TABLE employees1 (
                          id BIGSERIAL NOT NULL PRIMARY KEY,
                          first_name VARCHAR(50) NOT NULL,
                          last_name VARCHAR(50) NOT NULL,
                          gender VARCHAR(6) NOT NULL,
                          age INT NOT NULL
);
INSERT INTO employees1 (first_name, last_name, gender, age)
VALUES ('Alla', 'Ivanova', 'female', 30);
INSERT INTO employees1 (first_name, last_name, gender, age)
VALUES ('Anna', 'Sidorova', 'female', 41);
INSERT INTO employees1 (first_name, last_name, gender, age)
VALUES ('Ivan', 'Petrov', 'male', 52);
SELECT * FROM employees1;
UPDATE employees1 SET first_name='Victor' WHERE id=2;
UPDATE employees1 SET last_name='Nikolayev' WHERE id=2;
UPDATE employees1 SET gender='male' WHERE id=2;
UPDATE employees1 SET age=28 WHERE id=2;
SELECT * FROM employees1;
DELETE FROM employees1 WHERE id=3;
SELECT  * FROM employees1;
