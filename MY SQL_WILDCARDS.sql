CREATE DATABASE MySQL_Wildcards;
USE MySQL_Wildcards;
CREATE TABLE Employees(
   EmpName VARCHAR(50),
   Department VARCHAR (50),
   City VARCHAR(50)
);
INSERT INTO Employees (EmpName, Department, City) VALUES
('Alice Johnson', 'HR', 'New York'),
('Bob Smith', 'Finance', 'London'),
('Charlie Brown', 'IT', 'New Delhi'),
('David Miller', 'Finance', 'Paris'),
('Eve Adams', 'IT', 'New York'),
('Frank White', 'HR', 'Berlin'),
('George King', 'Marketing','London');

SELECT * FROM Employees;

-- a)Matches zero or more characters
 
 -- Find employees whose name starts with A 
 SELECT * FROM Employees
 WHERE EmpName LIKE 'A%';
 
 -- Find employees whose name is 4 letters and ends with e 
 SELECT *FROM Employees
 WHERE EmpName LIKE '____%e';
 
 -- Find employees where city has 'on' it in (like london)
 
 SELECT *FROM Employees
 WHERE City LIKE '%on%';
 
 -- Find employees not in cities containing new
 SELECT * FROM Employees
 WHERE City NOT LIKE '%New%';
 
 -- satrts with vowels(A,E,I,O,U)
 SELECT *
 FROM Employees
 WHERE EmpName LIKE 'A%'
      OR EmpName LIKE 'A%'
      OR EmpName LIKE 'E%'
      OR EmpName LIKE 'I%'
      OR EmpName LIKE 'O%'
      OR EmpName LIKE 'U%';
 
