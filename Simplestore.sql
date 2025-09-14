CREATE DATABASE IF NOT EXISTS SimpleStore;
USE SimpleStore;

CREATE TABLE Sales(
	SalesID INT AUTO_INCREMENT PRIMARY KEY,
    Product VARCHAR(50),
    Category VARCHAR(50),
    Amount DECIMAL(10, 2),
    SaleDate date
);

INSERT INTO Sales(Product, Category, Amount, SaleDate) VALUES
('Pen', 'Stationary', 25.00, '2025-03-01'),
('Notebook', 'Stationary', 50.00, '2025-03-01'),
('Mouse', 'Electronics', 500.00, '2025-03-02'),
('Keyboard', 'Electronics', 700.00, '2025-03-02'),
('Charger', 'Electronics', 300.00, '2025-03-03'),
('Bag', 'Accessories', 1000.00, '2025-03-04');

SELECT Product, Amount
FROM Sales
WHERE Amount > (SELECT AVG (Amount) FROM Sales);

WITH CategoryTotals AS (
	SELECT Category, SUM(Amount) AS TotalSales
    FROM Sales
    GROUP BY Category
)
SELECT Category, TotalSales
FROM CategoryTotals
WHERE TotalSales > 1000;

CREATE VIEW CategorySales AS 
SELECT Category, SUM(Amount) AS TotalSales
FROM Sales
GROUP BY Category;

SELECT * FROM CategorySales WHERE TotalSales > 500;








