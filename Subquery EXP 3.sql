CREATE DATABASE subquery_exp3;
USE subquery_exp3;

CREATE TABLE CarShowroom (
    CarName VARCHAR(50),
    Brand VARCHAR(50),
    Price INT,
    City VARCHAR(50)
    );
    
    INSERT INTO CarShowroom (CarName, Brand, Price, City) VALUES
('Swift', 'Maruti', 600000, 'Mumbai'),
('Baleno', 'Maruti', 800000, 'Pune'),
('Creta', 'Hyundai', 1200000, 'Delhi'),
('Venue', 'Hyundai', 1100000, 'Mumbai'),
('Fortuner', 'Toyota', 3500000, 'Bangalore'),
('Innova', 'Toyota', 2500000, 'Pune'),
('City', 'Honda', 1500000, 'Delhi'),
('Amaze', 'Honda', 900000,'Mumbai');

-- Find cars more expensive than the average price

SELECT CarName,Brand,price
FROM CarShowroom
WHERE price>(SELECT AVG(price) FROM CarShowroom);

-- Cars available in the same city as ‘Fortuner’

SELECT CarName, City
FROM CarShowroom
WHERE City = (SELECT City FROM CarShowroom WHERE CarName ='Fortuner');

-- Cars with the highest price

SELECT CarName,price
FROM CarShowroom
WHERE price=(SELECT MAX (price) FROM CarShowroom);

-- Cars cheaper than any Honda car

SELECT CarName,Brand,price
FROM CarShowroom
WHERE price<(SELECT MIN(price) FROM CarShowroom WHERE Brand='Honda');

-- Brands that have cars in Mumbai

SELECT CarName,Brand,City
FROM CarShowroom
WHERE City = 'Mumbai'

