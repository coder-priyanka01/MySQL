CREATE DATABASE IF NOT EXISTS RetailStore;
USE RetailStore;

CREATE TABLE Customers(
	CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100)
);

CREATE TABLE Orders(
	OrderID INT PRIMARY KEY,
    Product VARCHAR(100),
    Amount DECIMAL(10, 2),
    CustomerID INT,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-- Customers Table
INSERT INTO Customers VALUES
(1, 'Rahul sharma'),
(2, 'Anjali Mehta'),
(3, 'Amit Verma');

INSERT INTO Customers VALUES
(4, 'Nisha Roy');

-- Customers table
INSERT INTO Orders VALUES
(101, 'Laptop', 50000, 2),
(102, 'Mouse', 500, 1),
(103, 'Keyboard', 700, 1);

INSERT INTO Orders VALUES
(104, 'Monitor', 12000, NULL);

-- INNER JOIN 
SELECT Customers.CustomerName, Orders.Product, Orders.Amount
FROM Customers
INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

-- LEFT JOIN 
SELECT Customers.CustomerName, Orders.Product, Orders.Amount
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

-- RIGHT JOIN 
SELECT Customers.CustomerName, Orders.Product, Orders.Amount
FROM Customers
RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

-- FULL OUTER JOIN simulation using UNION of LEFT and RIGHT JOIN
SELECT Customers.CustomerName, Orders.Product, Orders.Amount
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID

UNION

SELECT Customers.CustomerName, Orders.Product, Orders.Amount
FROM Customers
RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;




