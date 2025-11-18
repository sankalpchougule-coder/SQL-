CREATE DATABASE Practice_Wildcard;
USE Practice_Wildcard;

CREATE TABLE Supermart (
	ItemName VARCHAR (50),
    Category VARCHAR(50),
    Brand VARCHAR (30),
    City VARCHAR(30)
    );
    
    INSERT INTO Supermart (ItemName, Category, Brand, City) VALUES
('Apple Juice', 'Beverages', 'Tropicana', 'New York'),
('Banana Chips', 'Snacks', 'Lay\'s', 'London'),
('Orange Soda', 'Beverages', 'Pepsi', 'Paris'),
('Milk Chocolate', 'Snacks', 'Cadbury', 'New Delhi'),
('Eggs Pack', 'Dairy', 'Amul', 'Berlin'),
('Ice Cream', 'Dairy', 'Mother Dairy', 'Mumbai'),
('Oreo Biscuits', 'Snacks', 'Oreo', 'London'),
('Ultra Milk', 'Dairy', 'Nestle', 'Paris'),
('Udon Noodles', 'Grocery', 'Nissin', 'Tokyo'),
('Almond Butter', 'Grocery', 'Nutella', 'New York');

SELECT * FROM Supermart;

-- Items starting with A
SELECT * FROM Supermart
WHERE ItemName LIKE 'A%';

-- Items ending with s

SELECT * FROM Supermart WHERE ItemName LIKE '%s';

-- Items where second letter is r
SELECT * FROM Supermart WHERE ItemName LIKE '_r%';

-- Items that contain the word Milk anywhere
SELECT * FROM Supermart
WHERE ItemName LIKE '%MILK%';

-- Items where City starts with N and ends with k
SELECT *FROM Supermart
WHERE City LIKE 'N%K';

-- Items with exactly 2 words in name

SELECT * FROM Supermart WHERE ItemName LIKE '% %' AND ItemName NOT LIKE '% % %';

-- Items where Brand contains o as second letter
SELECT * FROM Supermart
WHERE Brand LIKE '_%o';

-- 
