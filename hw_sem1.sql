CREATE DATABASE HW_SEMINAR1;

USE HW_SEMINAR1;

CREATE TABLE phones
(id INT PRIMARY KEY NOT NULL,
ProductName VARCHAR(25) NOT NULL,
Manufacturer VARCHAR(25) NOT NULL,
ProductCount INT NOT NULL,
Price FLOAT NOT NULL
);

INSERT phones
VALUES
(1, 'iPhone X', 'Apple', 3, 76000),
(2, 'iPhone 8', 'Apple', 2, 51000),
(3, 'Galaxy S9', 'Samsung', 2, 56000),
(4, 'Galaxy S8', 'Samsung', 1, 41000),
(5, 'P20 Pro', 'Huawei', 5, 36000);

SELECT ProductName, Manufacturer, Price
FROM phones
WHERE ProductCount > 2;

SELECT * FROM phones
WHERE Manufacturer = 'Samsung';

SELECT * FROM phones
WHERE ProductName LIKE '%iPhone%';

SELECT * FROM phones
WHERE ProductName LIKE '%Samsung%' OR Manufacturer LIKE '%Samsung%';

SELECT * FROM phones
WHERE ProductName LIKE '%8%';