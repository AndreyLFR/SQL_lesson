DROP DATABASE IF EXISTS hw_sem3;
CREATE DATABASE IF NOT EXISTS hw_sem3;

USE hw_sem3;
DROP TABLE IF EXISTS staff;
CREATE TABLE IF NOT EXISTS staff
(id INT PRIMARY KEY AUTO_INCREMENT,
firstname VARCHAR(45),
lastname VARCHAR(45),
post VARCHAR(45),
seniority INT,
salary INT,
age INT);

INSERT INTO staff (firstname, lastname, post, seniority, salary, age)
VALUES
('Вася', 'Петров', 'Начальник', 40, 100000, 60),
('Петр', 'Власов', 'Начальник', 8, 70000, 30),
('Катя', 'Катина', 'Инженер', 2, 70000, 25),
('Саша', 'Сасин', 'Инженер', 12, 50000, 35),
('Иван', 'Иванов', 'Рабочий', 40, 30000, 59),
('Петр', 'Петров', 'Рабочий', 20, 25000, 40),
('Сидр', 'Сидоров', 'Рабочий', 10, 20000, 35),
('Антон', 'Антонов', 'Рабочий', 8, 19000, 28),
('Юрий', 'Юрков', 'Рабочий', 5, 15000, 25),
('Максим', 'Максимов', 'Рабочий', 2, 11000, 22),
('Юрий', 'Галкин', 'Рабочий', 3, 12000, 24),
('Людмила', 'Маркина', 'Уборщик', 10, 10000, 49);

#task1
SELECT *
FROM staff
ORDER BY salary DESC;

SELECT *
FROM staff
ORDER BY salary;

#task2
SELECT salary
FROM staff
ORDER BY salary DESC
LIMIT 5;

#task3
SELECT post, SUM(salary) AS 'SUM_SALARY'
FROM staff
GROUP BY post;

#task4
SELECT COUNT(id)
FROM staff
WHERE post = 'Рабочий' AND (AGE between 24 AND 49);

#task5
SELECT COUNT(DISTINCT post) AS 'кол-во спец'
FROM staff; 

#task6
SELECT post, AVG(age) AS 'средний возраст'
FROM staff
GROUP BY post
HAVING AVG(age) < 30;