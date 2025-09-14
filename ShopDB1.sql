CREATE DATABASE IF NOT EXISTS ShopDB;
USE ShopDB;

CREATE TABLE Customers(
	CustomersID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
	Email VARCHAR(100) UNIQUE,
    Address VARCHAR(200)
);

INSERT INTO Customers(Name, Email, Address)
VALUES 
('Amit kumar', 'amit@email.com', 'Delhi, India'),
('Neha Verma','neha@email.com','Bangalore, India'),
('Priyanka shah', 'priyanka@email.com', 'Bihar, India');

SELECT * FROM Customers;

-- for specific columns
SELECT Name FROM Customers;
SELECT DISTINCT Name, Email, Address FROM Customers; -- delete duplicate rows

SELECT * FROM Customers WHERE Address LIKE '%Delhi%';
SELECT * FROM Customers WHERE Name = 'Priyanka shah' AND Address LIKE '%Bihar%'; -- select rows which you wants
SELECT * FROM Customers WHERE Address NOT LIKE '%Bihar%';

SELECT * FROM Customers ORDER BY Name ASC; -- save customers by alphabetically

SELECT * FROM Customers ORDER BY CustomersID DESC; -- save customers in descending order by customers id

