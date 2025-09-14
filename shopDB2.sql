CREATE DATABASE IF NOT EXISTS ShopDB;
USE ShopDB;

CREATE TABLE Customer(
	CustomersID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
	Email VARCHAR(100) UNIQUE,
    City VARCHAR(50)
);

INSERT INTO Customer(Name, Email, City)
VALUES 
('Amit kumar', 'amit@email.com', 'Delhi, India'),
('Neha Verma','neha@email.com','Bangalore, India'),
('Priyanka shah', 'priyanka@email.com', 'Bihar, India');

SELECT * FROM Customer;

UPDATE Customer
SET City = 'Pune'
WHERE Name = 'Rahul Sharma';

SELECT * FROM Customer WHERE Name = 'Rahul Sharma';

DELETE FROM Customer
WHERE City = 'Delhi, India';  
