-- NORMALIZATION
CREATE DATABASE Equipments;

-- 1. What is database normalization
 CREATE TABLE Orders_db2 ( 
    OrderID INT, 
    ProductID INT, 
    Quantity INT 
); 

-- 2. Given a table with repeating groups of data (e.g. Customer and multiple phone numbers) 
 CREATE TABLE Customers ( 
    CustomerID INT PRIMARY KEY, 
	Name VARCHAR(100) 
); 
CREATE TABLE CustomerPhones ( 
    PhoneID INT PRIMARY KEY, 
    CustomerID INT, 
    PhoneNumber VARCHAR(20), 
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID) 
); 

-- 3. How would you design a table schema to handle a many-to-many relationship, for example between Students and Courses?
CREATE TABLE Students ( 
    StudentID INT PRIMARY KEY, 
	Name VARCHAR(100) 
); 
CREATE TABLE Courses ( 
    CourseID INT PRIMARY KEY, 
    Title VARCHAR(100) 
); 
CREATE TABLE StudentCourses ( 
    StudentID INT, 
    CourseID INT, 
    PRIMARY KEY (StudentID, CourseID), 
	FOREIGN KEY (StudentID) REFERENCES Students(StudentID), 
	FOREIGN KEY (CourseID) REFERENCES Courses(CourseID) 
); 

-- 4. Explain the concept of denormalization with an example scenario in a large database.
 CREATE TABLE Orders ( 
    OrderID INT PRIMARY KEY, 
    CustomerID INT, 
    CustomerName VARCHAR(100), 
    CustomerAddress VARCHAR(200), 
    OrderDate DATE 
);
-- 5. How do you implement a 1-to-1 relationship versus a 1-to-many relationship in table design?
-- 1-to-1
CREATE TABLE Users ( 
    UserID INT PRIMARY KEY 
); 
CREATE TABLE Profiles ( 
    ProfileID INT PRIMARY KEY, 
    UserID INT UNIQUE, 
	FOREIGN KEY (UserID) REFERENCES Users(UserID) 
); -- 1-to-many
 CREATE TABLE Departments ( 
    DepartmentID INT PRIMARY KEY 
); 
CREATE TABLE Employees ( 
    EmployeeID INT PRIMARY KEY, 
    DepartmentID INT, 
	FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID) 
); 














