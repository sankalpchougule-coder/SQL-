CREATE DATABASE Basic_queries;
USE Basic_queries;

-- Create table without PK or FK
CREATE TABLE SalesData (
    ProductName VARCHAR(50),
    Quantity INT,
    Price DECIMAL(10,2),
    SaleDate DATE
);

SELECT * FROM SalesData;

-- Insert sample data
INSERT INTO SalesData (ProductName, Quantity, Price, SaleDate) VALUES
('Laptop', 2, 55000.00, '2025-09-01'),
('Laptop', 1, 60000.00, '2025-09-05'),
('Mobile', 5, 15000.00, '2025-09-03'),
('Tablet', 3, 20000.00, '2025-09-07'),
('Headphones', 10, 2000.00, '2025-09-02'),
('Mobile', 2, 18000.00, '2025-09-08'),
('Laptop', 1, 58000.00, '2025-09-09');

-- Aggregate Functions
SELECT MIN(Price) AS MinPrice FROM SalesData;
SELECT MAX(Price) AS MaxPrice FROM SalesData;
SELECT COUNT(*) AS TotalSales FROM SalesData;
SELECT AVG(Price) AS AvgPrice FROM SalesData;
SELECT SUM(Quantity) AS TotalQuantity FROM SalesData;

-- ORDER BY
SELECT ProductName, Price 
FROM SalesData 
ORDER BY Price DESC;

-- BETWEEN (for filtering by date range)
SELECT * FROM SalesData
WHERE SaleDate BETWEEN '2025-09-02' and '2025-09-08';

-- 
