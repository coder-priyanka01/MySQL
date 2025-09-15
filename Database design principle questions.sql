-- Database Design Principles
CREATE DATABASE Progress;

-- 1.How would you design a database schema for an e-commerce system (e.g., with users, products,orders, payments, reviews)?
CREATE TABLE Users ( 
    UserID INT PRIMARY KEY, 
    UserName VARCHAR(50) 
); 
CREATE TABLE Products ( 
    ProductID INT PRIMARY KEY, 
    ProductName VARCHAR(100), 
    Price DECIMAL(10,2) 
); 
CREATE TABLE Orders ( 
    OrderID INT PRIMARY KEY, 
    UserID INT, 
    OrderDate DATE, 
	FOREIGN KEY (UserID) REFERENCES Users(UserID) 
); 
CREATE TABLE OrderItems ( 
    OrderItemID INT PRIMARY KEY, 
    OrderID INT, 
    ProductID INT, 
    Quantity INT, 
	FOREIGN KEY (OrderID) REFERENCES Orders(OrderID), 
	FOREIGN KEY (ProductID) REFERENCES Products(ProductID) 
); 
CREATE TABLE Payments ( 
    PaymentID INT PRIMARY KEY, 
    OrderID INT, 
    Amount DECIMAL(10,2), 
    PaymentDate DATE, 
	FOREIGN KEY (OrderID) REFERENCES Orders(OrderID) 
); 
CREATE TABLE Reviews ( 
    ReviewID INT PRIMARY KEY, 
    ProductID INT, 
    UserID INT, 
    Rating INT, 
	Comment TEXT, 
	FOREIGN KEY (ProductID) REFERENCES Products(ProductID), 
	FOREIGN KEY (UserID) REFERENCES Users(UserID) 
);

-- 2. How would you design tables to represent hierarchical data such as product categories and subcategories?
CREATE TABLE Categories ( 
    CategoryID INT PRIMARY KEY, 
    CategoryName VARCHAR(100), 
    ParentCategoryID INT, 
	FOREIGN KEY (ParentCategoryID) REFERENCES Categories(CategoryID) 
);

-- 3. What is a surrogate key, and why might you use it instead of a natural key
CREATE TABLE Customers ( 
    CustomerID INT IDENTITY PRIMARY KEY, -- surrogate key 
    Email VARCHAR(100) -- natural key 
); 

-- 4. How do you enforce referential integrity between tables?
CREATE TABLE Orders ( 
    OrderID INT PRIMARY KEY, 
    CustomerID INT, 
	FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID) 
); 

-- 5. How do you represent many-to-many
 CREATE TABLE StudentCourses ( 
    StudentID INT, 
    CourseID INT, 
    PRIMARY KEY (StudentID, CourseID), 
	FOREIGN KEY (StudentID) REFERENCES Students(StudentID), 
	FOREIGN KEY (CourseID) REFERENCES Courses(CourseID) 
); 





