DROP DATABASE IF EXISTS hw_sem5; 
CREATE DATABASE IF NOT EXISTS hw_sem5;
USE hw_sem5;

DROP TABLE IF EXISTS cars;
CREATE TABLE IF NOT EXISTS cars
(
	id INT NOT NULL PRIMARY KEY,
    name VARCHAR(45),
    cost INT
);

INSERT cars
VALUES
	(1, "Audi", 52642),
    (2, "Mercedes", 57127 ),
    (3, "Skoda", 9000 ),
    (4, "Volvo", 29000),
	(5, "Bentley", 350000),
    (6, "Citroen ", 21000 ), 
    (7, "Hummer", 41400), 
    (8, "Volkswagen ", 21600);
    
SELECT *
FROM cars;

#TASK1

CREATE OR REPLACE VIEW cars_view AS
SELECT *
FROM cars
WHERE cost < 25000;

ALTER VIEW cars_vies AS
SELECT *
FROM cars
WHERE cost < 30000;

CREATE OR REPLACE VIEW vag_cars AS
SELECT *
FROM cars
WHERE name IN ('Audi', 'Skoda');

SELECT * FROM cars_view;
SELECT * FROM vag_cars;
