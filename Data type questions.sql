CREATE DATABASE Students;

-- 1.how do you decide which numeric data type to use INT,BIGINT or DECIMAL for a Column?
CREATE TABLE Orders(
	OrderID INT PRIMARY KEY,
	TotalAmount DECIMAL(12, 2),
	LargeCounter BIGINT
); 

-- 2. Differences between DATE, DATETIME and TIMESTAMP data types in SQL?CREATE TABLE Events(
CREATE TABLE Events (	
	EventDate DATE,
	EventTimeStamp DATETIME,
	RowVersion TIMESTAMP
);

-- 3. What is the difference between CHAR and VARCHAR types?
CREATE TABLE Example ( 
    CountryCode CHAR(2), 
    CityName VARCHAR(100) 
); 

-- 4. What is a UUID/GUID data type and when might you use it as a key?
 CREATE TABLE Users ( 
    UserID UNIQUEIDENTIFIER DEFAULT NEWID() PRIMARY KEY, 
    UserName VARCHAR(50) 
); 

-- 5. How do TEXT or BLOB data types differ from VARCHAR/TEXT
 CREATE TABLE Documents ( 
    DocID INT PRIMARY KEY, 
    DocText TEXT, 
    DocFile BLOB 
); 

-- 6. What are table constraints like NOT NULL, DEFAULT, UNIQUE, and CHECK?
 CREATE TABLE Employees ( 
    EmployeeID INT PRIMARY KEY, 
    Email VARCHAR(100) UNIQUE, 
	Status VARCHAR(10) NOT NULL DEFAULT 'Active', 
    Age INT CHECK (Age >= 18) 
); 

-- 7. What is a DEFAULT constraint (or AUTO_INCREMENT/IDENTITY)
CREATE TABLE Orders ( 
    OrderID INT AUTO_INCREMENT PRIMARY KEY, 
    OrderDate DATE DEFAULT CURRENT_DATE 
);

-- 8. What is the difference between the DELETE, TRUNCATE, and DROP SQL statements?

DELETE FROM Employees WHERE Status = 'Inactive'; 
TRUNCATE TABLE Employees; 
DROP TABLE Employees; 

