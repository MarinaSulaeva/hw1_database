SELECT  * FROM employees1;
INSERT INTO employees1 (first_name, last_name, gender, age)
VALUES ('Inna', 'Fedorova', 'female', 45);
INSERT INTO employees1 (first_name, last_name, gender, age)
VALUES ('Petr', 'Sidorov', 'male', 31);
INSERT INTO employees1 (first_name, last_name, gender, age)
VALUES ('Boris', 'Borisov', 'male', 53);
SELECT first_name AS Имя,
       last_name AS Фамилия
FROM employees1 GROUP BY Имя, Фамилия;
SELECT * FROM employees1 WHERE age<30 OR age>50;
SELECT * FROM employees1 WHERE age BETWEEN 30 AND 50;
SELECT * FROM employees1 ORDER BY last_name DESC;
SELECT * FROM employees1 WHERE first_name LIKE '____%';
UPDATE employees1 SET first_name='Petr' WHERE id=6;
UPDATE employees1 SET first_name='Alla' WHERE id=4;
SELECT first_name AS Имя,
       SUM(age) AS суммарный_возраст
FROM employees1 GROUP BY Имя;
SELECT first_name AS Имя,
       MIN(age) AS наименьший_возраст
FROM employees1 GROUP BY Имя;
SELECT first_name AS Имя,
       MAX(age) AS наибольший_возраст
FROM employees1 GROUP BY Имя
HAVING COUNT(first_name)>1;